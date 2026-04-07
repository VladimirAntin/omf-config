function fzf
    fd --hidden --no-ignore | command fzf --preview 'bat --style=numbers --color=always --line-range=:500 {}' --preview-window=right:60% $argv
end

