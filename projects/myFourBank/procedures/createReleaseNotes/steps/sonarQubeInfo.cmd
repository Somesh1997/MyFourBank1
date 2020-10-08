relNotesFileName=artifacts/$(ectool getProperty "/myJob/relNotesFile")
echo "----------------------------------------------------------" >> ${relNotesFileName}
echo "------------------- SonarQube analysis -------------------" >> ${relNotesFileName}
echo "----------------------------------------------------------" >> ${relNotesFileName}
echo  >> ${relNotesFileName}
if test "$[/myPipelineRuntime/analysis_coverage_ok]" = "0" ;then
echo " Violation of Analysis Coverage" >> ${relNotesFileName}
else
echo " No violation of Analysis Coverage" >> ${relNotesFileName}
fi
if test "$[/myPipelineRuntime/analysis_duplicated_lines_density_ok]" = "0" ;then
echo " Violation of Analysis Duplicated Lines Density" >> ${relNotesFileName}
else
echo " No violation of Analysis Duplicated Lines Density" >> ${relNotesFileName}
fi
if test "$[/myPipelineRuntime/analysis_new_blocker_violations_ok]" = "0" ;then
echo " Violation of Analysis New Blocker Violations" >> ${relNotesFileName}
else
echo " No violation of Analysis New Blocker Violations" >> ${relNotesFileName}
fi
if test "$[/myPipelineRuntime/analysis_new_critical_violations_ok]" = "0" ;then
echo " Violation of Analysis New Critical Violations" >> ${relNotesFileName}
else
echo " No violation of Analysis New Critical Violations" >> ${relNotesFileName}
fi
if test "$[/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok]" = "0" ;then
echo " Violation of Analysis New Sqale Debt Ratio" >> ${relNotesFileName}
else
echo " No violation of Analysis New Sqale Debt Ratio" >> ${relNotesFileName}
fi
echo "----------------------------------------------------------" >> ${relNotesFileName}

