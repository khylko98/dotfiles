# Oh My Zsh Setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User Configuration
source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/aliases.zsh

# Path Additions
export PATH=$PATH:$HOME/.python3.14/bin
export PATH=$PATH:$HOME/.npm-global/bin

# Tools Initialization
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
eval "$(starship init zsh)"
