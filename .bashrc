export PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '
export EDITOR='vim'

#Alias
alias hc='history | grep -i'
alias cls='clear'
alias grep='grep --color=always'
alias cp='cp -i'
alias rm='rm -i'

if [ -f ~/.inputrc ]; then
    source ~/.inputrc
fi

# Generate a strong password
genpass() {
    tr -dc A-Za-z0-9 < /dev/urandom | head -c 16; echo
}
