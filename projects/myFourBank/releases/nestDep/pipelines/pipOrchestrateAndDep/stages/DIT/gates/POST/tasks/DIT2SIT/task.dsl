
task 'DIT2SIT', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  enabled = '0'
  errorHandling = 'stopOnError'
  gateType = 'POST'
  insertRollingDeployManualStep = '0'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_gate_task_notification_template'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subproject = 'myFourBank'
  taskType = 'APPROVAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
  approver = [
    'admin',
  ]
}
