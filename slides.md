---
title: SLIDESHOW
lang: en-US # change e.g. to 'de-CH' for German (Switzerland)
---

::: notes

notes before the first slide...

:::

# 1st main slide {data-transition="convex"}

## [Bracketed Spans]{.inverted} {data-background-color=white}

::: {.inverted}

You can use [bracketed spans](https://pandoc.org/MANUAL.html#extension-bracketed_spans) to assign classes and attributes to text.

:::

## {data-background-color=white}

::: {.inverted}

```md
[Text wrapped in a `<span>` with class `inverted`]{.inverted}
```

:::

## {data-background-color=white}

[will result in:]{.inverted}

## {data-background-color=white}

[Text wrapped in a `<span>` with class `inverted`]{.inverted}

---

## [Fenced Divs]{.inverted} {data-background-color=white}

::: {.inverted}

You can also use [fenced divs](https://pandoc.org/MANUAL.html#extension-fenced_divs) to assign classes and attributes to whole blocks of content.

:::

## {data-background-color=white}

::: {.inverted}

```md
::: {.inverted style="text-shadow: 1px 1px 2px red;"}

::: nonincremental

- A non-incremental inverted list...
- ...

:::

... followed by an inverted paragraph...

| ...And some | Table | inverted |
| ---- | ----- | -------- |
| all | with | ugly |
| red | shadow | ✓ |

:::
```

:::

## {data-background-color=white}

[will result in:]{.inverted}

## {data-background-color=white}

::: {.inverted style="text-shadow: 1px 1px 2px red;"}

::: nonincremental

- A non-incremental inverted list...
- ...

:::

... followed by an inverted paragraph...

| ...And some | Table | inverted |
| ---- | ----- | -------- |
| all | with | ugly |
| red | shadow | ✓ |

:::

## Limitations

Fenced divs cannot encompass headers (`#`)!

- The classes/attributes defined for a fenced div will simply not apply to any headers in it.

- Therefore you have to style headers separately using [bracketed spans](#bracketed-spans).

---

# 2nd main slide

## 1 {data-transition="convex"}

- bla
- bli
- blup

## 2 {data-transition="convex"}

- You can use shortcodes to add emojis.

- writing `:alien:` will result in :alien: 

- Unfortunately not all of the [GitHub shortcodes](https://github.com/ikatyang/emoji-cheat-sheet#readme) seem to be supported.

## 3 {data-transition="convex"}

Babam!

---

# 3rd main slide

# Thanks! {data-background-image=assets/photo-1473625247510-8ceb1760943f.jpg}

## Slides

`1n.pm/...`
