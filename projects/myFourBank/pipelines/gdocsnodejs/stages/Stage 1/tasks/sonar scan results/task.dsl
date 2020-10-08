
task 'sonar scan results', {
  description = ''
  actualParameter = [
    'config': 'devsupport-sonar',
    'resultFormat': 'propertysheet',
    'resultSonarProperty': '/myJob/runSonarScanner',
    'scannerDebug': '0',
    'sonarMetricsComplexity': 'all',
    'sonarMetricsDocumentation': 'all',
    'sonarMetricsDuplications': 'all',
    'sonarMetricsIssues': 'all',
    'sonarMetricsMaintainability': 'all',
    'sonarMetricsMetrics': 'all',
    'sonarMetricsQualityGates': 'all',
    'sonarMetricsReliability': 'all',
    'sonarMetricsSecurity': 'all',
    'sonarMetricsTests': 'all',
    'sonarProjectKey': 'com.company.myFourBank.cloudenablement:myFourBank-platform-pa-myFourBank-case-papi',
    'sonarProjectName': 'caseapi',
    'sonarProjectVersion': '2.0.9',
    'sources': './src',
    'workDirectory': '../$[/myStageRuntime/tasks["clone"]/job/jobName]',
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
  subpluginKey = 'EC-SonarQube'
  subprocedure = 'Run Sonar Scanner'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
