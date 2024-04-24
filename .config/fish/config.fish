if status is-interactive
  # Commands to run in interactive sessions can go here
end

fish_theme tokyonight > /dev/null
set fish_greeting

zoxide init fish | source
starship init fish | source
source "/home/mytyl/.local/share/share/cargo/env.fish"

# https://superuser.com/a/944589
# or get ohmyfish bang-bang
function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end
