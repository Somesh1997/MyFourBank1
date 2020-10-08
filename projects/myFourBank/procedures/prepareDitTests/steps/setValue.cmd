# previous step will get JIRA tickets and store values in some properties
ditTestReferenceValue=$(echo "$[/myPipelineRuntime/getDitIssuesResult/issueKeys]" | wc -w)
# -> calculate if needed the reference value
#
#ditTestReferenceValue=10

ectool setProperty "/myPipelineRuntime/DitTestsReferenceValue" ${ditTestReferenceValue}