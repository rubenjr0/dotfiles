if status is-interactive
    # Commands to run in interactive sessions can go here

    alias ls="eza --group-directories-first"
    alias lt="eza -T --group-directories-first"
    alias ff="fastfetch --logo ghostfreak"

    zoxide init fish | source
    starship init fish | source
    direnv hook fish | source
end

set -gx WASMTIME_HOME "$HOME/.wasmtime"

string match -r ".wasmtime" "$PATH" >/dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH
