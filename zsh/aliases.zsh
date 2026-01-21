# Short Aliases
alias t=tmux
alias z=zed
alias h=helix
alias runhttp='python3.14 -m http.server'

# System Utilities Improvements
alias tree='tree --dirsfirst -C'
alias ls='ls --color=auto --group-directories-first'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

# Password generator
pwgen() {
  local len=${1:-20}
  LC_ALL=C tr -dc 'A-Za-z0-9@#%^&*()_+=-{}[]:;<>,.?/' < /dev/urandom | head -c "$len" | xargs echo
}
