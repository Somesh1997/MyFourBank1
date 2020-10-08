
task 'approveordenyCR', {
  description = ''
  actualParameter = [
    'ApprovalStatus': 'Approved',
    'Approvedby': 'gsduat063',
    'ApproverGroup': 'GSD-TestAPI-Group1',
    'CABReview': 'Yes',
    'Comment': 'approved',
    'config': 'JaiGSD',
    'ReferenceNumber': '$[/myStageRuntime/tasks["Create GSD Ticket"]/job/outputParameters/referenceNumber]',
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
  subprocedure = 'Approve Change Order Request'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
