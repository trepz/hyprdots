if status is-interactive 
    starship init fish | source
    alias n="nvim"
    if type -q nvm
        nvm use lts
    end
end
