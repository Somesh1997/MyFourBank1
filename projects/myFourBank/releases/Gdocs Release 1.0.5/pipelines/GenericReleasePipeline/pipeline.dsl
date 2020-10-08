
pipeline 'GenericReleasePipeline', {
  description = 'myFourBank CloudBees Flow PoV Generic pipeline'
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'myFourBank'
  releaseName = 'Gdocs Release 1.0.5'
  skipStageMode = 'ENABLED'
  templatePipelineName = 'GenericReleasePipeline'
  templatePipelineProjectName = 'myFourBank'

  formalParameter 'iqConfigName', defaultValue: 'ADF-IQ', {
    description = 'IQ Configuration Name'
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'iqApplicationId', defaultValue: 'gdocs-case-papi', {
    description = 'IQ Application ID'
    expansionDeferred = '0'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'notUrgent', defaultValue: '1', {
    expansionDeferred = '0'
    orderIndex = '3'
    required = '1'
    type = 'integer'
  }

  formalParameter 'iqAnalysisRepo', defaultValue: '/tmp/flow/iqAnalysisRepo', {
    expansionDeferred = '0'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
