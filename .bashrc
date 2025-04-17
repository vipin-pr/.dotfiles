export PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '
export EDITOR='vim'
set -o emacs
#set -o vi
#bind -m vi-insert '"jj": vi-movement-mode'

#Alias
alias hc='history | grep -i'
alias cls='clear'
alias grep='grep --color=always'
alias cp='cp -i'
alias rm='rm -i'

if [ -f ~/.inputrc ]; then
    source ~/.inputrc
fi

# List SSH Host Names in ~/.ssh/config
alias list_hosts="grep '^Host ' ~/.ssh/config | sed 's/^Host //' | tr ' ' '\n' | grep -v '^\*$' | sort -u"

# Generate a strong password
genpass() {
    tr -dc A-Za-z0-9 < /dev/urandom | head -c 16; echo
}
