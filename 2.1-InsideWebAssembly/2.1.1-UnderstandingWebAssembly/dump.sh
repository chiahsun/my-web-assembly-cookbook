#!/usr/bin/env bash
# https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script
if [[ $# -ne 1 ]]; then
  echo "Usage: <script> <input_wat>"
  exit 2
fi
# https://stackoverflow.com/questions/2664740/extract-file-basename-without-path-and-extension-in-bash
wat="$1"
name="${wat%.wat}"
# echo "$name"
# echo "$1"
# wat2wasm "$name.wat" -o "$name.wasm"
# https://developer.mozilla.org/en-US/docs/WebAssembly/Text_format_to_Wasm
wat2wasm "$name.wat" -v
