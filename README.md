git clone --bare https://github.com/thealanbermay/myconfig.git $HOME/.myconfig.git
function my {
   /usr/bin/git --git-dir=$HOME/.myconfig.git/ --work-tree=$HOME $@
}
mkdir -p .config-backup
my checkout
if [ $? = 0 ]; then
  echo "Checked out myconfig.";
  else
    echo "Backing up pre-existing dot files.";
    my checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
my checkout
my config status.showUntrackedFiles no
