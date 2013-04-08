# Start ssh-agent if it is not already running and set up ssh-agent variables
if [ "x" == "x`ps -x -u ${USER} | egrep [s]sh-agent`" ] ; then 
  # no ssh-agent running"
  ssh-agent | sed -e "/^echo/d" > ${HOME}/.agent-env
  ssh-add ~/.ssh/id_rsa
fi
safe_source ~/.agent-env
