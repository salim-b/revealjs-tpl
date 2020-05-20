#!/bin/sh
pandoc "slides.md" \
       --from=markdown+emoji \
       --to=revealjs \
       --incremental \
       --standalone \
       --template=assets/pandoc_template \
       --output=index.html \

