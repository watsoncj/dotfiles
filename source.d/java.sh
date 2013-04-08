export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export MAVEN_OPTS="-XX:MaxPermSize=512m -Xmx1024M"
#export MAVEN_OPTS="-XX:MaxPermSize=512m -Xmx1024M -DsocksProxyHost=127.0.0.1 -DsocksProxyPort=9088"
alias mvn-debug="mvn -Dmaven.surefire.debug=\"-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8008 -Xnoagent -Djava.compiler=NONE\""
