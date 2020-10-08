
task 'Get Jira Tickets', {
  description = ''
  actualParameter = [
    'config': 'adf-jira',
    'createLink': '1',
    'jql': 'project = SPCOEPTL AND "Epic Link" = SPCOEPTL-187',
    'resultFormat': 'propertySheet',
    'resultProperty': '/myPipelineRuntime/getIssuesResult',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-JIRA'
  subprocedure = 'GetIssues'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
