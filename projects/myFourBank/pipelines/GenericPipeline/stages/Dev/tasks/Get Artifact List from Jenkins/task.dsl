
task 'Get Artifact List from Jenkins', {
  description = ''
  actualParameter = [
    'config_name': 'adf-jenkins',
    'job_name': 'myFourBankCloud/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/gdocs-use-case/job/SPCOEPTL-191-Case-PAPI-CBF',
    'result_format': 'json',
    'result_outpp': '/myJobStep/buildDetails',
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
  subpluginKey = 'EC-Jenkins'
  subprocedure = 'GetArtifactList'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
