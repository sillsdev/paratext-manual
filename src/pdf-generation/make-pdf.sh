#!/usr/bin/env bash
set -e  # Exit on error

# Parameters (same shape as bloom-docs' make-pdf.sh):
#   $1: language code (default 'en'), OR a base URL if it starts with http
#   $2: language code, when $1 is a base URL
#
# Passing a base URL lets you generate the PDF from a LOCAL build instead of the
# published site, which is the only way to check a PDF change before deploying:
#
#     yarn build
#     node scripts/serve-build.cjs 3312          # see note below
#     bash src/pdf-generation/make-pdf.sh http://localhost:3312 en
#
# NOTE: use that plain static server, not `yarn serve`. Most of this site's slugs
# contain a dot (/2.OD, /3.PP1, ...) and `docusaurus serve` returns 404 for those,
# so docu-pdf's crawl dies partway through. GitHub Pages serves them fine, which
# is why this only bites locally.
if [[ "$1" =~ ^https?:// ]]; then
    BASE_URL="$1"
    LANGUAGE="${2:-en}"
else
    LANGUAGE="${1:-en}"
    BASE_URL="https://sillsdev.github.io/paratext-manual"
fi

if [ "$LANGUAGE" == "en" ]; then
    URL="$BASE_URL/Overview"
else
    URL="$BASE_URL/$LANGUAGE/Overview"
fi

# By generating the PDFs directly in the build dir, we can avoid having to build the
# docusaurus site all over again in the workflow.
# Also, if we generate the PDFs in the static folder,
# the docusaurus build copies all of them to each locale by default, so we get duplicates.
if [ "$LANGUAGE" == "en" ]; then
    mkdir -p "build/downloads"
    OUTPUTPATH="build/downloads/Ptx-man-a5-$LANGUAGE-9.5.pdf"
else
    mkdir -p "build/$LANGUAGE/downloads"
    OUTPUTPATH="build/$LANGUAGE/downloads/Ptx-man-a5-$LANGUAGE-9.5.pdf"
fi

npx docu-pdf $URL \
--coverPath="src/pdf-generation/pdf-covers/cover-man-$LANGUAGE.html" \
--contentSelector="article" \
--pageSize="A5" \
--outputPath="$OUTPUTPATH" \
--disableTOC \
--headerTemplate="<footer />" \
--pdfMargin="40,40,80,40" \
