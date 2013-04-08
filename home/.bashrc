export PATH="/usr/local/Cellar/postgresql//9.2.3/bin:\
/usr/local/share/npm/bin:\
/usr/local/Cellar/bash/4.2.39/bin/bash:$HOME/.rbenv/bin:$HOME/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH"



shopt -s histappend

# lax11 activemq web console
#ssh -f -L 8161:lax11.ecovate.com:8161 laxinf2.ecovate.com -N


safe_source() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}

# load bash completions, shouldn't be necessary once bash is updated
safe_source /usr/local/etc/bash_completion.d/git-completion.bash
safe_source /usr/local/etc/bash_completion.d/git-flow-completion.bash
safe_source /usr/local/etc/bash_completion.d/deploy_completion.bash
safe_source /usr/local/etc/bash_completion.d/vbox_completion.bash
safe_source /usr/local/etc/bash_completion.d/jrebel.bash
safe_source /usr/local/etc/bash_completion.d/git-prompt.sh

scriptdir=`dirname $(readlink $BASH_SOURCE)`
source $scriptdir/source.d/*

# local overrides should be sourced last
safe_source "$HOME/.bash_local"

#D=~/dotfiles
#safe_source $D/deploy_aliases.sh
#safe_source $D/status_alias.sh
#safe_source $D/hue_init.sh
#safe_source $D/start_agent.sh
#safe_source $D/rvm.sh
#safe_source $D/java.sh
#safe_source ~/dev/z/z.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

alias homesick="$HOME/.homeshick"
