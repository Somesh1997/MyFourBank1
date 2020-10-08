returnCode=1
ectool setProperty "/myPipelineRuntime/NoDitTestViolations" "false"
#
if test "$[/myPipelineRuntime/actualFailuresNumberTestDit]" == "0" ;then

let ratioPassed="$[/myPipelineRuntime/actualTotalNumberTestDit]"*100/"$[/myPipelineRuntime/DitTestsReferenceValue]"
echo "we have ${ratioPassed} percent"
if test "${ratioPassed}" -gt "$[percentThreshold]" ;then
  returnCode=0
  ectool setProperty "/myPipelineRuntime/NoDitTestViolations" "true"
fi
fi
ectool setProperty "/myPipelineStageRuntime/dispensateDit" ${returnCode}
ectool setOutputParameter "dispensateDit" ${returnCode}

