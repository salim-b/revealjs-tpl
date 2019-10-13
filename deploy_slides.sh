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


cp index.html "/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/public/slides/SLIDESHOW/"
cp -R assets/ "/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/public/slides/SLIDESHOW/"

cd "/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/"
git add public/slides/SLIDESHOW/*
git commit -m "update SLIDESHOW slides"
git push
