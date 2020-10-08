
task 'clone', {
  description = ''
  actualParameter = [
    'clone': '0',
    'config': 'git-lillian',
    'dest': '.',
    'GitRepo': 'gitRepo/myFourBank-cloudbees-flow-pov/gdocs-eapi.git',
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
  subpluginKey = 'ECSCM-Git'
  subprocedure = 'CheckoutCode'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
