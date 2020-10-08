
procedure 'calculateDitDispensation', {
  description = ''
  jobNameTemplate = ''
  projectName = 'myFourBank'
  resourceName = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalOutputParameter 'dispensateDit', {
    description = ''
  }

  formalParameter 'percentThreshold', defaultValue: '50', {
    description = ''
    expansionDeferred = '0'
    required = '0'
    type = 'entry'
  }
}
