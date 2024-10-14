# COMMAND PROMT SETTINGS
# ======================

# 0 --> display full path
# 3 --> displaj last three parts of path: '.../subdir3/sundir2/subdir1'
export PROMPT_DIRTRIM=0

parse_git_branch() {
	if [ -d ./.git ] || [ -d ./hooks ]; then 
		# printf '\e[01;38;5;141m%s\e[01;33;1;75m' "git:"
		echo -en "\e[01;38;5;141mgit:\e[01;33;1;75m"
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/$/ /'
	fi
}

date_stamp() {
	echo -e "\e[38;5;244m[$(date +"%Y-%m-%d")] [$(date +%T)]\e[0m"
}

# 20240214
# check: symbols and prompts_20240214.txt in ~/majstaf_en/metsys_en/
prompt_left() {
	echo -e "\[\e[01;38;5;75m\][\h] \w"
}

prompt_next() {
	echo -e  "\[\e[1;31m\]\u21AA \[\e[0m\]"
}

prompt() {
	PS1=$(printf "\n%*s\r%s\n%s%s " "$(($(tput cols) + 14))" "$(date_stamp)" "$(prompt_left)" "$(parse_git_branch)" "$(prompt_next)")
}

PROMPT_COMMAND=prompt



# ================
# external sources
# ================
source $HOME/majstaf_en/majrcs_en/bashrc_gredelonghi_en
source $HOME/majstaf_en/majrcs_en/aliases_gredelonghi_en
source $HOME/majstaf_en/majrcs_en/funclist_en
source $HOME/majstaf_en/majrcs_en/startfuncs_en
source $HOME/majstaf_en/majconfig_en/centralna_en.conf
source $HOME/.SCRTS_en

# eval "`dircolors -b $HOME/.dircolorsrc`"

# export LANG=sl_SI.utf8
export LANG=en_US.utf8


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
# eval "$(zoxide init bash)"

