SELF=$(basename $BASH_SOURCE)

# ALIASES

alias my='/usr/bin/git --git-dir=${HOME}/.myconfig.git/ --work-tree=${HOME}'
alias l='ls -AGhlF'
alias odrive='python /usr/local/opt/odrive.py'
alias aliases='vim ${BASH_IT}/custom/${SELF}'
alias customize='aliases'
alias functions='aliases'
alias kh='vim ${HOME}/.ssh/known_hosts'


# FUNCTIONS

dmg() {
  if [[ -d $1 ]] && [[ -d $2 ]]; then
    VOL=$(basename $1)
    hdiutil create -fs HFS+ -volname $VOL -srcfolder $1 $2/$VOL
  else
    echo "Usage: dmg <source folder> <output folder>"
  fi
}
