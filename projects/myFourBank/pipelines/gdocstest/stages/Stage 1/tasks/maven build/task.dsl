
task 'maven build', {
  description = ''
  actualParameter = [
    'cmdDebug': '0',
    'cmdErrors': '0',
    'cmdFailatEnd': '0',
    'cmdFailFast': '0',
    'cmdFailNever': '0',
    'mavenCommand': 'clean install',
    'workingdirectory': '../$[/myStageRuntime/tasks["clone"]/job/jobName]/gdocs-case-papi',
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
  subpluginKey = 'EC-Maven'
  subprocedure = 'runMaven'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
