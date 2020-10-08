import java.io.File


task 'Exit Gate Task', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/GenericMultiPipeline/stages/Dev/tasks/Exit Gate Task.cmd").text,
    'shellToUse': '/bin/sh',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
