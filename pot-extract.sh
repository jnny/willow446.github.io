#!/bin/sh
# Usage: ./pot-extract.sh
# Extract PO templates from English HTML files and place them under `_en.src`.

set -e

cd _en.src

for html in $(find . -name "*.html"); do
    echo $html
    pot="${html%%.html}.pot"
    html2po --progress=none --keepcomments --errorlevel=none -P -i "$html" -o "$pot"
done