# Assign SonarQube violations monitoring properties to NO violations

$[/javascript
	setProperty("/myPipelineRuntime/analysis_new_maintainability_rating_ok", 1);
    setProperty("/myPipelineRuntime/analysis_new_reliability_rating_ok", 1);
    setProperty("/myPipelineRuntime/analysis_new_security_rating_ok", 1);
true;
]
#
