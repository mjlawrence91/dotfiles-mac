# Map ls command to something more useful
#alias ls "ls -Ghl"
#alias lsa "ls -AGhl"
alias ls  "gls -hl --color=auto --group-directories-first"
alias lsa "gls -hlA --color=auto --group-directories-first"

# Git commands
alias ga  "git add --all"
alias gc  "git commit -m"
alias gd  "git diff HEAD"
alias gch "git checkout"
alias gp  "git push"
alias gpl "git pull"
alias gr  "git rm --cached"
alias gs  "git status"

# NPM commands
alias ni   "npm install"
alias nig  "npm install -g"
alias nis  "npm install --save"
alias nid  "npm install --save-dev"
alias np   "npm prune"
#alias nr  "npm run $argv[1]"
alias nrt  "npm run test"
alias nrwt "npm run watch:test"
alias nrs  "npm run start"

function nr
    npm run $argv[1]
end

# SSH commands
alias ssh_arch			"ssh matt@matt-pc"
alias ssh_arch_tx		"ssh matt@matt-pc -L 8888:localhost:6691"
alias ssh_arch_tx_kg	"ssh matt@matt-pc -L 9999:localhost:6692"
alias ex_ssh_arch		"ssh matt@matt.pc"
alias ex_ssh_arch_tx	"ssh matt@matt.pc -L 8888:localhost:6691"
alias ex_ssh_arch_tx_kg	"ssh matt@matt.pc -L 9999:localhost:6692"

# Aliases to common directories
alias drop "cd ~/Dropbox"
alias dev  "cd ~/Documents/Development"
alias dev. "cd ~/Documents/Development/.files"
alias dls  "cd ~/Downloads"

# Aliases to edit config files
set DOTFILES 		"~/Documents/Development/.files"
alias v				"nvim"
alias vinit			"cd $DOTFILES; and v .config/nvim/init.vim"
alias vbundle		"cd $DOTFILES; and v .config/nvim/bundle.vim"
alias zshrc			"v $DOTFILES/.zshrc; and source ~/.zshrc"
alias zaliases		"v $DOTFILES/.aliases; and source ~/.zshrc"
alias fishconfig	"v $DOTFILES/.config/fish/config.fish; and source ~/.config/fish/config.fish"
alias fishaliases	"v $DOTFILES/.config/fish/aliases.fish; and source ~/.config/fish/aliases.fish"
alias known_hosts	"v ~/.ssh/known_hosts"

# Aliases to edit system config files (root access)
alias hosts "sudo v /private/etc/hosts"
