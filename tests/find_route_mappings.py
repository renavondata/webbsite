#!/usr/bin/env python3
"""Find the correct blueprint.route mappings for all routes"""

import re
from pathlib import Path

route_dir = Path("webbsite/routes/dbpub")

blueprint_map = {}

for py_file in route_dir.glob("*.py"):
    content = py_file.read_text()

    # Find blueprint name
    bp_match = re.search(r'bp\s*=\s*Blueprint\("([^"]+)"', content)
    if not bp_match:
        continue

    blueprint_name = bp_match.group(1)

    # Find all route definitions
    route_matches = re.finditer(r'@bp\.route\(["\']([^"\']+)["\']\)\s*\ndef\s+(\w+)\(', content, re.MULTILINE)

    for match in route_matches:
        route_path = match.group(1)
        function_name = match.group(2)

        # Extract the ASP filename from the route path
        asp_name = route_path.split('/')[-1].replace('.asp', '')

        blueprint_map[function_name] = f"{blueprint_name}.{function_name}"
        print(f"{function_name:30} -> {blueprint_name}.{function_name:40} ({route_path})")

print("\n\nMappings:")
for func, endpoint in sorted(blueprint_map.items()):
    print(f"  {func:30} -> {endpoint}")
