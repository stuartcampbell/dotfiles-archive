# Allow local customizations in the ~/.zsh/pre-zshrc-local file
if [ -f ~/.zsh/pre-zshrc-local ]; then
    source ~/.zsh/pre-zshrc-local
fi



# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
