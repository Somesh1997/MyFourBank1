
task 'SonarQubeQualityGate', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  condition = '$[/javascript myPipelineRuntime.dispensationNeeded == "0"]'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateCondition = '''$[/javascript
if (("$[/myPipelineRuntime/analysis_coverage_ok]" == "1") && ("$[/myPipelineRuntime/analysis_duplicated_lines_density_ok]" == "1") && ("$[/myPipelineRuntime/analysis_new_blocker_violations_ok]" == "1") && ("$[/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok]" == "1") && ("$[/myPipelineRuntime/analysis_new_critical_violations_ok]" == "1")) {
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
