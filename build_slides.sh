#!/bin/sh
pandoc "slides.md" \
       --from=markdown+emoji \
       --to=revealjs \
       --incremental \
       --standalone \
       --output=index.html \
       --css=assets/custom.css \
       --variable=revealjs-url:assets/reveal.js-3.8.0 \
       --variable=theme:black \
       --variable=mouseWheel:false \
       --variable=width:1920 \
       --variable=height:1080 \
