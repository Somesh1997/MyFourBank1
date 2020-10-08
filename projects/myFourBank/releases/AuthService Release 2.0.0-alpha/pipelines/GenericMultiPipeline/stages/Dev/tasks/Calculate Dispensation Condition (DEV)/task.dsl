
task 'Calculate Dispensation Condition (DEV)', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  stageSummaryParameters = '[{"name":"dispensateDev","label":"Need To Dispensate Dev"}]'
  subprocedure = 'calculateDevDispensation'
  subproject = 'myFourBank'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
