
pipeline 'pipOrchestrateAndDep', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'myFourBank'
  releaseName = 'linkRel'
  skipStageMode = 'ENABLED'
  templatePipelineName = 'pipOrchestrateAndDep'
  templatePipelineProjectName = 'myFourBank'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
