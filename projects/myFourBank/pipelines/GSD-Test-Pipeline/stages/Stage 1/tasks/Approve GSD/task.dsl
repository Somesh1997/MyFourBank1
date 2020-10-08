
task 'Approve GSD', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  disableFailure = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subproject = 'myFourBank'
  taskType = 'MANUAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
  approver = [
    'admin',
  ]
}
