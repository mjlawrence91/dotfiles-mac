# Map ls command to something more useful
alias ls="gls -hl --color=auto --group-directories-first"
alias lsa="gls -hlA --color=auto --group-directories-first"

# Git commands
alias ga="git add --all"
alias gc="git commit -m"
alias gd="git diff HEAD"
alias gch="git checkout"
alias gcl="git clone $1 $2"
alias gp="git push"
alias gpl="git pull"
alias gr="git rm --cached"
alias gs="git status"

# NPM commands
alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="npm install --global"
alias nis="npm install --save"
alias np="npm prune"
alias nr="npm run $1"
alias nrt="npm run test"
alias nrwt="npm run watch:test"
alias nrs="npm run start"

# SSH commands
alias ssh_arch="ssh matt@matt-pc"
alias ssh_arch_tx="ssh matt@matt-pc -L 8888:localhost:6691"
alias ssh_arch_tx_kg="ssh matt@matt-pc -L 9999:localhost:6692"
alias ex_ssh_arch="ssh matt@matt.pc"
alias ex_ssh_arch_tx="ssh matt@matt.pc -L 8888:localhost:6691"
alias ex_ssh_arch_tx_kg="ssh matt@matt.pc -L 9999:localhost:6692"

# Aliases to common directories
alias drop="cd ~/Dropbox"
alias dev="cd ~/Documents/Development"
alias dls="cd ~/Downloads"

# Aliases to edit config files
DOTFILES="~/Documents/Development/.files"
alias v="nvim"
alias vinit="cd $DOTFILES && v .config/nvim/init.vim"
alias vbundle="cd $DOTFILES && v .config/nvim/bundle.vim"
alias zshrc="v $DOTFILES/.zshrc && source $DOTFILES/.zshrc"
alias zaliases="v $DOTFILES/.aliases && source $DOTFILES/.zshrc"
alias fishconfig="v $DOTFILES/.config/fish/config.fish"
alias known_hosts="v .ssh/known_hosts"

# Aliases to edit system config files (root access)
alias hosts="sudo v /private/etc/hosts"
