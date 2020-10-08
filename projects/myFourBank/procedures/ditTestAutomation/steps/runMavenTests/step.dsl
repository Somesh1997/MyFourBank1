import java.io.File


step 'runMavenTests', {
  description = 'runMavenTests'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/ditTestAutomation/steps/runMavenTests.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'myFourBank'
  releaseMode = 'none'
  resourceName = 'flowkube'
  shell = '/bin/sh'
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
