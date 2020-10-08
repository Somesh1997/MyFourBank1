
pipeline 'GenericFOSSScanPipeline', {
  description = 'Generic Security Pipeline which can be owned by IT security, for example.'
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'myFourBank'
  skipStageMode = 'DISABLED'

  formalOutputParameter 'iQScanResult', {
    description = 'iQScanResult'
  }

  formalParameter 'iqConfigName', defaultValue: '', {
    description = 'IQ Configuration name'
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'iqApplicationId', defaultValue: '', {
    description = 'IQ Application ID'
    expansionDeferred = '0'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'iqArtifactLocation', {
    expansionDeferred = '0'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
