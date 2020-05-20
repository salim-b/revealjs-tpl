#!/bin/sh
pandoc "slides.md" \
       --from=markdown+emoji \
       --to=revealjs \
       --incremental \
       --standalone \
       --template=assets/pandoc_template \
       --output=index.html \


cp index.html "/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/public/slides/SLIDESHOW/"
cp -R assets/ "/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/public/slides/SLIDESHOW/"

cd "/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/"
git add public/slides/SLIDESHOW/*
git commit -m "update SLIDESHOW slides"
git push
