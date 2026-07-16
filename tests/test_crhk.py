#!/usr/bin/env python3
"""Unit tests for webbsite.crhk.crhk_company_url.

Pure-function tests — no Flask app, no database, no network. Run from the repo
root so ``webbsite`` is importable:

    uv run python tests/test_crhk.py

Exits non-zero if any case fails.
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from webbsite.crhk import crhk_company_url

# (input, expected) pairs covering every branch of the helper.
CASES = [
    # 8-digit BRN -> /company/brn/{v}
    ("12345678", "https://crhk.guru/company/brn/12345678"),
    ("00000001", "https://crhk.guru/company/brn/00000001"),
    # 1-7 digit CR number -> zero-padded to 7 -> /company/{v}
    ("1", "https://crhk.guru/company/0000001"),
    ("123", "https://crhk.guru/company/0000123"),
    ("1234567", "https://crhk.guru/company/1234567"),
    ("0001234", "https://crhk.guru/company/0001234"),
    # F-prefixed (non-HK registered) -> /company/{v}
    ("F1234567", "https://crhk.guru/company/F1234567"),
    ("f1234567", "https://crhk.guru/company/F1234567"),  # lowercased -> uppercased
    # Whitespace is stripped before matching
    ("  1234567  ", "https://crhk.guru/company/1234567"),
    (" 12345678 ", "https://crhk.guru/company/brn/12345678"),
    # None / empty / whitespace-only -> None
    (None, None),
    ("", None),
    ("   ", None),
    # Garbage / out-of-range -> None (never a guaranteed-404 link)
    ("123456789", None),   # 9 digits: neither BRN nor CR
    ("F123456", None),     # F + 6 digits
    ("F12345678", None),   # F + 8 digits
    ("ABC", None),
    ("12A45678", None),
    ("HK1234567", None),
    ("F", None),
    # Non-string input is coerced via str()
    (1234567, "https://crhk.guru/company/1234567"),
    (12345678, "https://crhk.guru/company/brn/12345678"),
]


def run():
    failures = []
    for raw, expected in CASES:
        got = crhk_company_url(raw)
        if got != expected:
            failures.append((raw, expected, got))

    if failures:
        print(f"FAILED {len(failures)}/{len(CASES)} cases:")
        for raw, expected, got in failures:
            print(f"  crhk_company_url({raw!r}) -> {got!r}, expected {expected!r}")
        return 1

    print(f"PASSED all {len(CASES)} cases")
    return 0


if __name__ == "__main__":
    sys.exit(run())
