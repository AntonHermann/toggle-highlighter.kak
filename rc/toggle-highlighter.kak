provide-module toggle-highlighter %{
  define-command toggle-highlighter -params 2.. -docstring 'toggle-highlighter <path>/[name] <type> [type-params…]' %{
    try %{
      add-highlighter %arg{@}
      echo -markup "{green}add-highlighter %arg{@}{Default}"
    } catch %{
      # add-highlighter <path>/[name] <type> [type-params…]
      # If [name] is empty, it will be auto-generated.
      # https://github.com/mawww/kakoune/blob/master/src/commands.cc
      evaluate-commands %sh{
        auto_name() {
          printf '%s' "$*" | sed '
            s_/_<slash>_g
            s/ /_/g
          '
        }
        path=$1
        case "$path" in
          */)
            auto_name=$(shift; auto_name "$@")
            path=${path}${auto_name}
            ;;
        esac
        printf "
          remove-highlighter %s
          echo -markup '{red}remove-highlighter %s{Default}'
        " "$path" "$path"
      }
    }
  }
}
