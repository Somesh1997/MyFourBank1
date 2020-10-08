import java.io.File


task 'Prepare Dev Tasks', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Adf-test-Rel1.0/pipelines/GenericMultiPipeline/stages/Dev/tasks/Prepare Dev Tasks.cmd").text,
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
