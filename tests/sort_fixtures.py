"""Every sort value each route accepts, read out of the route source.

Sort links are the archive's largest untested surface. A page renders fine, a
user clicks a column header, and the route runs a *different* ORDER BY against
the same query -- one that nothing has ever executed. That is how WEBBSITE-1G/1H
happened: tuntraff.asp's four direction-column headers ordered a grouped query
by a base column, which MySQL allowed and PostgreSQL rejects, so both links were
500s for as long as the Flask port had been live. ``route_fixtures.py`` named ten
sort values in total across the whole site; there are over a thousand.

Hand-maintaining that list would go stale on the first new route, so this reads
the values back out of the route functions instead:

    sort_values()["/dbpub/tuntraff.asp"] -> {"sort": ['altadn', ... 'defup']}

Most pages sort on ``?sort=``, but not all: donations.asp uses ``sort1``,
holders.asp ``s1``, orgdata.asp ``s2``/``s3`` (one per table), and
leagueDirsHK.asp takes three levels at once as ``s1``/``s2``/``s3``. So values
are keyed by parameter, and SORT_PARAMS names the ones in use.

The rule, per route function: find each variable assigned from a sort query
parameter, find the dict literals that variable indexes (``m[sort]``,
``m.get(sort, d)``, ``sort in m``), and take their keys plus the parameter's own
default. Routes that branch on the value instead of looking it up (the vehicle
pages run ``if sort == f"f{x}dn"`` over a variable number of fuel-type columns)
contribute their compared literals, and an f-string comparison contributes a
*pattern* instead -- ``f"f{x}dn"`` cannot be enumerated without running the
route, but it is enough to recognise ``f3dn`` as a value the route handles.

A function that reads a sort parameter but yields neither raises (unless the
route is listed in READ_BUT_UNUSED with a reason): that means the route
spells its sort values in a shape this does not understand, and silently
returning nothing for it would quietly shrink the sweep back down again.

The shape that would still be lost quietly is a sort map built by a helper --
``ob = _order(sort)`` -- because the values live in a function with no route of
its own and no sort read to notice. Nothing in the tree does that today,
and tests/test_sort_fixtures.py cross-checks every sort-shaped literal in the
routes against what this returns, which is what would catch it.

Stdlib only (like route_fixtures.py), so the route-health gate and the daily
invariants job on the box can both import it. Nothing here imports the app: it
is a parse, not a run, so it works with no database and no Flask.
"""

import ast
import functools
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
ROUTES = ROOT / "webbsite" / "routes"


class SortMapNotUnderstood(Exception):
    """A route reads ?sort= but its sort values could not be read back out."""


# Query parameters that carry a sort key. Most pages use ?sort=; a few older
# ones spell it differently, and leagueDirsHK.asp takes three levels at once.
SORT_PARAMS = frozenset({"sort", "sort1", "s1", "s2", "s3"})

# A string shaped like one of this site's sort keys: a short column
# abbreviation plus a direction. Used to recognise a sort parameter in a link
# by its value, which is how a link naming the *wrong* parameter is caught --
# league_dirs_hk.html once sent possum.asp `s=cagreldn`, which it never reads.
SORT_KEY = re.compile(r"^[A-Za-z0-9]{2,10}(up|dn|UP|DN)$")
# Ordinary English that happens to end that way.
NOT_SORT_KEYS = frozenset({
    "backup", "cleanup", "group", "lineup", "lookup", "makeup", "markup",
    "popup", "roundup", "setup", "signup", "startup", "warmup",
})


def looks_like_sort_key(value):
    return bool(SORT_KEY.match(value)) and value.lower() not in NOT_SORT_KEYS

# Parameters a route reads and hands straight back to its template without
# ordering anything by them. Each needs a reason, or it would hide a sort map
# this module has failed to read.
READ_BUT_UNUSED = {
    ("/dbpub/orgdata.asp", "s1"):
        "sorted the holders section, which is not ported (see the TODO in "
        "orgdata.html); the value is only echoed back into the other links",
    ("/dbpub/natperson.asp", "s2"):
        "carried as hidden form state for the ASP's sort; nothing orders by it",
}


def _loop_values(expression):
    """{name: [values]} for comprehension variables iterating a constant range().

    leagueDirsHK.asp reads its three sort levels in one comprehension,
    `{i: get_str(f"s{i}", "") for i in range(1, 4)}`, so the parameter *name* is
    an f-string. Only a comprehension over a literal range() is resolved -- a
    `for` statement is deliberately not, because compare.asp reads stock codes
    as `get_str(f"s{i}")` in one and they are not sort keys.
    """
    out = {}
    for node in ast.walk(expression):
        if not isinstance(node, (ast.DictComp, ast.ListComp, ast.SetComp, ast.GeneratorExp)):
            continue
        for gen in node.generators:
            it = gen.iter
            if (isinstance(gen.target, ast.Name)
                    and isinstance(it, ast.Call)
                    and isinstance(it.func, ast.Name) and it.func.id == "range"
                    and it.args
                    and all(isinstance(a, ast.Constant) and isinstance(a.value, int)
                            for a in it.args)):
                out[gen.target.id] = list(range(*(a.value for a in it.args)))
    return out


def _param_names(first, loops):
    """The query parameter names a get_str()/get() first argument can spell."""
    if isinstance(first, ast.Constant) and isinstance(first.value, str):
        return {first.value}
    if isinstance(first, ast.JoinedStr):
        names = [""]
        for part in first.values:
            if isinstance(part, ast.Constant):
                names = [n + str(part.value) for n in names]
            elif (isinstance(part, ast.FormattedValue)
                    and isinstance(part.value, ast.Name)
                    and part.value.id in loops):
                names = [n + str(v) for n in names for v in loops[part.value.id]]
            else:
                return set()
        return set(names)
    return set()


def _sort_params_read(expression):
    """The sort parameters this expression reads anywhere inside it.

    Matching only a bare `x = get_str("sort", d)` missed reghist.asp, whose read
    is buried in a conditional -- and missed it *silently*, contributing nothing
    and raising nothing, which is the one failure mode this module is built to
    avoid. Anything containing the read counts.
    """
    loops = _loop_values(expression)
    params = set()
    for node in ast.walk(expression):
        if (isinstance(node, ast.Subscript)                  # request.args["sort"]
                and getattr(node.value, "attr", None) == "args"):
            params |= _param_names(node.slice, loops) & SORT_PARAMS
            continue
        if not (isinstance(node, ast.Call) and node.args):
            continue
        # get_str("sort", ...) or request.args.get("sort", ...) -- the two
        # spellings in use; asp_helpers.get_str wraps the latter.
        func = node.func
        name = func.id if isinstance(func, ast.Name) else getattr(func, "attr", None)
        if name in ("get_str", "get"):
            params |= _param_names(node.args[0], loops) & SORT_PARAMS
    return params


def _sort_reads(node):
    """(variable, {params}, {defaults}) if this statement assigns from a sort read.

    Keyed on the parameter the call names, not the variable it lands in:
    holders.asp reads ?s1= into `sort_param`. Every string constant in the
    assigning expression is a value the route can hold: `get_str("sort",
    "datdn")` yields its default, and reghist.asp's `"dateup" if
    request.args.get("sort") == "dateup" else "datedn"` yields both of the two
    orders it supports.
    """
    if isinstance(node, ast.Assign) and len(node.targets) == 1:
        target = node.targets[0]
    elif isinstance(node, ast.AnnAssign) and node.value is not None:
        target = node.target                                 # sort: str = ...
    else:
        return None
    if not isinstance(target, ast.Name):
        return None
    params = _sort_params_read(node.value)
    if not params:
        return None
    fstring_parts = {id(c) for j in ast.walk(node.value) if isinstance(j, ast.JoinedStr)
                     for c in j.values}
    values = {c.value for c in ast.walk(node.value)
              if isinstance(c, ast.Constant) and isinstance(c.value, str)
              and id(c) not in fstring_parts}
    return target.id, params, values - params - {""}


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


def _is_sort_var(node, sort_vars):
    """`sort`, or one level of a multi-level read such as `sort_keys[2]`."""
    if isinstance(node, ast.Name):
        return node.id in sort_vars
    return (isinstance(node, ast.Subscript)
            and isinstance(node.value, ast.Name)
            and node.value.id in sort_vars)


def _dicts_keyed_by(func, sort_vars):
    """Names of dicts the sort variable indexes, .get()s, or is tested against."""
    used = set()
    for node in ast.walk(func):
        if (isinstance(node, ast.Subscript)
                and isinstance(node.value, ast.Name)
                and _is_sort_var(node.slice, sort_vars)):
            used.add(node.value.id)                      # order_map[sort]
        elif (isinstance(node, ast.Call)
                and isinstance(node.func, ast.Attribute)
                and node.func.attr == "get"
                and isinstance(node.func.value, ast.Name)
                and node.func.value.id not in sort_vars
                and node.args
                and _is_sort_var(node.args[0], sort_vars)):
            used.add(node.func.value.id)                 # sort_map.get(sort, d)
        elif (isinstance(node, ast.Compare)
                and _is_sort_var(node.left, sort_vars)):
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
                and _is_sort_var(node.left, sort_vars)):
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


def _function_sorts(func, module_dicts):
    """{param: (values, patterns)} for one function, from each variable it reads."""
    reads = [r for r in map(_sort_reads, ast.walk(func)) if r]
    if not reads:
        return {}
    local = _string_key_dicts(ast.walk(func))
    dicts = {name: module_dicts.get(name, set()) | local.get(name, set())
             for name in set(module_dicts) | set(local)}
    out = {}
    for var, params, defaults in reads:
        keyed = _dicts_keyed_by(func, {var})
        compared, patterns = _comparisons(func, {var})
        values = {v for name in keyed for v in dicts.get(name, [])} | defaults | compared
        for param in params:
            v, pt = out.setdefault(param, (set(), set()))
            v.update(values)
            pt.update(patterns)
    return out


@functools.lru_cache(maxsize=None)
def _scan(routes_dir=ROUTES):
    """{path: {param: (values, patterns)}} for every route that reads a sort.

    Cached: sort_values() and sort_patterns() are called for the same tree in
    one run, and re-parsing statistics.py (9.5k lines) for each is waste. The
    route source does not change while the gate runs.
    """
    prefixes = url_prefixes()
    found = {}

    def record(paths, sorts):
        for path in paths:
            for param, (values, patterns) in sorts.items():
                v, pt = found.setdefault(path, {}).setdefault(param, (set(), set()))
                v.update(values)
                pt.update(patterns)

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
            sorts = _function_sorts(func, module_dicts)
            if not sorts:
                continue
            paths = [prefix + path for path in _route_paths(func)]
            for param, (values, patterns) in sorts.items():
                if values or patterns:
                    continue
                if paths and all((path, param) in READ_BUT_UNUSED for path in paths):
                    continue
                where = source.relative_to(ROOT) if source.is_relative_to(ROOT) else source
                raise SortMapNotUnderstood(
                    f"{where}:{func.name} reads ?{param}= but no sort "
                    "values could be read back. Teach this module its shape rather "
                    "than leaving the route's sort links unexercised."
                )
            sorts = {param: vp for param, vp in sorts.items() if vp[0] or vp[1]}
            by_function[func.name] = sorts
            record(paths, sorts)

        # Aliases kept for ASP URL compatibility forward to the real route, so
        # they answer to its sort values without mentioning any of their own.
        for func in ast.walk(tree):
            if not isinstance(func, ast.FunctionDef):
                continue
            target = by_function.get(_delegates_to(func) or "")
            if target:
                record([prefix + path for path in _route_paths(func)], target)
    return {path: sorts for path, sorts in found.items() if sorts}


def sort_values(routes_dir=ROUTES):
    """{full route path: {param: sorted values}} for every route that sorts."""
    return {path: {param: sorted(v) for param, (v, _) in sorts.items() if v}
            for path, sorts in _scan(routes_dir).items()}


def sort_patterns(routes_dir=ROUTES):
    """{full route path: {param: regexes}} for sort values computed at runtime."""
    out = {}
    for path, sorts in _scan(routes_dir).items():
        pats = {param: sorted(p) for param, (_, p) in sorts.items() if p}
        if pats:
            out[path] = pats
    return out


def handles(path, param, value, values=None, patterns=None):
    """Does this route do anything with ?<param>=<value>, or silently ignore it?

    A value that is neither in the route's sort map nor matched by one of its
    patterns is a dead link: the page offers the column header, the route falls
    through to its default, and the table comes back in the order it already was.
    So is a real sort key sent under a parameter the route never reads.
    """
    values = sort_values() if values is None else values
    patterns = sort_patterns() if patterns is None else patterns
    if value in values.get(path, {}).get(param, ()):
        return True
    return any(re.fullmatch(p, value) for p in patterns.get(path, {}).get(param, ()))


if __name__ == "__main__":
    found = sort_values()
    pats = sort_patterns()
    for path, params in sorted(found.items()):
        for param, values in sorted(params.items()):
            extra = pats.get(path, {}).get(param)
            extra = "  +" + ",".join(extra) if extra else ""
            label = path if param == "sort" else f"{path} ?{param}="
            print(f"{label:48s} {len(values):3d}  {','.join(values)}{extra}")
    print(f"\n{len(found)} routes, "
          f"{sum(len(v) for p in found.values() for v in p.values())} sort values, "
          f"{sum(len(v) for p in pats.values() for v in p.values())} runtime patterns")
