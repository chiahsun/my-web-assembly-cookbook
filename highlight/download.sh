#!/usr/bin/env bash

VERSION=11.9.0

curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/highlight.min.js"
(cd languages && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/languages/bash.min.js")
(cd languages && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/languages/cpp.min.js")
(cd languages && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/languages/dockerfile.min.js")
(cd languages && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/languages/javascript.min.js")
(cd languages && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/languages/shell.min.js")
(cd languages && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/languages/xml.min.js")
(cd styles && curl -LO "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/$VERSION/styles/night-owl.min.css")
