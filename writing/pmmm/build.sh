#!/bin/bash
pandoc analogue.md -s --metadata title="Analogue Media" --metadata author="Kim Flores 🫟" --toc --strip-comments --wrap=none -o analogue.html
pandoc lepidopterology.md -s --metadata title="Lepidopterology" --metadata author="Kim Flores" --strip-comments --wrap=none -o lepidopterology.html
python -m http.server 8000