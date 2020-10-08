
procedure 'prepareDevTasks', {
  description = ''
  jobNameTemplate = ''
  projectName = 'myFourBank'
  resourceName = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'iqAnalysisRepo', defaultValue: '/tmp/flow/iqAnalysisRepo', {
    description = ''
    expansionDeferred = '0'
    required = '0'
    type = 'entry'
  }
}
