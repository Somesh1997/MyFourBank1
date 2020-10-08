relNotesFileName=artifacts/$(ectool getProperty "/myJob/relNotesFile")
echo "----------------------------------------------------------" >> ${relNotesFileName}
echo "---------------- Nexus IQ Server analysis ----------------" >> ${relNotesFileName}
echo "----------------------------------------------------------" >> ${relNotesFileName}
echo "IQ Build Report URL:         $[/myPipelineRuntime/IQ Build Report URL]" >> ${relNotesFileName}
echo "IQ Component Count:          $[/myPipelineRuntime/IQ Component Count]" >> ${relNotesFileName}
echo "IQ Critical Violation Count: $[/myPipelineRuntime/IQ Critical Violation Count]" >> ${relNotesFileName}
echo "IQ License Issue Count:      $[/myPipelineRuntime/IQ Critical Violation Count]" >> ${relNotesFileName}
echo "IQ Moderate Violation Count: $[/myPipelineRuntime/IQ Moderate Violation Count]" >> ${relNotesFileName}
echo "IQ Security Issue Count:     $[/myPipelineRuntime/IQ Security Issue Count]" >> ${relNotesFileName}
echo "IQ Severe Violation Count:   $[/myPipelineRuntime/IQ Severe Violation Count]" >> ${relNotesFileName}
echo "----------------------------------------------------------" >> ${relNotesFileName}
echo >> ${relNotesFileName}

