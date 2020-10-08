
task 'FOSS-Scan', {
  description = ''
  actualParameter = [
    'iqApplicationId': '$[iqApplicationId]',
    'iqArtifactLocation': '$[iqArtifactLocation]',
    'iqConfigName': '$[iqConfigName]',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupName = 'Scans'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  stageSummaryParameters = '[{"name":"iQScanResult","label":"iQScanResult"}]'
  subErrorHandling = 'stopOnError'
  subpipeline = 'GenericFOSSScanPipeline'
  subproject = 'myFourBank'
  taskType = 'PIPELINE'
  triggerType = 'sync'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
