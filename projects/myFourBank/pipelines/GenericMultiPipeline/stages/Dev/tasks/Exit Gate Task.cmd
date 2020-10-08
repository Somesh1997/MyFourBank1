$[/javascript

setProperty(/myPipelineRuntime/dispensationNeeded, 1);

if (("$[/myPipelineRuntime/analysis_coverage_ok]" == "1") && ("$[/myPipelineRuntime/analysis_duplicated_lines_density_ok]" == "1") && ("$[/myPipelineRuntime/analysis_new_blocker_violations_ok]" == "1") && ("$[/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok]" == "1") && ("$[/myPipelineRuntime/analysis_new_critical_violations_ok]" == "1")) {
  setProperty("/myPipelineRuntime/dispensationNeeded", 0);
}

if (("$[/myPipelineRuntime/IQ Critical Violation Count]" <= $[/myProject/iqCriticalViolationCount]) && ("$[/myPipelineRuntime/IQ Moderate Violation Count]" <= $[/myProject/iqModerateViolationCount])) {
  setProperty("/myPipelineRuntime/dispensationNeeded", 0);
}
]
echo $[/myPipelineRuntime/dispensationNeeded]