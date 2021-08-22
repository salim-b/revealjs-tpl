#!/bin/sh

cmd='pandoc --from=markdown+emoji --to=revealjs --incremental --slide-level=2 --standalone --template=assets/pandoc_template --output=index.html slides.md'

if [ ! -z $FLATPAK_ID ]; then
  flatpak-spawn --host $cmd
else
  $cmd
fi
