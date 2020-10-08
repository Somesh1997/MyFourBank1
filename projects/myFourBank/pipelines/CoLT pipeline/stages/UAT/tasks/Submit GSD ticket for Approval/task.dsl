
task 'Submit GSD ticket for Approval', {
  description = ''
  actualParameter = [
    'config': 'JaiGSD',
    'referenceNumber': '$[/myStageRuntime/tasks["Create GSD Ticket"]/job/outputParameters/referenceNumber]',
    'SubmittedForApprovalBy': 'gsduat063',
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
  subpluginKey = 'EC-CAGlobalServiceDesk'
  subprocedure = 'Submit for Approval Change Request'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
