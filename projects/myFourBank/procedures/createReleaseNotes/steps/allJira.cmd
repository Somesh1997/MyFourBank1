relNotesFileName=artifacts/$(ectool getProperty "/myJob/relNotesFile")

echo "----------------------------------------------------------" >> ${relNotesFileName}
echo "------------------ JIRA information ----------------------" >> ${relNotesFileName}
echo "----------------------------------------------------------" >> ${relNotesFileName}
set "$[/myPipelineRuntime/getIssuesResult/issueKeys]"
while test "x${1}" != "x" ;do
echo ${1} >> ${relNotesFileName}
# create additional (dynamic step) to output information on THAT Jira ticket"
shift
done
echo "----------------------------------------------------------" >> ${relNotesFileName}
echo >> ${relNotesFileName}

