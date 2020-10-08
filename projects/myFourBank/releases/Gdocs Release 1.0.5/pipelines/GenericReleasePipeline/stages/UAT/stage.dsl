
stage 'UAT', {
  description = 'User Acceptance Test Stage'
  colorCode = '#2c3ea0'
  completionType = 'auto'
  pipelineName = 'GenericReleasePipeline'
  projectName = 'myFourBank'
  waitForPlannedStartDate = '0'
}
