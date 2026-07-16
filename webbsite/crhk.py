"""Map Hong Kong company registry numbers to crhk.guru company-page URLs.

crhk.guru is a Hong Kong company directory with per-company deep links keyed by
either the post-2023 8-digit Business Registration Number (BRN) or the pre-2023
7-digit CR number. This module holds the single pure function that turns a raw
registry identifier into the canonical crhk.guru URL, or ``None`` when no valid
deep link exists (so callers never emit a guaranteed-404 link).

Security invariant: templates render the raw identifier inside an inline
``onclick`` handler (``posthog.capture(..., {ref: '<the number>'})``). Jinja
autoescape does NOT sanitize inside inline event handlers, so that value is
injection-safe only because the allowlist regexes below match ``[0-9Ff]``
characters only, and callers render the anchor solely when this function
returns non-None. Loosening a regex to admit any other character (or emitting
the onclick for a value this function rejected) would silently reintroduce an
XSS vector. Keep the regexes strict.
"""

import re

_BRN_RE = re.compile(r"^\d{8}$")          # post-2023 8-digit BRN
_CRN_RE = re.compile(r"^\d{1,7}$")        # pre-2023 CR number (zero-padded to 7)
_FOREIGN_RE = re.compile(r"^F\d{7}$")     # non-HK registered ("F" + 7 digits)


def crhk_company_url(raw):
    """Return the crhk.guru company-page URL for a registry number, else None.

    - None / empty / whitespace-only -> None.
    - 8 digits -> BRN deep link (``/company/brn/{v}``).
    - 1-7 digits -> pre-2023 CR number, left-padded to 7 (``/company/{v}``);
      unpadded numbers 404 on crhk.guru, so zfill(7) is mandatory.
    - ``F`` + 7 digits -> non-HK registration deep link (``/company/{v}``).
    - anything else -> None (never emit a guaranteed-404 link).
    """
    if raw is None:
        return None
    v = str(raw).strip().upper()
    if not v:
        return None
    if _BRN_RE.match(v):
        return f"https://crhk.guru/company/brn/{v}"
    if _CRN_RE.match(v):
        return f"https://crhk.guru/company/{v.zfill(7)}"
    if _FOREIGN_RE.match(v):
        return f"https://crhk.guru/company/{v}"
    return None
