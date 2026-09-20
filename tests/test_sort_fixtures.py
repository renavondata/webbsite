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
  4. the reader still handles each shape in use (dict literal, module-level
     dict, if/elif chain, f-string comparison, alias route), proved by parsing
     a module written to contain each one, and proved to go red by parsing a
     shape it should reject.

    uv run python tests/test_sort_fixtures.py
"""

import os
import pathlib
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

    # 1. Scale. A lower bound only trips if the reader loses ground.
    check("reads sort values from every sort-taking route", len(found) >= 115, True)
    check("total sort values", sum(len(v) for v in found.values()) >= 1000, True)

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

    # 4. Each shape the reader has had to learn.
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
