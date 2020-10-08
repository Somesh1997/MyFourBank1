
task 'scan', {
  description = ''
  actualParameter = [
    'config': 'devsupport-sonar',
    'resultFormat': 'propertysheet',
    'resultSonarProperty': '/myJob/initiateScanner',
    'scannerDebug': '0',
    'sonarProjectKey': 'com.company.myFourBank.cloudenablement:myFourBank-platform-pa-myFourBank-case-papi',
    'sonarProjectName': 'caseapi',
    'sonarProjectVersion': '2.0.9',
    'sources': './gdocs-case-papi',
    'workDirectory': '../$[/myStageRuntime/tasks["clone"]/job/jobName]/',
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
  subpluginKey = 'EC-SonarQube'
  subprocedure = 'Initiate Scanning Process'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
