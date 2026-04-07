function vf
    set file (fd --hidden --no-ignore | fzf --preview 'bat --style=numbers --color=always --line-range=:500 {}' --preview-window=right:60%)
    if test -n "$file"
        vim $file
    end
end

