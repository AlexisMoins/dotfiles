# Author: Alexis Moins
# Creation: 18 juin 2020

# Prevent zsh from appending a symbol at the end of each completion item to
# differenciate its type i.e. '/' for directories, '*' for symlinks...
setopt NOLISTTYPES

# Place le curseur à la fin du mot lors
# d'une complétion acceptée
setopt ALWAYSTOEND

# Automatically insert the first element of the completion menu
setopt MENUCOMPLETE

# Lance le menu de complétion depuis la position du curseur, même s'il est à l'intérieur d'un mot
setopt COMPLETEINWORD

# Affiche un menu de séléction pour choisir avec quoi compléter
zstyle ':completion:*' menu select

# Utilise les couleurs de LS_COLORS pour afficher le menu de séléction
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 'ma=1;32;40'

# Complétion insensible aux majuscules / minuscules
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Display command description in grey
zstyle ':completion:*:options' list-colors '=(#b)*(-- *)=0=1;30'

#
zstyle ':completion:*:*:kill' list-colors '=(#b) #([0-9]#)*( *[a-z])*=37=31=1;30'

# Autorise seulement 2 erreurs pour la complétion approximative
zstyle ':completion:*:approximate:*' max-errors 2

# Utilise la completion approximative, une fois que la complétion normale a échouée
zstyle ':completion:*' completer _extensions _complete _approximate

# Complétion des chemins partiels
zstyle ':completion:*' list-suffixes

#
zstyle ':completion:*' expand prefix suffix

# Utilise le cache pour la complétion
zstyle ':completion:*' use-cache on

# Chemin vers le dossier .compcache
zstyle ':completion:*' cache-path "${ZDOTDIR}/cache/zcompcache"

autoload -Uz compinit
# Location of the completion dump file
_dumpfile="${ZDOTDIR}/cache/zcompdump"

# Initialize the completions system and check for cache once a day
if [[ -n "${_dumpfile}"(#qN.mh+24) ]]; then
    # If .zcompdump is older than 24 hours, check for changes (-i)
    compinit -i -d "${_dumpfile}"
    touch "${_dumpfile}"
else
    # Otherwisem juste read the file (-d) without checking (-C)
    compinit -C -d "${_dumpfile}"
fi