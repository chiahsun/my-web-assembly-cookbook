#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
  echo "Usage: <script> <input_wat>"
  exit 2
fi

wat="$1"
name="${wat%.wat}"

wat2wasm "$name.wat" -o "$name.wasm"
wasm3 --repl "$name.wasm"