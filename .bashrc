#######
# PS1
#######
# source ~/majstaf/majrcs/bashrc-prompt-nerd-gredelonghi-en
source ~/majstaf/majrcs/bashrc-prompt-bare-gredelonghi-en


##################
# external sources
##################
source $HOME/majstaf/majrcs/bashrc-gredelonghi-en
source $HOME/majstaf/majrcs/aliases-gredelonghi-en
source $HOME/majstaf/majrcs/funclist-en
source $HOME/majstaf/majconfig/centralna_en.conf
source $HOME/.SCRTS_en

# eval "`dircolors -b $HOME/.dircolorsrc`"

#######################
# colored man pages ...
#######################
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'



# export LANG=sl_SI.utf8
export LANG=en_US.utf8

##############
# EN-proxy ...
##############
prx_ip=10.91.8.21
export http_proxy=http://${prx_ip}:80/
export ftp_proxy=ftp://${prx_ip}:8021/
export https_proxy=http://${prx_ip}:80/

export HTTP_PROXY=http://${prx_ip}:80/
export FTP_PROXY=ftp://${prx_ip}:8021/
export HTTPS_PROXY=http://${prx_ip}:80/


### added TEST 20170117
alias lg='ls -ah --color' && function cg(){ cd "$@" && lg; }


# POWERLINE SETTINGS 20201125 -- no powerline font gliphs -- unable to instal powerline fonts (no admin rigths)
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/local/lib/python3.8/site-packages/powerline_status-2.8.1.dev9999_git.b_f401ee3106b027efabdbbd7b920868cefd8277c4_-py3.8.egg/powerline/bindings/bash/powerline.sh
#

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
	    PATH="$HOME/.local/bin:$PATH"
fi

# 20241003
# after installing zoxside (for cygwin only): curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
# eval "$(zoxide init bash)"

