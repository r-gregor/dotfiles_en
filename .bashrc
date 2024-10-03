# COMMAND PROMT SETTINGS
# ======================

# 0 --> display full path
# 3 --> displaj last three parts of path: '.../subdir3/sundir2/subdir1'
export PROMPT_DIRTRIM=0

# NON-COLOURED
# export PS1='\u@cygwin-en \w \$> '

### changed 20160510
# export PS1='$(printf "\n%s\n")\$> \u@cygwin-en [${PWD}]\n\$> '
# export PS1='$(printf "%s\n")\$> \[\033[01;32m\]\u@cygwin-en \[\033[01;34m\][${PWD}]\[\033[00m\] \n\$> '

# NEW BETTER (singleline) - 20201127:
# COLOURED
# export PS1='$(printf "%s")\[\033[01;33m\]\u\[\033[01;31m\]@\[\033[01;33m\]cygwin-en \[\033[01;36m\]\w\[\033[0m\] \$> '
# export PS1='$(printf "%s")\[\e[01;33m\]\u\[\e[01;31m\]@\[\e[01;33m\]cygwin-en \[\e[01;36m\]\w\[\e[0m\] \$> '

# new "NORD" color settings 20201203
# 02 = dim --> 022 = end of dim
# 38;5;[256 color code] = foreground
# 48;5;[256 color code] = background
# export PS1='$(printf "%s")\[\e[02;01;34m\]\u\[\e[022;01;34m\]@\[\e[02;01;34m\]cygwin-en \[\e[022;01;34m\]\w\[\e[0m\] \$> '
# export PS1='$(printf "%s")\[\e[02;01;38;5;75m\]\u\[\e[022;01;34m\]@\[\e[02;01;38;5;75m\]cygwin-en \[\e[022;01;34m\]\w\[\e[0m\] \$> '
# export PS1='$(printf "%s")\[\e[01;38;5;75m\]\u\[\e[01;38;5;36m\]@\[\e[01;38;5;75m\]cygwin-en \[\e[01;38;5;36m\]\w\[\e[0m\]\n\$> '

# new PS1 with git branch notation
parse_git_branch() {
	if [ -d ./.git ] || [ -d ./hooks ]; then 
		printf '\e[01;38;5;141m%s\e[01;33;1;75m' "git:"
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/$/ /'
	fi
}
# export PS1='$(printf "%s")\[\e[01;38;5;75m\]\u\[\e[01;38;5;36m\]@\[\e[01;38;5;75m\]cygwin-en \[\e[01;38;5;36m\]\w\n$(parse_git_branch)\[\e[0m\]\$> '

# 20240214
# check: symbols and prompts_20240214.txt in ~/majstaf_en/metsys_en/
export export PS1=$'\n\[\e[01;38;5;75m\][\h] \w\n$(parse_git_branch)\[\e[1;31m\]\u21AA \[\e[0m\] '


# -------------------------------------------------------------------------------
# external sources
# ================
source $HOME/majstaf_en/majrcs_en/bashrc_gredelonghi_en
source $HOME/majstaf_en/majrcs_en/aliases_gredelonghi_en
source $HOME/majstaf_en/majrcs_en/funclist_en
source $HOME/majstaf_en/majrcs_en/startfuncs_en
source $HOME/majstaf_en/majconfig_en/centralna_en.conf
source $HOME/.SCRTS_en

# -------------------------------------------------------------------------------

export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)

# export LESS_TERMCAP_mb=$'\e[1;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'

# -------------------------------------------------------------------------------
# eval "`dircolors -b $HOME/.dircolorsrc`"

export LANG=en_US.utf8
# export LANG=sl_SI.utf8


###  EN-proxy ...
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
eval "$(zoxide init bash)"

