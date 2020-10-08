
task 'Calculate Dispensation Condition (DIT)', {
  description = ''
  actualParameter = [
    'percentThreshold': '50',
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
  stageSummaryParameters = '[{"name":"dispensateDit","label":"Need To Dispensate Dit"}]'
  subprocedure = 'calculateDitDispensation'
  subproject = 'myFourBank'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
