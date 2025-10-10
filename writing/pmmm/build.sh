#!/bin/bash
pandoc analogue.md -s --metadata title="Analogue Media" --metadata author="Kim Flores 🫟" --toc --strip-comments --wrap=none -o analogue.html
python -m http.server 8000