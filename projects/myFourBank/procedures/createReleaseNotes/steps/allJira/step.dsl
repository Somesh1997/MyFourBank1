import java.io.File


step 'allJira', {
  description = 'for each Jira Ticket: number, owner, status, URL.'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/createReleaseNotes/steps/allJira.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'myFourBank'
  releaseMode = 'none'
  resourceName = ''
  shell = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
