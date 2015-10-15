JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
PATH=.:$PATH:$JAVA_HOME/bin
export JAVA_HOME
export CLASSPATH
export PATH


export MATLAB=/Applications/MATLAB/MATLAB_Compiler_Runtime/v84
export PATH=$MATLAB/bin:$PATH
export DYLD_LIBRARY_PATH=$MATLAB/runtime/maci64:$MATLAB/sys/os/maci64:$MATLAB/bin/maci64



java -jar MTGI_mac.jar
