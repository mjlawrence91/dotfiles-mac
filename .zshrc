source /usr/local/Cellar/antigen/1/share/antigen.zsh

antigen use oh-my-zsh
antigen apply

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

source ~/.aliases.zsh

export EDITOR=nvim

antigen theme https://github.com/halfo/lambda-mod-zsh-theme lambda-mod
