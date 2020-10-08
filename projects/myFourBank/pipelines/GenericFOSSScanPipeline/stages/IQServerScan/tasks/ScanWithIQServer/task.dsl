
task 'ScanWithIQServer', {
  description = ''
  actualParameter = [
    'config': '$[iqConfigName]',
    'nexusApplicationId': '$[iqApplicationId]',
    'nexusApplicationWarLocation': '$[iqArtifactLocation]',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = 'flowkube'
  skippable = '0'
  subpluginKey = 'EC-NexusIQServer'
  subprocedure = 'CreateBuildReport'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
