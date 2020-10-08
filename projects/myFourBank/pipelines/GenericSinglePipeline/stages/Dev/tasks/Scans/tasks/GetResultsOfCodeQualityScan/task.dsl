
task 'GetResultsOfCodeQualityScan', {
  description = ''
  actualParameter = [
    'config': 'devsupport-sonar',
    'resultFormat': 'propertysheet',
    'resultSonarProperty': '/myPipelineRuntime/getLastSonarMetrics',
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
    'sonarProjectKey': '$[sonarProjectKey]',
    'sonarProjectName': '$[sonarProjectName]',
    'sonarProjectVersion': '$[sonarProjectVersion]',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupName = 'Scans'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-SonarQube'
  subprocedure = 'Get Last SonarQube Metrics'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
