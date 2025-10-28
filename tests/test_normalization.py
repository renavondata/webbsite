#!/usr/bin/env python3
"""Quick test of normalization with saved outputs"""

import re


def normalize_html(html):
    """Normalize HTML for comparison"""
    # Remove HTML comments
    html = re.sub(r"<!--.*?-->", "", html, flags=re.DOTALL)

    # Normalize static file paths (CSS and images)
    html = re.sub(r'href="[^"]*/([\w-]+\.css)"', r'href="\1"', html)
    html = re.sub(r'src="[^"]*/([\w-]+\.(png|jpg|gif|svg))"', r'src="\1"', html)

    # Process lines
    lines = html.splitlines()
    normalized_lines = []

    for line in lines:
        line = line.strip()
        line = re.sub(r"\s+", " ", line)
        if line:
            normalized_lines.append(line)

    return "\n".join(normalized_lines)


# Load files
with open("outputs/searchorgs_-_company_search_case_1_flask.html", "r") as f:
    flask_html = f.read()

with open("outputs/searchorgs_-_company_search_case_1_asp.html", "r") as f:
    asp_html = f.read()

# Normalize
flask_norm = normalize_html(flask_html)
asp_norm = normalize_html(asp_html)

# Compare
if flask_norm == asp_norm:
    print("✅ TEST PASSED! HTML matches after normalization")
else:
    # Show differences
    flask_lines = flask_norm.splitlines()
    asp_lines = asp_norm.splitlines()

    print(f"❌ Test failed")
    print(f"Flask lines: {len(flask_lines)}")
    print(f"ASP lines: {len(asp_lines)}")

    # Find first difference
    for i, (f, a) in enumerate(zip(flask_lines, asp_lines)):
        if f != a:
            print(f"\nFirst difference at line {i+1}:")
            print(f"Flask: {f[:100]}")
            print(f"ASP:   {a[:100]}")
            break
