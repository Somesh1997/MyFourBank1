import java.io.File


step 'iqServerInfo', {
  description = 'results for IQ sever analysis'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/createReleaseNotes/steps/iqServerInfo.cmd").text
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
