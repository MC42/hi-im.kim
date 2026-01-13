#! /usr/bin/env bash

for file_name in ./*.md ; do
    pandoc $file_name -s --metadata author="Kim Flores" --toc --strip-comments --wrap=none -o "${file_name%.md}.html"
done

#pandoc lepidopterology.md -s --metadata title="Lepidopterology" --metadata author="Kim Flores" --strip-comments --wrap=none -o lepidopterology.html
python -m http.server 8000