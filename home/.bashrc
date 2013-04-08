export PATH="/usr/local/Cellar/postgresql//9.2.3/bin:\
/usr/local/share/npm/bin:\
/usr/local/Cellar/bash/4.2.39/bin/bash:\
$HOME/.rbenv/bin:\
$HOME/bin:\
/Applications/Postgres.app/Contents/MacOS/bin:\
$PATH"



shopt -s histappend

safe_source() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}

sources=~/.homesick/repos/dotfiles/source.d/*
for s in $sources; do source $s; done

# local overrides should be sourced last
safe_source "$HOME/.bash_local"

