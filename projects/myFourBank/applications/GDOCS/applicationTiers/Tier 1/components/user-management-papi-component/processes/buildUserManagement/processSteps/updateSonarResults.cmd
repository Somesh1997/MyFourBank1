# report /myJob/$[/myComponent/componentName]/getLastSonarMetrics to /myPipeline/$[/myComponent/componentName]/sonarOutcome
#
$[/javascript if ("/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_coverage" < "/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_coverage_ErrorThreshold") {
	setProperty("/myPipelineRuntime/analysis_coverage-violated_by-$[/myComponent/componentName]", 1);
	setProperty("/myPipelineRuntime/analysis_coverage_ok", 0);
}
true;
]
#
$[/javascript if ("/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_duplicated_lines_density" > "/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_duplicated_lines_density_ErrorThreshold") {
	setProperty("/myPipelineRuntime/analysis_duplicated_lines_density-violated_by-$[/myComponent/componentName]", 1);
    setProperty("/myPipelineRuntime/analysis_duplicated_lines_density_ok", 0);
}
true;
]
#
$[/javascript if ("/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_new_blocker_violations" > "/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_new_blocker_violations_ErrorThreshold") {
	setProperty("/myPipelineRuntime/analysis_new_blocker_violations-violated_by-$[/myComponent/componentName]", 1);
	setProperty("/myPipelineRuntime/analysis_new_blocker_violations_ok", 0);
}
true;
]
#
$[/javascript if ("/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_new_critical_violations" > "/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_new_critical_violations_ErrorThreshold") {
	setProperty("/myPipelineRuntime/analysis_new_critical_violations-violated_by-$[/myComponent/componentName]", 1);
	setProperty("/myPipelineRuntime/analysis_new_critical_violations_ok", 0);
}
true;
]
#
$[/javascript if ("/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_new_sqale_debt_ratio" > "/myJob/$[/myComponent/componentName]/getLastSonarMetrics/analysis_new_sqale_debt_ratio_ErrorThreshold") {
	setProperty("/myPipelineRuntime/analysis_new_sqale_debt_ratio-violated_by-$[/myComponent/componentName]", 1);
	setProperty("/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok", 0);
}
true;
]