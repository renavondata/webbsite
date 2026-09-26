#!/usr/bin/env python3
"""ctr.asp's rows are formatted in Python now; prove they match the template.

ctr_series() replaced two per-row Jinja loops in dbpub/ctr.html (the Dygraph
CSV and the table): a full-history page is ~7k rows, and as template calls
that was ~75% of the page's CPU. The loops are kept below VERBATIM as the
reference, rendered side by side with ctr_series() on the same rows, in every
mode: absolute, relative, one issue, five issues (the colHide3 columns) and a
first stock at -100% (the CSV drops that row's values).

No DB, no pytest -- same house style as tests/test_sentry_regressions.py:

    uv run python tests/test_ctr_render.py
"""
import os
import re
import sys
import time
from datetime import date, timedelta
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from jinja2 import Environment  # noqa: E402

from webbsite.routes.dbpub.statistics import ctr_series  # noqa: E402

# The removed ctr.html loops, verbatim, wrapped only to emit their output.
REFERENCE = Environment().from_string("""
{%- set csv_lines = [] -%}
{% for row in adj_data %}
    {% set line_parts = [row[0].strftime('%Y-%m-%d')] %}
    {% if not show_rel %}
        {% for i in range(1, issues|length + 1) %}
            {% set _ = line_parts.append('%.2f'|format(row[i])) %}
        {% endfor %}
    {% elif row[1] != -100 %}
        {% for i in range(2, issues|length + 1) %}
            {% set rel_return = 100 * ((row[i] + 100) / (row[1] + 100) - 1) %}
            {% set _ = line_parts.append('%.2f'|format(rel_return)) %}
        {% endfor %}
    {% endif %}
    {% set _ = csv_lines.append(line_parts|join(',')) %}
{% endfor %}
@@CSV@@{{ csv_lines|join('\\n') }}@@TABLE@@
{% for row in adj_data|reverse %}
<tr>
    <td>{{ row[0].strftime('%Y-%m-%d') }}</td>
    {% for i in range(1, issues|length + 1) %}
        <td {% if i > 4 %}class="colHide3"{% endif %}>{{ "%.2f"|format(row[i]) }}</td>
    {% endfor %}
    {% if show_rel %}
        {% for i in range(2, issues|length + 1) %}
            {% set rel_return = 100 * ((row[i] + 100) / (row[1] + 100) - 1) %}
            <td {% if issues|length > 2 %}class="colHide3"{% endif %}>{{ "%.2f"|format(rel_return) }}</td>
        {% endfor %}
    {% endif %}
</tr>
{% endfor %}
""")


def html(s: str) -> str:
    """Whitespace between and inside tags is not content: `<td >` == `<td>`."""
    s = re.sub(r">\s+<", "><", s.strip())
    return re.sub(r"<(\w+)\s+>", r"<\1>", s)


def rows(n_issues: int, n_days: int, first=None):
    start = date(1994, 1, 3)
    return [
        [start + timedelta(days=d)]
        + [(first if i == 0 and first is not None else (d * 0.37 + i * 11.13) % 250 - 60)
           for i in range(n_issues)]
        for d in range(n_days)
    ]


failures = []


def check(name, adj_data, n_issues, show_rel):
    ref = REFERENCE.render(adj_data=adj_data, issues=[{}] * n_issues, show_rel=show_rel)
    ref_csv, ref_table = ref.split("@@CSV@@")[1].split("@@TABLE@@")
    csv_rows, table_html = ctr_series(adj_data, n_issues, show_rel)
    ok = csv_rows == ref_csv and html(str(table_html)) == html(ref_table)
    print(f"{'ok  ' if ok else 'FAIL'} {name}")
    if not ok:
        failures.append(name)


def run():
    failures.clear()
    # CI's self-proof: with PLANTED_FAILURE set this script must exit 1, or the
    # gate is decoration. The reference renders 5 columns; ctr_series gets 4.
    if os.environ.get("PLANTED_FAILURE"):
        ref = REFERENCE.render(adj_data=rows(5, 5), issues=[{}] * 5, show_rel=False)
        ok = ctr_series(rows(5, 5), 4, False)[0] == ref.split("@@CSV@@")[1].split("@@TABLE@@")[0]
        print(f"{'ok  ' if ok else 'FAIL'} planted failure (CI self-proof; expected to fail)")
        if not ok:
            failures.append("planted failure")

    check("absolute, one issue", rows(1, 50), 1, False)
    check("absolute, five issues (colHide3 on the 5th)", rows(5, 50), 5, False)
    check("relative, two issues", rows(2, 50), 2, True)
    check("relative, five issues (rel columns colHide3)", rows(5, 50), 5, True)
    # CSV drops a relative row whose base is -100; the table would divide by zero
    # in both versions, so the -100 rows are checked on the CSV only.
    base_gone = rows(3, 20, first=-100)
    check("absolute, first stock at -100%", base_gone, 3, False)
    try:
        ctr_series(base_gone, 3, True)
        failures.append("relative, -100 base: table should raise like the template did")
        print("FAIL relative, -100 base did not raise")
    except ZeroDivisionError:
        print("ok   relative, -100 base raises in the table, as the template did")

    big = rows(5, 7000)
    t = time.perf_counter()
    REFERENCE.render(adj_data=big, issues=[{}] * 5, show_rel=True)
    t_ref = time.perf_counter() - t
    t = time.perf_counter()
    ctr_series(big, 5, True)
    t_new = time.perf_counter() - t
    print(f"7000 rows x 5 issues, relative: template {t_ref * 1000:.0f} ms, ctr_series {t_new * 1000:.0f} ms")

    if failures:
        print(f"{len(failures)} failed: {', '.join(failures)}")
        return 1
    print("PASS")
    return 0


def test_all():
    """pytest entry point (CI); the direct-run house style still works."""
    assert run() == 0, ", ".join(failures)


if __name__ == "__main__":
    sys.exit(run())
