"""Long lists split into pages, so a 17,000-row table is not rendered per request.

    page = current_page(rows, size=500)   # page.rows, page.offset, page.total, ...

The contract, the same on every paginated route:

- ``page`` is 1-based; anything that is not a page number means page 1; a number
  past the end is a 404; ``page=all`` shows every row and asks not to be indexed.
- The page size is fixed per route. A sort applies to the whole list, so sort links
  drop ``page``; pager links keep every other parameter, once.
- Row numbers continue across pages, and totals count the whole list.
- The canonical URL keeps ``page`` only above 1 and only when unsorted
  (asp_helpers.canonical_query); robots.txt disallows ``page=all`` and sorted pages.

Include ``includes/pager_head.html`` in ``extra_head`` and ``includes/pager.html``
around the table, and give the table ``data-total-rows="{{ page.total }}"``, which
tests/check_all_routes.py reads.
"""

from __future__ import annotations

from dataclasses import dataclass
from urllib.parse import urlencode

from flask import abort, request

ALL = "all"


@dataclass(frozen=True)
class Page:
    rows: list
    number: int
    pages: int
    total: int
    offset: int
    showing_all: bool = False

    @property
    def first(self) -> int:
        return self.offset + 1 if self.rows else 0

    @property
    def last(self) -> int:
        return self.offset + len(self.rows)


def page_number(raw) -> int | None:
    """The page a ``page`` value names, or None if it does not name one."""
    if not raw or not (raw.isascii() and raw.isdigit()) or len(raw) > 9:
        return None
    return int(raw) if int(raw) >= 1 and str(int(raw)) == raw else None


def paginate(rows, raw, size) -> Page | None:
    """The page of rows that raw asks for, or None if it is past the end."""
    total = len(rows)
    pages = max(1, (total + size - 1) // size)
    if raw == ALL:
        return Page(rows, 1, pages, total, 0, showing_all=True)
    number = page_number(raw) or 1
    if number > pages:
        return None
    offset = (number - 1) * size
    return Page(rows[offset:offset + size], number, pages, total, offset)


def current_page(rows, size) -> Page:
    page = paginate(rows, request.args.get("page"), size)
    if page is None:
        abort(404)
    return page


def page_url(number) -> str:
    """This URL at another page, every other parameter kept; page 1 has no ``page``."""
    pairs = [(k, v) for k, v in request.args.items(multi=True) if k != "page"]
    if number != 1:
        pairs.append(("page", number))
    return request.path + (f"?{urlencode(pairs)}" if pairs else "")
