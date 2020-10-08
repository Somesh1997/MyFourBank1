
task 'Dispensate Dit Gate', {
  description = '''Dispensation for DIT stage:
A violation has been detected in the released applications, please see report or Flow properties for details.
If you choose "Dispensate" you authorize the release of this software into the next stage.'''
  actionLabelText = '{"completed":"Dispensate Dit","failed":"Stop Dit"}'
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  condition = '$[/javascript myPipelineStageRuntime.dispensateDit == "1"]'
  enabled = '1'
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
