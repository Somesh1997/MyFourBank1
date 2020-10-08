
stage 'SIT', {
  description = 'System Integration Test Stage'
  colorCode = '#ff7f0e'
  completionType = 'auto'
  pipelineName = 'GenericReleasePipeline'
  projectName = 'myFourBank'
  waitForPlannedStartDate = '0'
}
