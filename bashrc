# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# Powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi


# Git prompt stuff
if [ -f ${HOME}/.bash-git-prompt/gitprompt.sh ]; then
GIT_PROMPT_ONLY_IN_REPO=1
. ${HOME}/.bash-git-prompt/gitprompt.sh
fi

# User specific aliases and functions
