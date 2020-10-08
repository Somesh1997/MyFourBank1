# Assign SonarQube violations monitoring properties to NO violations
echo "Preparing Dev Tasks..."
echo
echo "1- Initialize variables for Sonar violations management"
$[/javascript
	setProperty("/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok", 1);
    setProperty("/myPipelineRuntime/analysis_new_critical_violations_ok", 1);
    setProperty("/myPipelineRuntime/analysis_new_blocker_violations_ok", 1);
    setProperty("/myPipelineRuntime/analysis_duplicated_lines_density_ok", 1);
    setProperty("/myPipelineRuntime/analysis_coverage_ok", 1);
true;
]

