
task 'Wait for GDS Approval Prod', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateType = 'PRE'
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
