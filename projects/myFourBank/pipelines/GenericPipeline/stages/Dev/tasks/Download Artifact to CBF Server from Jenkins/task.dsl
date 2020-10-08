
task 'Download Artifact to CBF Server from Jenkins', {
  description = ''
  actualParameter = [
    'artifacts': '''*
''',
    'config_name': 'adf-jenkins',
    'job_name': 'myFourBankCloud/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/gdocs-use-case/job/SPCOEPTL-191-Case-PAPI-CBF',
    'target_directory': '/tmp',
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
  subprocedure = 'DownloadArtifacts'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
