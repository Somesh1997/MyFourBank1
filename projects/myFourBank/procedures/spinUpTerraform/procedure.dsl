
procedure 'spinUpTerraform', {
  description = ''
  jobNameTemplate = ''
  projectName = 'myFourBank'
  resourceName = 'terraformagent'
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'TerraformConfig', defaultValue: 'adf-terraform1', {
    description = ''
    expansionDeferred = '0'
    required = '1'
    type = 'entry'
  }
}
