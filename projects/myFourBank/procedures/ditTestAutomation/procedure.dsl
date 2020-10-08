
procedure 'ditTestAutomation', {
  description = 'DIT Test automation with quality gates.'
  jobNameTemplate = ''
  projectName = 'myFourBank'
  resourceName = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'baseName', defaultValue: 'cape-auth-service-feature-tests', {
    description = 'githubRepository'
    expansionDeferred = '0'
    required = '0'
    type = 'entry'
  }
}
