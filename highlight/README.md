# Highlight.js

https://highlightjs.org/examples

https://highlightjs.org/download

Callouts rendering broke in latest version v.11.9.0 (since v11).

WASM rendering only gets supported since v11.

To render WASM, we have no callouts and to render callouts we have to WASM. We choose v11 and wait future fix for callouts.

https://cdnjs.com/libraries/highlight.js/11.9.0


From parent directory,

```shell
$ tree highlight
highlight
├── README.md
├── download.sh
├── highlight.min.js
├── languages
│   ├── bash.min.js
│   ├── c.min.js
│   ├── cpp.min.js
│   ├── dockerfile.min.js
│   ├── javascript.min.js
│   ├── shell.min.js
│   ├── wasm.min.js
│   └── xml.min.js
└── styles
    └── night-owl.min.css

3 directories, 12 files
```
