export PATH="$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$PATH"

safe_source() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}

sources=~/.homesick/repos/dotfiles/source.d/*
for s in $sources; do source $s; done

# local overrides should be sourced last
safe_source "$HOME/.bash_local"

