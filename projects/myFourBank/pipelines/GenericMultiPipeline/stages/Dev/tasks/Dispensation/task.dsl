
task 'Dispensation', {
  description = ''
  actionLabelText = '{"completed":"Dispensate","failed":"Stop the Release"}'
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  condition = '$[/javascript myPipelineRuntime.dispensationNeeded]'
  disableFailure = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  instruction = '''Dispensation for Dev stage:
A violation has been detected in the released applications, please see report or Flow properties for details.
If you choose "Dispensate" you authorize the release of this software into the next stage.'''
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
