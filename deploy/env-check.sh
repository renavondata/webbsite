#!/usr/bin/env bash
# env-check.sh -- assert the box carries every environment NAME deploy/required-env.txt
# declares, and declares every name the box carries. Presence only: no value is ever
# read into a variable, printed, or compared.
#
# Exit 0 clean, 1 when a `required` name is absent or an undeclared name is present,
# 2 when it cannot tell (unreadable file) -- BLIND is never a pass. Run as root on the
# box (the env files are root-readable only); the invariants timer runs it daily.
# ETC=<dir> and MANIFEST=<file> exist so the tests can point it at fixtures.
set -uo pipefail

ETC="${ETC:-/etc/webbsite}"
MANIFEST="${MANIFEST:-$(cd "$(dirname "$0")" && pwd)/required-env.txt}"
rc=0

[ -r "$MANIFEST" ] || { echo "env-check: BLIND: cannot read $MANIFEST" >&2; exit 2; }

declare -A declared   # "file NAME" -> grade
files=()
while read -r file name grade _; do
    case "$file" in ''|'#'*) continue ;; esac
    declared["$file $name"]="$grade"
    case " ${files[*]-} " in *" $file "*) ;; *) files+=("$file") ;; esac
done < "$MANIFEST"

for file in "${files[@]}"; do
    path="$ETC/$file"
    if [ ! -e "$path" ]; then
        echo "env-check: MISSING FILE $path" >&2; rc=1; continue
    fi
    if [ ! -r "$path" ]; then
        echo "env-check: BLIND: cannot read $path (run as root)" >&2; exit 2
    fi
    # Names present on the box: KEY= at line start, systemd EnvironmentFile syntax.
    mapfile -t present < <(grep -oE '^[A-Za-z_][A-Za-z0-9_]*=' "$path" | tr -d '=' | sort -u)
    for key in "${!declared[@]}"; do
        [ "${key%% *}" = "$file" ] || continue
        name="${key#* }"; grade="${declared[$key]}"
        if ! printf '%s\n' "${present[@]}" | grep -qx "$name"; then
            if [ "$grade" = required ]; then
                echo "env-check: $file: REQUIRED $name is absent" >&2; rc=1
            else
                echo "env-check: $file: optional $name absent (see required-env.txt for what that costs)" >&2
            fi
        fi
    done
    for name in "${present[@]}"; do
        if [ -z "${declared[$file $name]+x}" ]; then
            echo "env-check: $file: $name is set on the box but NOT declared in required-env.txt" >&2; rc=1
        fi
    done
done

[ $rc -eq 0 ] && echo "env-check: ok (${#declared[@]} names across ${#files[@]} files)"
exit $rc
