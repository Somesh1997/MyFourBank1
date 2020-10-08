
task 'deploy to DIT', {
  description = ''
  actualParameter = [
    'ec_enforceDependencies': '1',
    'ec_smartDeployOption': '1',
    'ec_stageArtifacts': '0',
  ]
  advancedMode = '1'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  environmentName = 'AppDep_DIT'
  environmentProjectName = 'myFourBank'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  rollingDeployEnabled = '0'
  skippable = '0'
  snapshotName = '$[ShapshotDep]'
  subapplication = 'AppDep'
  subprocess = 'deploy'
  subproject = 'myFourBank'
  taskProcessType = 'APPLICATION'
  taskType = 'PROCESS'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
