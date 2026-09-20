"""Every ``?sort=`` value each route accepts, read out of the route source.

Sort links are the archive's largest untested surface. A page renders fine, a
user clicks a column header, and the route runs a *different* ORDER BY against
the same query -- one that nothing has ever executed. That is how WEBBSITE-1G/1H
happened: tuntraff.asp's four direction-column headers ordered a grouped query
by a base column, which MySQL allowed and PostgreSQL rejects, so both links were
500s for as long as the Flask port had been live. ``route_fixtures.py`` named ten
sort values in total across the whole site; there are 1014.

Hand-maintaining that list would go stale on the first new route, so this reads
the values back out of the route functions instead:

    sort_values()["/dbpub/tuntraff.asp"] -> ['altadn', 'altaup', ... 'defup']

The rule, per route function: find the variable assigned from the ``sort`` query
parameter, find the dict literals that variable indexes (``m[sort]``,
``m.get(sort, d)``, ``sort in m``), and take their keys plus the parameter's own
default. Routes that branch on the value instead of looking it up (the vehicle
pages run ``if sort == f"f{x}dn"`` over a variable number of fuel-type columns)
contribute their compared literals, and an f-string comparison contributes a
*pattern* instead -- ``f"f{x}dn"`` cannot be enumerated without running the
route, but it is enough to recognise ``f3dn`` as a value the route handles.

A function that reads ``sort`` but yields neither raises: that means the route
spells its sort values in a shape this does not understand, and silently
returning nothing for it would quietly shrink the sweep back down again.

Stdlib only (like route_fixtures.py), so the route-health gate and the daily
invariants job on the box can both import it. Nothing here imports the app: it
is a parse, not a run, so it works with no database and no Flask.
"""

import ast
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
ROUTES = ROOT / "webbsite" / "routes"


class SortMapNotUnderstood(Exception):
    """A route reads ?sort= but its sort values could not be read back out."""


def _sort_param_name(node):
    """('sortvar', 'default') if this statement reads the ?sort= parameter."""
    if not isinstance(node, ast.Assign) or len(node.targets) != 1:
        return None
    target = node.targets[0]
    call = node.value
    if not isinstance(target, ast.Name) or not isinstance(call, ast.Call) or not call.args:
        return None
    # get_str("sort", ...) or request.args.get("sort", ...) -- the two spellings
    # in use; asp_helpers.get_str wraps the latter.
    func = call.func
    name = func.id if isinstance(func, ast.Name) else getattr(func, "attr", None)
    first = call.args[0]
    if name not in ("get_str", "get") or not (
        isinstance(first, ast.Constant) and first.value == "sort"
    ):
        return None
    default = call.args[1] if len(call.args) > 1 else None
    return target.id, default.value if isinstance(default, ast.Constant) else None


def _string_key_dicts(nodes):
    """name -> keys, for every all-string-key dict literal among these nodes.

    Called with the whole function *and* with the module's top level: hpw.asp's
    sort map is a module-level _HPW_SORT, and reading only function bodies would
    have left eight of its nine column headers unexercised. Keys accumulate
    rather than replace, because adviserships.asp assigns sort_map twice in one
    function (continuing roles, then one-time roles).
    """
    out = {}
    for node in nodes:
        if (isinstance(node, ast.Assign)
                and len(node.targets) == 1
                and isinstance(node.targets[0], ast.Name)
                and isinstance(node.value, ast.Dict)
                and node.value.keys
                and all(isinstance(k, ast.Constant) and isinstance(k.value, str)
                        for k in node.value.keys)):
            out.setdefault(node.targets[0].id, set()).update(
                k.value for k in node.value.keys
            )
    return out


def _dicts_keyed_by(func, sort_vars):
    """Names of dicts the sort variable indexes, .get()s, or is tested against."""
    used = set()
    for node in ast.walk(func):
        if (isinstance(node, ast.Subscript)
                and isinstance(node.value, ast.Name)
                and isinstance(node.slice, ast.Name)
                and node.slice.id in sort_vars):
            used.add(node.value.id)                      # order_map[sort]
        elif (isinstance(node, ast.Call)
                and isinstance(node.func, ast.Attribute)
                and node.func.attr == "get"
                and isinstance(node.func.value, ast.Name)
                and node.args
                and isinstance(node.args[0], ast.Name)
                and node.args[0].id in sort_vars):
            used.add(node.func.value.id)                 # sort_map.get(sort, d)
        elif (isinstance(node, ast.Compare)
                and isinstance(node.left, ast.Name)
                and node.left.id in sort_vars):
            for op, other in zip(node.ops, node.comparators):
                if isinstance(op, (ast.In, ast.NotIn)) and isinstance(other, ast.Name):
                    used.add(other.id)                   # if sort not in order_map
    return used


def _comparisons(func, sort_vars):
    """(values, patterns) for routes that branch on the sort value, not look it up.

    The vehicle pages run `if sort == f"f{x}dn"` over a variable number of
    fuel-type columns and `elif sort in ("makup", "makdn")`, so without this they
    would contribute only their default. An f-string yields a pattern instead of
    a value: the interpolated part is a column index the route computes at
    request time, but `f.+dn` is still enough to tell a sort link the route
    handles from one it silently ignores.
    """
    values, patterns = set(), set()
    for node in ast.walk(func):
        if not (isinstance(node, ast.Compare)
                and isinstance(node.left, ast.Name)
                and node.left.id in sort_vars):
            continue
        for other in node.comparators:
            if isinstance(other, ast.Constant) and isinstance(other.value, str):
                values.add(other.value)
            elif isinstance(other, (ast.Tuple, ast.List, ast.Set)):
                values.update(e.value for e in other.elts
                              if isinstance(e, ast.Constant) and isinstance(e.value, str))
            elif isinstance(other, ast.JoinedStr):
                patterns.add("".join(
                    re.escape(v.value) if isinstance(v, ast.Constant) else ".+"
                    for v in other.values
                ))
    return {v for v in values if v}, patterns


def _delegates_to(func):
    """The function this route just forwards to, for `return enigma_events()` aliases.

    /dbpub/events.asp is one line: `return enigma_events()`. It accepts every
    sort value that route does, but reads none of them itself, so without this
    its column headers would look like dead links.
    """
    body = [n for n in func.body if not (isinstance(n, ast.Expr)
                                         and isinstance(n.value, ast.Constant))]
    if len(body) != 1 or not isinstance(body[0], ast.Return):
        return None
    call = body[0].value
    if isinstance(call, ast.Call) and isinstance(call.func, ast.Name):
        return call.func.id
    return None


def _route_paths(func):
    return [
        d.args[0].value
        for d in func.decorator_list
        if isinstance(d, ast.Call)
        and isinstance(d.func, ast.Attribute)
        and d.func.attr == "route"
        and d.args
        and isinstance(d.args[0], ast.Constant)
    ]


def url_prefixes():
    """module stem -> url_prefix, read from the register_blueprint() calls.

    Derived rather than listed so moving a blueprint cannot leave this pointing
    at a path that no longer exists.
    """
    prefixes = {}
    for init in (ROOT / "webbsite" / "__init__.py",
                 ROUTES / "dbpub" / "__init__.py"):
        tree = ast.parse(init.read_text())
        for scope in ast.walk(tree):
            if not isinstance(scope, (ast.FunctionDef, ast.Module)):
                continue
            # Local string constants, so `url_prefix = "/dbpub"` then
            # `register_blueprint(x.bp, url_prefix=url_prefix)` resolves.
            consts = {
                n.targets[0].id: n.value.value
                for n in ast.walk(scope)
                if isinstance(n, ast.Assign)
                and len(n.targets) == 1
                and isinstance(n.targets[0], ast.Name)
                and isinstance(n.value, ast.Constant)
                and isinstance(n.value.value, str)
            }
            for node in ast.walk(scope):
                if not (isinstance(node, ast.Call)
                        and getattr(node.func, "attr", None) == "register_blueprint"
                        and node.args):
                    continue
                arg = node.args[0]
                if not (isinstance(arg, ast.Attribute) and isinstance(arg.value, ast.Name)):
                    continue
                for kw in node.keywords:
                    if kw.arg != "url_prefix":
                        continue
                    if isinstance(kw.value, ast.Constant):
                        prefixes[arg.value.id] = kw.value.value
                    elif isinstance(kw.value, ast.Name):
                        prefixes[arg.value.id] = consts.get(kw.value.id, "")
    return prefixes


def _scan(routes_dir=ROUTES):
    """{path: (values, patterns)} for every route that reads ?sort=."""
    prefixes = url_prefixes()
    found = {}
    for source in sorted(pathlib.Path(routes_dir).rglob("*.py")):
        # dbpub sub-blueprints are registered under the package's own prefix;
        # every other module is registered by its own stem in webbsite/__init__.
        prefix = prefixes.get(source.stem, prefixes.get(source.parent.name, ""))
        tree = ast.parse(source.read_text())
        module_dicts = _string_key_dicts(tree.body)
        by_function = {}
        for func in ast.walk(tree):
            if not isinstance(func, ast.FunctionDef):
                continue
            sort_vars, defaults = set(), set()
            for stmt in ast.walk(func):
                read = _sort_param_name(stmt)
                if read:
                    sort_vars.add(read[0])
                    if read[1]:
                        defaults.add(read[1])
            if not sort_vars:
                continue
            local = _string_key_dicts(ast.walk(func))
            dicts = {name: module_dicts.get(name, set()) | local.get(name, set())
                     for name in set(module_dicts) | set(local)}
            keyed = _dicts_keyed_by(func, sort_vars)
            values = {v for name in keyed for v in dicts.get(name, [])} | defaults
            compared, patterns = _comparisons(func, sort_vars)
            values |= compared
            if not values and not patterns:
                where = source.relative_to(ROOT) if source.is_relative_to(ROOT) else source
                raise SortMapNotUnderstood(
                    f"{where}:{func.name} reads ?sort= but no sort "
                    "values could be read back. Teach this module its shape rather "
                    "than leaving the route's sort links unexercised."
                )
            by_function[func.name] = (values, patterns)
            for path in _route_paths(func):
                v, pt = found.setdefault(prefix + path, (set(), set()))
                v.update(values)
                pt.update(patterns)

        # Aliases kept for ASP URL compatibility forward to the real route, so
        # they answer to its sort values without mentioning any of their own.
        for func in ast.walk(tree):
            if not isinstance(func, ast.FunctionDef):
                continue
            target = by_function.get(_delegates_to(func) or "")
            for path in _route_paths(func) if target else ():
                v, pt = found.setdefault(prefix + path, (set(), set()))
                v.update(target[0])
                pt.update(target[1])
    return found


def sort_values(routes_dir=ROUTES):
    """{full route path: sorted sort values} for every route that reads ?sort=."""
    return {path: sorted(v) for path, (v, _) in _scan(routes_dir).items()}


def sort_patterns(routes_dir=ROUTES):
    """{full route path: regexes} for the sort values a route computes at runtime."""
    return {path: sorted(p) for path, (_, p) in _scan(routes_dir).items() if p}


def handles(path, value, values=None, patterns=None):
    """Does this route do anything with ?sort=<value>, or silently ignore it?

    A value that is neither in the route's sort map nor matched by one of its
    patterns is a dead link: the page offers the column header, the route falls
    through to its default, and the table comes back in the order it already was.
    """
    values = sort_values() if values is None else values
    patterns = sort_patterns() if patterns is None else patterns
    if value in values.get(path, ()):
        return True
    return any(re.fullmatch(p, value) for p in patterns.get(path, ()))


if __name__ == "__main__":
    found = sort_values()
    pats = sort_patterns()
    for path, values in sorted(found.items()):
        extra = "  +" + ",".join(pats[path]) if path in pats else ""
        print(f"{path:44s} {len(values):3d}  {','.join(values)}{extra}")
    print(f"\n{len(found)} routes, {sum(len(v) for v in found.values())} sort values, "
          f"{sum(len(v) for v in pats.values())} runtime patterns")
