
task 'Scans', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  condition = '$[notUrgent]'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupRunType = 'parallel'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subproject = 'myFourBank'
  taskType = 'GROUP'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
