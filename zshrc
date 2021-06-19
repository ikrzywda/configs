#setopt PROMPT_SUBST
#PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '
#
setopt PROMPT_SUBST
PROMPT='%(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PATH=$PATH:/usr/bin/arduino-cli
export PATH=$PATH:/usr/bin/emsdk
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/coursier/bin

alias ls="exa -lhg --git --group-directories-first"
