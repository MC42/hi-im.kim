#! /usr/bin/env bash

for file_name in ./*.md ; do
    pandoc $file_name -s --metadata author="Kim Flores" --strip-comments --wrap=none -o "${file_name%.md}.html" 2>/dev/null
    tempura=$(pandoc $file_name --strip-comments -t markdown | wc -w)
    echo $file_name    $tempura
done

#pandoc lepidopterology.md -s --metadata title="Lepidopterology" --metadata author="Kim Flores" --strip-comments --wrap=none -o lepidopterology.html
python -m http.server 8000
