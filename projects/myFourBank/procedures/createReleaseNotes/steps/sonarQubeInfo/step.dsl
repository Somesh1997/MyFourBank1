import java.io.File


step 'sonarQubeInfo', {
  description = '''For each component: report URL, violations (quality gates) 
'''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/createReleaseNotes/steps/sonarQubeInfo.cmd").text
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
