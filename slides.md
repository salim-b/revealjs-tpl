---
# general Pandoc options
lang: en-US # change e.g. to 'de-CH' for German (Switzerland)
css: assets/custom.css # put your custom styles in this file

# title slide options
title: SLIDESHOW

# Pandoc options for (reveal.js) slides
revealjs-url: node_modules/reveal.js
theme: black # for possible values see https://revealjs.com/themes/
#background-image: assets/unsplash-lERuUa_96uo.jpg # uncomment for the same background image on every slide

# reveal.js config; for more options like `parallaxBackgroundImage`, see https://revealjs.com/config/
mouseWheel: false
## native presentation size, cf. https://revealjs.com/presentation-size/
width: 1920
height: 1080

# additional reveal.js plug-in config
## progress bar of elapsed time
## see https://github.com/tkrkt/reveal.js-elapsed-time-bar#configurations
elapsedtimebar:
    enable: true
    allottedTime: 15 * 60 * 1000 # equals 15 min; unit is milliseconds
    progressBarHeight: 3 # unit is pixels
    barColor: 'rgb(200,0,0)'
    pausedBarColor: 'rgba(200,0,0,.6)'
## highlight the current mouse position with a spotlight
## see https://github.com/denniskniep/reveal.js-plugin-spotlight#configuration
spotlight:
    enable: true
    size: 60 # size of the spotlight
    lockPointerInsideCanvas: false # lock the mouse pointer inside the presentation
    togglePresentationModeKeyCode: 77 # [keyCode](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/keyCode) to toggle presentation mode; visit <https://keycode.info/> to easily determine keyCodes (77 = m); disabled when set to `false`
    toggleSpotlightOnMouseDown: true # toggle spotlight by holding down the mouse key
    spotlightOnKeyPressAndHold: false # [keyCode](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/keyCode) to toggle spotlight; visit <https://keycode.info/> to easily determine keyCodes; disabled when set to `false`
    spotlightCursor: 'none' # the cursor when spotlight is on; e.g. 'crosshair'
    presentingCursor: 'none' # the cursor when spotlight is off and in presentation mode; e.g. 'default'
    initialPresentationMode: true # start the presentation in presentation mode
    disablingUserSelect: true # disable text selection in presentation mode
    fadeInAndOut: 100 # transition duration; unit is milliseconds; disabled when set to `false`
    useAsPointer: false # use a pointer instead of a spotlight
    pointerColor: 'red' # only relevant if `useAsPointer: true`
## indicators to show the amount of slides in a vertical stack
## see https://github.com/Martinomagnifico/reveal.js-verticator#configuration
verticator:
    enable: true
    darktheme: true # set to `false` if you use a light theme
    color: '' # manually set the normal verticator color
    oppositecolor: '' # manually set the inverted verticator color
    skipuncounted: true # Omit drawing Verticator bullets for slides that have `data-visibility="uncounted"` set?
    clickable: true # Allow navigation to a slide by clicking on the corresponding Verticator bullet?
---

::: notes

notes before the first slide...

:::

# 1st main slide {data-transition="convex"}

## Set background color of individual slides {data-background-color="#fff"}

- You can set the background color of an individual slide by appending

    ```css
    {data-background-color="COLOR"}
    ```

    where `COLOR` must be a [CSS-compatible color specification](https://en.wikipedia.org/wiki/Web_colors#CSS_colors).

- It's strongly recommended to use only [hexadecimal color specifications](https://en.wikipedia.org/wiki/Web_colors#Hex_triplet) (e.g. `"#fff"` for white) because oherwise reveal.js' auto-inversion of the text color [won't work](https://github.com/Martinomagnifico/reveal.js-verticator#configuration) and you'd have to manually adapt it to the chosen background color.

- Try e.g. W3Schools' [HTML Color Picker](https://www.w3schools.com/colors/colors_picker.asp) to find and convert specific color values.

## Bracketed Spans

You can use [bracketed spans](https://pandoc.org/MANUAL.html#extension-bracketed_spans) to assign classes and attributes to text.

---

```md
[Text wrapped in a `<span>` with class `glowing`]{.glowing}
```

---

will result in:

---

[Text wrapped in a `<span>` with class `glowing`]{.glowing}

## Fenced Divs

You can also use [fenced divs](https://pandoc.org/MANUAL.html#extension-fenced_divs) to assign classes and attributes to whole blocks of content.

---

```md
::: {style="text-shadow: 1px 1px 5px red;"}

:::::: nonincremental

- A non-incremental list...
- ...

::::::

... followed by a paragraph...

| ...And | some | table |
| ---- | ----- | -------- |
| all | with | ugly |
| red | shadow | ✓ |

:::
```

---

will result in:

---

::: {style="text-shadow: 1px 1px 5px red;"}

:::::: nonincremental

- A non-incremental list...
- ...

::::::

... followed by a paragraph...

| ...And | some | table |
| ---- | ----- | -------- |
| all | with | ugly |
| red | shadow | ✓ |

:::

## Limitations

- Fenced divs must not encompass headers (`# h1`, `## h2` etc.)!
  - The classes/attributes defined for a fenced div will not apply to any headers in it.
  - And Enclosing headers by fenced divs breaks page layout.
  - Therefore you have to style headers separately using [bracketed spans](#bracketed-spans).

# 2nd main slide

## 1 {data-transition="convex" data-visibility="uncounted"}

- This slide has no corresponding Verticator bullet on the right ...

- ... because the attribute `data-visibility="uncounted"` was set.

- This means the currently highlighted bullet corresponds to the previous slide.

## 2 {data-transition="convex"}

- You can use shortcodes to add emojis:

- Writing `:alien:` will result in :alien:.

- Unfortunately not all of the [GitHub shortcodes](https://github.com/ikatyang/emoji-cheat-sheet#readme) seem to be supported.

## 3 {data-transition="convex"}

Babam!

# 3rd main slide

# Thanks! {data-background-image=assets/unsplash-_g1WdcKcV3w.jpg}

## Slides

`1n.pm/...`
