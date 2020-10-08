export JAVA_HOME=/opt/jdk1.8.0_181/
export PATH=$PATH:/opt/jdk1.8.0_181/bin
export M2_HOME=/usr/local/apache-maven-3.3.3/
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
cd $[baseName] 
mvn clean test

testsuite=$(sed -n '2p' target/cucumber-junit-report.xml | sed 's/"//g'|tr -s [:space:])
#total test
ectool setProperty "/myPipelineRuntime/actualTotalNumberTestDit" $(echo $testsuite | cut -d ' ' -f 5 |sed -e 's/\(.*\)=\(.*\)/\2/g')
#skip test

ectool setProperty "/myPipelineRuntime/actualSkipNumberTestDit" $(echo $testsuite | cut -d ' ' -f 4 |sed -e 's/\(.*\)=\(.*\)/\2/g')
#failures test
ectool setProperty "/myPipelineRuntime/actualFailuresNumberTestDit" $(echo $testsuite | cut -d ' ' -f 2 |sed -e 's/\(.*\)=\(.*\)/\2/g')