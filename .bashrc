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


# flutter
# export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

# Pi
export PATH="/home/dore/.pi/agent/bin:$PATH"

# ---- 系统代理（clash @ 192.168.0.103:7890），2026-11-27 ----
# 与 ~/.config/environment.d/95-proxy.conf 保持一致；这里负责 tty / ssh 登录的 shell
# 以及从 shell 启动的 git、curl、yay 等。no_proxy 必须含内网段与代理机自身，否则会环回。
export http_proxy='http://192.168.0.103:7890'
export https_proxy="$http_proxy" ftp_proxy="$http_proxy"
export all_proxy='socks5h://192.168.0.103:7890'
export no_proxy='localhost,127.0.0.1,::1,192.168.0.0/16,192.168.0.103,10.0.0.0/8,172.16.0.0/12,.local,.lan'
export HTTP_PROXY="$http_proxy" HTTPS_PROXY="$http_proxy" FTP_PROXY="$http_proxy"
export ALL_PROXY="$all_proxy" NO_PROXY="$no_proxy"

