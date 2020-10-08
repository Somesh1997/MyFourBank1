
task 'Run DIT Tests', {
  description = ''
  actualParameter = [
    'baseName': 'cape-auth-service-feature-tests',
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
  subprocedure = 'ditTestAutomation'
  subproject = 'myFourBank'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
