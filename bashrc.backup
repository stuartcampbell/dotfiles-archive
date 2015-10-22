# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

ENABLE_POWERLINE=false
# Powerline
if [ -f `which powerline-daemon` ] && [ "$ENABLE_POWERLINE" = true ]; then
  echo "Powerline Enabled"
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  if [ -f /usr/share/powerline/bash/powerline.sh ]; then
    source /usr/share/powerline/bash/powerline.sh
  else
    # try and find it.
    powerline_path=$(python -c 'import pkgutil; print pkgutil.get_loader("powerline").filename' 2>/dev/null)
    if [ "$powerline_path" != "" ]; then
      source ${powerline_path}/bindings/bash/powerline.sh
    fi
  fi
fi

# Git prompt stuff
if [ -f ${HOME}/.bash-git-prompt/gitprompt.sh ]; then
GIT_PROMPT_ONLY_IN_REPO=1
. ${HOME}/.bash-git-prompt/gitprompt.sh
fi

# User specific aliases and functions
