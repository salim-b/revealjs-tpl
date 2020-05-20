# Pandoc reveal.js slideshow template

This is a ready-to-go file compilation to create a [reveal.js](https://revealjs.com/) presentation using [Pandoc](https://pandoc.org/).


## Features

Besides [reveal.js' default capabilities](https://github.com/hakimel/reveal.js/#table-of-contents), this template also includes support for the following [reveal.js plug-ins](https://github.com/hakimel/reveal.js/#plugins):

plug-in | last updated
------- | ------------
[Elapsed-Time-Bar](https://github.com/tkrkt/reveal.js-elapsed-time-bar) | 2020-02-24
[Spotlight](https://github.com/denniskniep/reveal.js-plugin-spotlight) | 2020-02-24
[verticator](https://github.com/Martinomagnifico/reveal.js-verticator) | 2020-02-24


## Instructions

1. Ensure you have the latest version of [Pandoc installed](https://pandoc.org/installing.html) on your system.

2. Clone the repository

    _or_

    [download the content of this repository as a ZIP archive](https://gitlab.com/salim_b/pandoc/reveal.js_tpl/-/archive/master/reveal.js_tpl-master.zip) and extract it to the folder where you want to put your new fancy slideshow.

4. Edit `slides.md`. See the [Pandoc manual](https://pandoc.org/MANUAL.html#producing-slide-shows-with-pandoc) for details about the syntax.

5. Run `build_slides.sh` and open `index.html` in your favorite web browser to view the slideshow.

6. Optional: Adapt `deploy_slides.sh` to your needs and run it to deploy your slideshow to e.g. [GitLab Pages](https://about.gitlab.com/product/pages/).

### Automatically build the slideshow

If you're an [Atom](https://atom.io/) user, it's recommended to install the package [save-autorun](https://atom.io/packages/save-autorun). Then, everytime you save `slides.md`, `build_slides.sh` will be executed in the background to build `index.html`. This, obviously, can save you a lot of time while writing your slideshow.
