#!/usr/bin/env python3
"""The sort-link gate, checked without a database.

tests/sort_fixtures.py reads every ?sort= value out of the route source so the
route-health gate can request all of them (1000+, where route_fixtures.py used
to name ten). That only works while the reader keeps up with the routes, so:

  1. every route that reads ?sort= yields values -- a route whose sort map is
     spelled in a shape the reader does not understand raises rather than
     quietly contributing nothing;
  2. every path it derives is a path the app actually serves;
  3. every route that takes ?sort= has a fixture to exercise it with, so a new
     sort-taking page cannot ship with its column headers untested -- which is
     exactly how tuntraff.asp's were 500s for the life of the Flask port;
  4. no route mentions a sort-looking string the reader did not capture --
     under-reporting is silent where a raise is loud, and this is what catches
     it (reghist.asp reads ?sort= inside a conditional expression and was
     missed entirely until this check existed);
  5. the reader still handles each shape in use (dict literal, module-level
     dict, if/elif chain, f-string comparison, alias route), proved by parsing
     a module written to contain each one, and proved to go red by parsing a
     shape it should reject.

    uv run python tests/test_sort_fixtures.py
    PLANTED_FAILURE=1 uv run python tests/test_sort_fixtures.py   # must fail
"""

import ast
import os
import pathlib
import re
import sys
import tempfile

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
sys.path.insert(0, os.path.dirname(__file__))

os.environ.setdefault("DATABASE_URL", "postgresql://stub:stub@127.0.0.1:1/stub")

import check_all_routes  # noqa: E402
import sort_fixtures  # noqa: E402

_failures: list[str] = []


def check(name, got, want):
    if got != want:
        _failures.append(f"{name}: got {got!r}, want {want!r}")
    else:
        print(f"  ok  {name}")


# Blueprints the port answers 410 for; their sort values are not exercised.
DEFERRED = ("/webbmail", "/vote", "/pollman", "/mailman", "/dbeditor")

# Pages that sort on a query parameter other than ?sort=, so their sort values
# are genuinely not this reader's to find. They are listed rather than ignored:
# the sweep does not exercise their column headers, and the list must not grow
# without someone noticing.
SORTS_BY_ANOTHER_PARAMETER = {
    "/dbpub/donations.asp": "sort1",
    "/dbpub/holders.asp": "s1",
    "/dbpub/leagueDirsHK.asp": "s1/s2/s3 (three-level sort)",
    "/dbpub/orgdata.asp": "per-section parameters on a page of many tables",
}

# A string that looks like one of this site's sort keys: a short column
# abbreviation plus a direction. Ordinary English ends that way too, and a
# template variable named "group" turning this red would have no honest place
# to be recorded -- SORTS_BY_ANOTHER_PARAMETER is keyed by route and means
# something else.
SORT_KEY = re.compile(r"^[A-Za-z0-9]{2,10}(up|dn|UP|DN)$")
NOT_SORT_KEYS = {
    "backup", "cleanup", "group", "lineup", "lookup", "makeup", "markup",
    "popup", "roundup", "setup", "signup", "startup", "warmup",
}


def uncaptured_sort_keys(found, patterns):
    """{path: keys} the route source mentions but the reader did not return."""
    prefixes = sort_fixtures.url_prefixes()
    missed = {}
    for source in sorted(sort_fixtures.ROUTES.rglob("*.py")):
        prefix = prefixes.get(source.stem, prefixes.get(source.parent.name, ""))
        for func in ast.walk(ast.parse(source.read_text())):
            if not isinstance(func, ast.FunctionDef):
                continue
            mentioned = {node.value for node in ast.walk(func)
                         if isinstance(node, ast.Constant)
                         and isinstance(node.value, str)
                         and SORT_KEY.match(node.value)
                         and node.value.lower() not in NOT_SORT_KEYS}
            for path in sort_fixtures._route_paths(func):
                full = prefix + path
                extra = {key for key in mentioned
                         if key not in set(found.get(full, ()))
                         and not any(re.fullmatch(p, key)
                                     for p in patterns.get(full, ()))}
                if extra:
                    missed.setdefault(full, set()).update(extra)
    return missed

# One module containing every shape the reader has had to learn, so a rewrite
# that drops one fails here rather than in six months on the box.
SHAPES = '''
from flask import Blueprint, request
from webbsite.asp_helpers import get_str
bp = Blueprint("shapes", __name__)

_MODULE_MAP = {"modup": "a", "moddn": "a DESC"}


@bp.route("/lookup.asp")
def lookup():
    sort = get_str("sort", "defaultup")
    local = {"locup": "b", "locdn": "b DESC"}
    return local[sort]


@bp.route("/module.asp")
def module_level():
    sort_param = request.args.get("sort", "modup")
    return _MODULE_MAP.get(sort_param, "a")


@bp.route("/branching.asp")
def branching():
    sort = get_str("sort", "totdn")
    for x in range(3):
        if sort == f"f{x}up":
            return "f"
    if sort in ("makup", "makdn"):
        return "m"
    return "d"


@bp.route("/alias.asp")
def alias():
    return lookup()
'''

UNREADABLE = '''
from flask import Blueprint
from webbsite.asp_helpers import get_str
bp = Blueprint("opaque", __name__)


@bp.route("/opaque.asp")
def opaque():
    sort = get_str("sort")
    return SORTS_BY_LOCALE[locale()][sort]
'''


def written(tmp, source):
    """A routes directory containing just `source`."""
    directory = pathlib.Path(tmp) / f"routes{abs(hash(source))}"
    directory.mkdir()
    (directory / "shapes.py").write_text(source)
    return directory


def run():
    found = sort_fixtures.sort_values()
    patterns = sort_fixtures.sort_patterns()

    if os.environ.get("PLANTED_FAILURE"):
        # The self-proof CI step runs this and requires a red result. Check 4 is
        # the one that found reghist.asp, and it is the only check here that
        # cannot be proved red from a synthetic module -- it compares the reader
        # against the real tree, so the planted defect has to be a value the
        # reader really returns and this pretends it did not.
        found = {path: [v for v in values if v not in ("datedn", "dateup")]
                 for path, values in found.items()}

    # 1. Scale. A lower bound only trips if the reader loses ground.
    check("reads sort values from every sort-taking route", len(found) >= 118, True)
    check("total sort values", sum(len(v) for v in found.values()) >= 1014, True)

    # The bug this exists for: all ten of tuntraff.asp's, not just the default.
    check("tuntraff.asp sort values", found.get("/dbpub/tuntraff.asp"),
          ["altadn", "altaup", "altdn", "altup", "datdn", "datup",
           "defadn", "defaup", "defdn", "defup"])

    # 2. Every derived path is one the app serves (the prefixes are read out of
    # the register_blueprint calls, so this catches a blueprint that moved).
    from webbsite import create_app
    served = {rule.rule for rule in create_app().url_map.iter_rules()}
    check("every derived path is served", sorted(p for p in found if p not in served), [])

    # 3. Every public sort-taking route has a fixture, so the gate requests it.
    base = check_all_routes.sort_base_urls()
    unexercised = sorted(
        path for path in found
        if not path.startswith(DEFERRED)
        and path not in base
        and path not in check_all_routes.SORT_BASE_OVERRIDES
    )
    check("every sort-taking route has a fixture", unexercised, [])

    # 4. Nothing sort-shaped in the routes goes uncaptured without a reason.
    #    A route the reader does not recognise at all contributes nothing and
    #    raises nothing, so only this notices.
    unexplained = sorted(
        f"{path} ({sorted(keys)})"
        for path, keys in uncaptured_sort_keys(found, patterns).items()
        if path not in SORTS_BY_ANOTHER_PARAMETER
    )
    check("no sort key goes uncaptured without a reason", unexplained, [])

    # 5. Each shape the reader has had to learn.
    with tempfile.TemporaryDirectory() as tmp:
        every_shape = written(tmp, SHAPES)
        shapes = sort_fixtures.sort_values(every_shape)
        shape_patterns = sort_fixtures.sort_patterns(every_shape)
        check("dict literal in the function", shapes.get("/lookup.asp"),
              ["defaultup", "locdn", "locup"])
        check("module-level sort map", shapes.get("/module.asp"), ["moddn", "modup"])
        check("if/elif comparison chain", shapes.get("/branching.asp"),
              ["makdn", "makup", "totdn"])
        check("f-string comparison becomes a pattern",
              shape_patterns.get("/branching.asp"), ["f.+up"])
        check("a computed sort value is recognised as handled",
              sort_fixtures.handles("/branching.asp", "f2up", shapes, shape_patterns), True)
        check("an unhandled sort value is not",
              sort_fixtures.handles("/branching.asp", "f2dn", shapes, shape_patterns), False)
        check("an alias route inherits what it forwards to", shapes.get("/alias.asp"),
              ["defaultup", "locdn", "locup"])

        # The planted failure: a route whose sort values cannot be read must
        # raise, not return nothing. Returning nothing is how a route silently
        # leaves the sweep -- the one failure this whole file exists to prevent.
        try:
            sort_fixtures.sort_values(written(tmp, UNREADABLE))
            check("an unreadable sort map raises",
                  "returned quietly", "SortMapNotUnderstood")
        except sort_fixtures.SortMapNotUnderstood as exc:
            check("an unreadable sort map raises", "opaque" in str(exc), True)

    # Patterns only ever come from a shape that has them.
    check("no route claims a pattern it cannot have",
          all(v for v in patterns.values()), True)

    if _failures:
        print("\nFAILED:")
        for failure in _failures:
            print("  " + failure)
        return 1
    print("\nall checks passed")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, "\n".join(_failures)


if __name__ == "__main__":
    sys.exit(run())
