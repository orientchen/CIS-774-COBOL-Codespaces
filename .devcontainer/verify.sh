#!/usr/bin/env bash
set -e
printf 'GnuCOBOL compiler: '; cobc --version | head -n 1
printf '\nExample files: '; find examples -maxdepth 1 -name '*.cob' | wc -l
printf 'Ready. See README.md for compile commands.\n'
