#!/usr/bin/env bash
set -e  # Exit on error

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

# By generating the PDFs directly in the build dir, we can avoid having to build the
# docusaurus site all over again in the workflow.
# Also, if we generate the PDFs in the static folder,
# the docusaurus build copies all of them to each locale by default, so we get duplicates.
if [ "$1" == "en" ]; then
    mkdir -p "build/downloads"
    OUTPUTPATH="build/downloads/Ptx-man-a5-$1-9.4.pdf"
else
    mkdir -p "build/$1/downloads"
    OUTPUTPATH="build/$1/downloads/Ptx-man-a5-$1-9.4.pdf"
fi

npx docu-pdf $URL \
--coverPath="src/pdf-generation/pdf-covers/cover-man-$1.html" \
--contentSelector="article" \
--pageSize="A5" \
--outputPath="$OUTPUTPATH" \
--disableTOC \
--headerTemplate="<footer />" \
--pdfMargin="40,40,80,40" \
