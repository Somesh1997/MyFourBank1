# Parse the Jenkins output to get Sonar results
myFile="$[/myComponent/componentName]/report-task.txt"
pwd

. ./${myFile}

ectool setProperty "/myJob/$[/myComponent/componentName]/sonarQubeProjectKey" ${projectKey}
ectool setProperty "/myJob/$[/myComponent/componentName]/sonarQubeTaskId" ${ceTaskId}

