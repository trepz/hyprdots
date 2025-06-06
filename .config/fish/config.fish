if status is-interactive 
    starship init fish | source
    alias n="nvim"
    if type -q nvm
        nvm use lts
    end
end


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/trepz/.opam/opam-init/init.fish' && source '/home/trepz/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
