returnCode=1
  ectool setProperty "/myPipelineRuntime/NoSonarQubeViolations" "false"
  ectool setProperty "/myPipelineRuntime/NoIqServerViolations" "false"
if test "$[/myPipelineRuntime/analysis_coverage_ok]" == "1" ;then
if test "$[/myPipelineRuntime/analysis_duplicated_lines_density_ok]" == "1" ;then
if test "$[/myPipelineRuntime/analysis_new_blocker_violations_ok]" == "1" ;then
if test "$[/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok]" == "1" ;then
if test "$[/myPipelineRuntime/analysis_new_critical_violations_ok]" == "1" ;then
  returnCode=0
  ectool setProperty "/myPipelineRuntime/NoSonarQubeViolations" "true"
fi
fi
fi
fi
fi
#
# This part of the IQ server violations SHOULD BE DONE in the future implementation, in the nested [security] pipeline and reflected somewhere in $ [ / myPipelineRuntime / <someVariable> ]
#
if test "$[/myPipelineRuntime/IQ Critical Violation Count]" <= "$[/projects/$[/myPipelineRuntime/projectName]/iqCriticalViolationCount]" ;then
if test "$[/myPipelineRuntime/IQ Moderate Violation Count]" <= "$[/projects/$[/myPipelineRuntime/projectName]/iqModerateViolationCount]" ;then
  returnCode=0
  ectool setProperty "/myPipelineRuntime/NoIqServerViolations" "true"
fi
fi
#
ectool setProperty "/myPipelineStageRuntime/dispensateDev" ${returnCode}
ectool setOutputParameter "dispensateDev" ${returnCode}
