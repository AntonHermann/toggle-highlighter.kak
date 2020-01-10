# toggle-highlighter.kak

`toggle-highlighter` for [Kakoune].

## Installation

Add [`toggle-highlighter.kak`](rc/toggle-highlighter.kak) to your autoload or source it manually.

## Usage

Same usage as [`add-highlighter`].

## Configuration

``` kak
map global user l ': toggle-highlighter global/ number-lines<ret>' -docstring 'Toggle number-lines highlighter'
map global user w ': toggle-highlighter global/ wrap -word<ret>' -docstring 'Toggle wrap highlighter'
```

[Kakoune]: https://kakoune.org
[`add-highlighter`]: https://github.com/mawww/kakoune/blob/master/doc/pages/highlighters.asciidoc
