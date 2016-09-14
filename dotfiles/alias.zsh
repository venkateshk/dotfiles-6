# alias ls="ls -GFlsh"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias c="clear"
alias less='less -FSRXc'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias oldvim="vim"
alias vim="nvim"

alias df='df -aH .'
alias pserve='python -m SimpleHTTPServer 5000'

alias dotf='cd $DOTDIR'
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ei='vim ~/.irssi/config'
alias ez='vim ~/.zshrc'
alias ea='vim $DOTDIR/alias.zsh'
alias ew='cd /projects/'
alias sz='source ~/.zshrc'

alias parcel='open /Applications/Parcel.app'

alias weather='ansiweather -l 5392171'

# alias ssh="assh wrapper ssh"

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -print0 | xargs -0 rm'

