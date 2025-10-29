#!/usr/bin/env python3
"""
Identify working routes vs stubs by checking route implementations

This script scans Flask routes and identifies which are working vs stubs.
"""

import re
from pathlib import Path


def extract_routes_from_file(file_path: Path) -> list:
    """Extract route definitions from Python file"""
    routes = []

    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Find all @bp.route decorators with their function names
    pattern = r'@bp\.route\(["\']([^"\']+)["\'](?:,\s*methods=\[(.*?)\])?\)\s*def\s+(\w+)'
    matches = re.finditer(pattern, content, re.MULTILINE)

    for match in matches:
        route_path = match.group(1)
        methods = match.group(2) if match.group(2) else '"GET"'
        func_name = match.group(3)

        # Get function body to check if it's a stub
        func_pattern = rf'def {func_name}\([^)]*\):[^#]*?(?=\ndef |\Z)'
        func_match = re.search(func_pattern, content, re.DOTALL)

        is_stub = False
        if func_match:
            func_body = func_match.group(0)
            # Check for stub indicators
            if (
                "return render_template_string" in func_body
                and "STUB" in func_body
            ) or ('"STUB"' in func_body or "'STUB'" in func_body):
                is_stub = True

        routes.append(
            {
                "path": route_path,
                "methods": methods,
                "function": func_name,
                "is_stub": is_stub,
                "file": file_path.name,
            }
        )

    return routes


def main():
    """Main entry point"""
    dbpub_dir = Path("webbsite/routes/dbpub")

    all_routes = []

    # Scan all dbpub route files
    for py_file in sorted(dbpub_dir.glob("*.py")):
        if py_file.name.startswith("__"):
            continue

        routes = extract_routes_from_file(py_file)
        all_routes.extend(routes)

    # Also scan top-level route files
    routes_dir = Path("webbsite/routes")
    for py_file in [
        routes_dir / "ccass.py",
        routes_dir / "search.py",
        routes_dir / "events.py",
    ]:
        if py_file.exists():
            routes = extract_routes_from_file(py_file)
            all_routes.extend(routes)

    # Group by working vs stub
    working_routes = [r for r in all_routes if not r["is_stub"]]
    stub_routes = [r for r in all_routes if r["is_stub"]]

    print(f"\n{'='*70}")
    print(f"Route Analysis")
    print(f"{'='*70}\n")
    print(f"Total routes found: {len(all_routes)}")
    print(f"Working routes: {len(working_routes)}")
    print(f"Stub routes: {len(stub_routes)}")
    print()

    # Group working routes by module
    by_module = {}
    for route in working_routes:
        module = route["file"]
        if module not in by_module:
            by_module[module] = []
        by_module[module].append(route)

    print(f"{'='*70}")
    print(f"Working Routes by Module")
    print(f"{'='*70}\n")

    for module in sorted(by_module.keys()):
        routes = by_module[module]
        print(f"{module} ({len(routes)} routes):")
        for route in sorted(routes, key=lambda x: x["path"]):
            print(f"  {route['path']}")
        print()

    print(f"{'='*70}")
    print(f"Stub Routes")
    print(f"{'='*70}\n")

    by_module_stub = {}
    for route in stub_routes:
        module = route["file"]
        if module not in by_module_stub:
            by_module_stub[module] = []
        by_module_stub[module].append(route)

    for module in sorted(by_module_stub.keys()):
        routes = by_module_stub[module]
        print(f"{module} ({len(routes)} stubs):")
        for route in sorted(routes, key=lambda x: x["path"]):
            print(f"  {route['path']}")
        print()


if __name__ == "__main__":
    main()
