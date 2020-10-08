
task 'Release Notes', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  stageSummaryParameters = '[{"name":"relNotesLink","label":"Release Notes"}]'
  subprocedure = 'createReleaseNotes'
  subproject = 'myFourBank'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
