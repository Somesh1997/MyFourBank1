
task 'IQServerQualityGate', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  condition = '$[/javascript myPipelineRuntime.dispensationNeeded == "0"]'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateCondition = '''$[/javascript
if (("$[/myPipelineRuntime/IQ Critical Violation Count]" <= $[/myProject/iqCriticalViolationCount]) && ("$[/myPipelineRuntime/IQ Moderate Violation Count]" <= $[/myProject/iqModerateViolationCount])) {
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
