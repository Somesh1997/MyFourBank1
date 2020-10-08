
task 'FOSS-scan', {
  description = ''
  actualParameter = [
    'iqApplicationId': '$[iqApplicationId]',
    'iqArtifactLocation': '/home/flow/iqAnalysisRepo',
    'iqConfigName': '$[iqConfigName]',
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
  subErrorHandling = 'continueOnError'
  subpipeline = 'GenericFOSSScanPipeline'
  subproject = 'myFourBank'
  taskType = 'PIPELINE'
  triggerType = 'sync'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
