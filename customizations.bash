SELF=$(basename $BASH_SOURCE)

# ALIASES

alias my='/usr/bin/git --git-dir=${HOME}/.myconfig.git/ --work-tree=${HOME}'
alias l='ls -AGhlF'
alias odrive='python /usr/local/opt/odrive.py'
alias aliases='vim ${BASH_IT}/custom/${SELF}'
alias customize='aliases'
alias functions='aliases'
alias kh='vim ${HOME}/.ssh/known_hosts'
alias cd..='cd ..'
alias df='df -H'



# FUNCTIONS

dmg() {
    if [[ -d $1 ]] && [[ -d $2 ]]; then
        VOL=$(basename $1)
        hdiutil create -fs HFS+ -volname $VOL -srcfolder $1 $2/$VOL
    else
        echo "Usage: dmg <source folder> <output folder>"
    fi
}


ff() {
    if [[ -z $1 ]]; then
        echo "Please specify a search term. use * for wildcards."
        echo "Example: ff *.txt"
    else
        find . -iname $1 2>/dev/null
    fi
}


psfind() {
    ps aux | grep -v grep | grep -i -e VSZ -e $1
}
