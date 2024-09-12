# PATHS --------------------------------------------------------
# Homebrew
export PATH=/opt/homebrew/bin:$PATH
# Starship
eval "$(starship init zsh)"
# Volta
export PATH="$VOLTA_HOME/bin:$PATH"
# fzf
eval "$(fzf --zsh)"

# ALIASES -------------------------------------------------------
alias ls="eza"
alias ll="eza --long --header"
alias la="eza -a"
alias lal="eza --long --all --header"

# starship 
alias e-star="nvim ~/.config/starship.toml"

# lazygit
alias lgit="lazygit"
# Notes and Todos
alias notes="cd ~/Documents/Obsidian/Obsidian\ Notes/ && nvim ."
alias todo="figlet -f slant TODO && bat ~/notes/todo-instant.md"
alias e-todo="nvim ~/notes/todo-instant.md"

# fzf -- find files with preview
alias fp="fzf --preview 'bat {} --color=always'"
# editing shell
alias edit-shell="nvim ~/.zshrc"
# reloadind shell
alias reload-shell="source ~/.zshrc"

# STARTUP ------------------------------------------------------
# My Name
figlet -f Graffiti SoumyaCO | lolcat
