
task 'SonarQubeQualityGate', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  condition = '$[notUrgent]'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateCondition = '''$[/javascript
if (("$[/myPipelineRuntime/getLastSonarMetrics/coverage]" >= $[/myProject/sonarQubeCoverageThreshold]) && ("$[/myPipelineRuntime/getLastSonarMetrics/vulnerabilities]" <= 0)) {
  true;
} else {
  false;
}
]'''
  gateType = 'POST'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  subproject = 'myFourBank'
  taskType = 'CONDITIONAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
