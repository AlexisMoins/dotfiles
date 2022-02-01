# Configuration of the environment
# Author: Alexis Moins
# Creation: 18 juin 2020

echo "📖 Sourcing .zshenv"

# Prevents 'Terminal.app' from saving and restoring sessions
export SHELL_SESSIONS_DISABLE=1

# Prevent the python venv module from displaying virtual env in the prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Location of the dotfiles
export DOTFILES="${HOME}/.dotfiles"

# Path to the zsh config directory
export ZDOTDIR="${HOME}/.zsh"

# Path to the vim config directory
export VIMDOTDIR="${HOME}/.vim" 

# Location of the file containing the tmux session
export SESSIONFILE="${HOME}/.tmux-session"

# Uses vim as the default man pager
export MANPAGER="vim -M +MANPAGER -"

 #Defines colors used by the macOS ls command (BSD)
export LSCOLORS="gxfxDxCxbxEgEdxbxgxcxd" 

# LSCOLORS equivalent used by zsh and other commands
export LS_COLORS="di=36:ln=35:ex=31:su=41:sg=46:tw=42:ow=43"
