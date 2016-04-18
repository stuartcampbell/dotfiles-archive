[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

# Completions
fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# Antigen - A zsh plugin manager
source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# bundles from oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle rsync
antigen bundle python
antigen bundle virtualenvwrapper
antigen bundle command-not-found
antigen bundle history
antigen bundle tmux
antigen bundle kennethreitz/autoenv

# Set my theme
#antigen theme sorin
antigen theme zenorocha/dracula-theme zsh/dracula
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure
#antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that I'm finished
antigen apply


