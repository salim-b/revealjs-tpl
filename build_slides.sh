#!/bin/sh
pandoc "slides.md" \
       --from=markdown+emoji \
       --to=revealjs \
       --incremental \
       --standalone \
       --output=index.html \

