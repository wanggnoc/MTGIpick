
export JAVA_HOME=$HOME/jdk1.7.0_79
export JRE_HOME=$HOME/jdk1.7.0_79/jre
export JAVA_BIN=$HOME/jdk1.7.0_79/bin
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME JAVA_BIN PATH CLASSPATH


export MCR_HOME=$HOME/matlab
LD_LIBRARY_PATH=$HOME/matlab/v84/bin/glnxa64
XAPPLRESDIR=$HOME/matlab/v84/X11/app-defaults
LD_PATH=$HOME/matlab/v84/runtime/glnxa64
LD_LIBRARY_PATH=$LD_PATH:$LD_LIBRARY_PATH
export  LD_LIBRARY_PATH
export  XAPPLRESDIR


java -jar MTGI_linux.jar