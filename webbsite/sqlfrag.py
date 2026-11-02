"""SQL fragments that read as-of values directly, instead of calling a function per row.

enigma.getadjust, enigma.splitadj and enigma.outstanding cannot be inlined by Postgres
(a scalar SQL function containing a subquery never is), so a page calling them once per
row pays for a function call on every row: 40 us each, 190 ms for one stock's 4,500
dates. Written in the query, the same lookups cost a third of that.

Each returns the function's exact value (compared on prod across 75,360 issue/date
pairs). Arguments are SQL text, so they must be a column reference or %s, and are
checked: these strings are interpolated.
"""

import re

_ARG = re.compile(r"%s|CURRENT_DATE|[A-Za-z_][A-Za-z0-9_]*(\.[A-Za-z_][A-Za-z0-9_]*)?")


def _arg(text: str) -> str:
    if not _ARG.fullmatch(text):
        raise ValueError(f"not a column reference or %s: {text!r}")
    return text


def cum_adjust(issue: str, on: str) -> str:
    """enigma.getadjust(issue, on): the cumulative adjustment in force on a date."""
    return (
        "COALESCE((SELECT adj.cumAdjust FROM enigma.adjustments adj"
        f" WHERE adj.issueID = {_arg(issue)} AND adj.exDate <= {_arg(on)}"
        " ORDER BY adj.exDate DESC LIMIT 1), 1.0)"
    )


def split_adj(then: str, now: str) -> str:
    """enigma.splitadj from two cum_adjust values already selected as columns."""
    a, b = _arg(then), _arg(now)
    return f"CASE WHEN LEAST({a}, {b}) > 0 THEN GREATEST({a}, {b}) / LEAST({a}, {b}) ELSE 1.0 END"


def outstanding_asof(issue: str, on: str) -> str:
    """enigma.outstanding(issue, on) for a date that is not NULL."""
    return (
        "(SELECT sh.outstanding FROM enigma.issuedshares sh"
        f" WHERE sh.issueID = {_arg(issue)} AND sh.atDate <= {_arg(on)}"
        " ORDER BY sh.atDate DESC LIMIT 1)"
    )
