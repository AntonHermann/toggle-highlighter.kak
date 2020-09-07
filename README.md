# toggle-highlighter.kak

`toggle-highlighter` for [Kakoune].

## Dependencies

- [prelude.kak]

[prelude.kak]: https://github.com/alexherbo2/prelude.kak

## Installation

Add [`toggle-highlighter.kak`](rc/toggle-highlighter.kak) to your autoload or source it manually.

``` kak
require-module toggle-highlighter
```

## Usage

Same usage as [`add-highlighter`].

## Configuration

``` kak
map global user -docstring 'Toggle number-lines highlighter' l ': toggle-highlighter global/number-lines number-lines<ret>'
map global user -docstring 'Toggle wrap highlighter' w ': toggle-highlighter global/wrap wrap -word<ret>'
```

[Kakoune]: https://kakoune.org
[`add-highlighter`]: https://github.com/mawww/kakoune/blob/master/doc/pages/highlighters.asciidoc
