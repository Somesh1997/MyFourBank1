
task 'Get approval for GSD ticket', {
  description = ''
  actionLabelText = '{"completed":"Approve GSD Ticket","failed":"Reject GSD Ticket"}'
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  disableFailure = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  instruction = 'Please Approve - or Reject - the GSD ticket. Once Approved it will be actually submitted to GSD, and the Release will enter Production stage (PROD) to be deployed in the production environment.'
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
