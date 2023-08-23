#!/usr/bin/env bash

# Use en for the language if not set
if [ -z "$1" ]
then
  set -- 'en' "$@"
fi

if [ "$1" == "en" ]; then
    URL="https://sillsdev.github.io/paratext-manual/Overview"
else
    URL="https://sillsdev.github.io/paratext-manual/$1/Overview"
fi

npx docu-pdf $URL \
--coverPath="src/pdf-generation/pdf-covers/cover-man-$1.html" \
--contentSelector="article" \
--pageSize="A5" \
--outputPath="build/downloads/Ptx-man-a5-$1-9.3.pdf" \
--disableTOC \
--headerTemplate="<footer />" \
--pdfMargin="40,40,80,40" \