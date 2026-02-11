#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR='nvim'

# fix fcitx problem
# export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

export XDG_CONFIG_HOME=$HOME/.config
. "$HOME/.cargo/env"


# flutter
# export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

if [ -z "${DISPLAY}" ] && [[ $(tty) = /dev/tty1 ]]; then
exec niri-session
exit
fi

eval "$(starship init bash)"
