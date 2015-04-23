# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Git prompt stuff
if [ -f ${HOME}/.bash-git-prompt/gitprompt.sh ]; then
GIT_PROMPT_ONLY_IN_REPO=1
. ${HOME}/.bash-git-prompt/gitprompt.sh
fi
# User specific aliases and functions
