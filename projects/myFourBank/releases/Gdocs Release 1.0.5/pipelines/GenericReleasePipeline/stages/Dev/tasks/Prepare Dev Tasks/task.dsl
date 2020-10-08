
task 'Prepare Dev Tasks', {
  description = ''
  actualParameter = [
    'iqAnalysisRepo': '/tmp/flow/iqAnalysisRepo',
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
  subprocedure = 'prepareDevTasks'
  subproject = 'myFourBank'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
