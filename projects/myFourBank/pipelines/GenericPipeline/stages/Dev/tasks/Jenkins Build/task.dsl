
task 'Jenkins Build', {
  description = ''
  actualParameter = [
    'config_name': 'adf-jenkins',
    'jenkins_enable_parallel_mode': '0',
    'job_name': 'myFourBankCloud/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/gdocs-use-case/job/custome-case-papi',
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
  subprocedure = 'RunAndWait'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
