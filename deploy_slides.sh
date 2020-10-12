#!/bin/sh

# CONFIG
repo_path="/PATH/TO/YOUR/REPO/USERNAME.gitlab.io/"
slideshow_name="SLIDESHOW"

build_cmd='pandoc --from=markdown+emoji --to=revealjs --incremental --standalone --template=assets/pandoc_template --output=index.html slides.md'

if [ ! -z $FLATPAK_ID ]; then
  flatpak-spawn --host $cmd
else
  $cmd
fi

cp index.html "${repo_path}public/slides/${slideshow_name}/"
cp -R assets/ "${repo_path}public/slides/${slideshow_name}/"

cd "${repo_path}"
git add "public/slides/${slideshow_name}/*"
git commit -m "update ${slideshow_name} slides"
git push
