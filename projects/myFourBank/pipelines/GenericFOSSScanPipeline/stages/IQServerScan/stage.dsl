
stage 'IQServerScan', {
  description = 'IQ Server scan which can run as a nested collaborative pipeline and be owned by a different team if needed.'
  colorCode = '#00adee'
  completionType = 'auto'
  pipelineName = 'GenericFOSSScanPipeline'
  projectName = 'myFourBank'
  waitForPlannedStartDate = '0'
}
