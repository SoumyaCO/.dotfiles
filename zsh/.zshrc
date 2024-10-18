# PATHS --------------------------------------------------------
# Homebrew
export PATH=/opt/homebrew/bin:$PATH
# Starship
eval "$(starship init zsh)"
# Volta
export PATH="$VOLTA_HOME/bin:$PATH"
# fzf
source <(fzf --zsh)
# zoxide
eval "$(zoxide init zsh)"

# compinit
autoload -Uz compinit
compinit

# add go path
export PATH=$PATH:$HOME/go/bin

# CONFIGURATIONS -----------------------------------------------
# fzf configs
# Set up fzf key bindings and fuzzy completion
source ~/.config/fzf/.fzf.zsh

# ALIASES -------------------------------------------------------
alias ls="eza"
alias ll="eza --long --header --icons"
alias la="eza -a --long --header --icons"

# lazygit
alias lgit="lazygit"

# lazydocker
alias ldoc="lazydocker"

# zoxide
alias cd="z"

# Notes and Todos
alias notes="cd ~/Documents/Obsidian/ObsidianNotes/ && nvim ."
alias todo="cat ~/notes/todo-instant.md"
alias e-todo="nvim ~/notes/todo-instant.md"

# editing shell
alias edit-shell="nvim ~/.zshrc"
# reloadind shell
alias reload-shell="source ~/.zshrc"

# STARTUP ------------------------------------------------------
# My Name
figlet -c -f Graffiti SoumyaCO | lolcat
todo
