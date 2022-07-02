
function fish_user_key_bindings
    # Activate fzf default key bindings

    if not test -f ~/.config/fish/functions/fzf_key_bindings.fish
        # Where brew is installing packages
        set --local prefix (brew --prefix)
        cp $prefix/opt/fzf/shell/key-bindings.fish ~/.config/fish/functions/fzf_key_bindings.fish
    end

    fzf_key_bindings

    # Remapping fzf default bindings
    bind \ch fzf-history-widget
    bind --mode insert \ch fzf-history-widget

    bind --erase \cr
    bind --erase --mode insert \cr

    bind \cg fzf-cd-widget
    bind --mode insert \cg fzf-cd-widget

    bind --erase \ec
    bind --erase --mode insert \ec

    # Bind ^Z to resume background process
    bind \cz fg\r
    bind --mode insert \cz fg\r

    # Bind ^R to restoring a tmux session
    bind \cr tmux-restore
    bind --mode insert \cr tmux-restore

    bind --erase --preset \cf
    bind \ck forward-char
    bind --mode insert \ck forward-char
end
