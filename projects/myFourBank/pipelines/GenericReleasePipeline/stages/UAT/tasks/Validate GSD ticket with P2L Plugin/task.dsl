
task 'Validate GSD ticket with P2L Plugin', {
  description = ''
  actualParameter = [
    'crNumber': '$[/myStageRuntime/tasks["Create GSD Ticket"]/job/outputParameters/referenceNumber]',
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
  subprocedure = 'p2l-change-commands'
  subproject = 'Default'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
