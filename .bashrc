export PATH="$HOME/.rbenv/bin:$HOME/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export MAVEN_OPTS="-XX:MaxPermSize=512m -Xmx1024M"
#export MAVEN_OPTS="-XX:MaxPermSize=512m -Xmx1024M -DsocksProxyHost=127.0.0.1 -DsocksProxyPort=9088"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

shopt -s histappend

# lax11 activemq web console
#ssh -f -L 8161:lax11.ecovate.com:8161 laxinf2.ecovate.com -N


alias mvn-debug="mvn -Dmaven.surefire.debug=\"-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8008 -Xnoagent -Djava.compiler=NONE\""


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

mvnstatus() {
  status=`mvn $@`
  echo $? > ~/.mvn_status
}
DEPLOY="$HOME/dev/deploy/deploy.sh faraday"
alias deploy-cc="$DEPLOY stop-tomcat-cc deploy-cc && rebel_sync && $DEPLOY start-tomcat-cc"
alias deploy-ccws="$DEPLOY stop-tomcat-cc deploy-ccws && rebel_sync && $DEPLOY start-tomcat-cc"
alias bounce="$DEPLOY stop-tomcat-cc && rebel_sync && $DEPLOY start-tomcat-cc"

# load bash completions, shouldn't be necessary once bash is updated
safe_source() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}
safe_source /usr/local/etc/bash_completion.d/git-completion.bash
safe_source /usr/local/etc/bash_completion.d/git-flow-completion.bash
safe_source /usr/local/etc/bash_completion.d/deploy_completion.bash
safe_source /usr/local/etc/bash_completion.d/vbox_completion.bash
safe_source /usr/local/etc/bash_completion.d/jrebel.bash
safe_source /usr/local/etc/bash_completion.d/git-prompt.sh
safe_source ~/dotfiles/deploy_aliases.sh

# Start ssh-agent if it is not already running and set up ssh-agent variables
if [ "x" == "x`ps -x -u ${USER} | egrep [s]sh-agent`" ] ; then 
  # no ssh-agent running"
  ssh-agent | sed -e "/^echo/d" > ${HOME}/.agent-env
  ssh-add ~/.ssh/id_rsa
fi
source ${HOME}/.agent-env

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
