
task 'deploy to SIT', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  deployerRunType = 'serial'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subproject = 'myFourBank'
  taskType = 'DEPLOYER'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
