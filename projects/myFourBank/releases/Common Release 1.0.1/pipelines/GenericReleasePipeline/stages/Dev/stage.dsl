
stage 'Dev', {
  description = 'Build, Unit test and scan stage'
  colorCode = '#a0362c'
  completionType = 'auto'
  pipelineName = 'GenericReleasePipeline'
  projectName = 'myFourBank'
  waitForPlannedStartDate = '0'
}
