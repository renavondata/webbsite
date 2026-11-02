"""webbsite/sqlfrag.py: fragments interpolate only safe arguments (no DB).

Their values are proven against the real functions on Postgres by
tests/test_sqlfrag.sh. Run: uv run pytest -q tests/test_sqlfrag.py
"""

import os
import sys

import pytest

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from webbsite import sqlfrag  # noqa: E402


@pytest.mark.parametrize("bad", ["1; DROP TABLE x", "a b", "a.b.c", "", "%s;", "a--", "'x'", "(a)"])
def test_unsafe_arguments_are_refused(bad):
    for call in (lambda: sqlfrag.cum_adjust(bad, "d"), lambda: sqlfrag.cum_adjust("i", bad),
                 lambda: sqlfrag.split_adj(bad, "b"), lambda: sqlfrag.split_adj("a", bad),
                 lambda: sqlfrag.outstanding_asof(bad, "d"), lambda: sqlfrag.outstanding_asof("i", bad)):
        with pytest.raises(ValueError):
            call()


@pytest.mark.parametrize("good", ["%s", "c.settleDate", "atDate", "CURRENT_DATE"])
def test_columns_and_placeholders_are_accepted(good):
    assert good in sqlfrag.cum_adjust("%s", good)
    assert good in sqlfrag.outstanding_asof("%s", good)
