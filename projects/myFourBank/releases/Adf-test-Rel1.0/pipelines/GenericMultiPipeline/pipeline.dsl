
pipeline 'GenericMultiPipeline', {
  description = 'myFourBank CloudBees Flow PoV Generic pipeline'
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'myFourBank'
  releaseName = 'Adf-test-Rel1.0'
  skipStageMode = 'ENABLED'
  templatePipelineName = 'GenericMultiPipeline'
  templatePipelineProjectName = 'myFourBank'

  formalParameter 'iqConfigName', defaultValue: 'ADF-IQ', {
    description = 'IQ Configuration Name'
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'iqApplicationId', defaultValue: 'sample', {
    description = 'IQ Application ID'
    expansionDeferred = '0'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'sonarProjectKey', defaultValue: 'sample', {
    expansionDeferred = '0'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'sonarProjectName', defaultValue: 'sample', {
    expansionDeferred = '0'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'sonarProjectVersion', defaultValue: '1.0', {
    expansionDeferred = '0'
    orderIndex = '5'
    required = '1'
    type = 'entry'
  }

  formalParameter 'notUrgent', defaultValue: '1', {
    expansionDeferred = '0'
    orderIndex = '6'
    required = '1'
    type = 'integer'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
