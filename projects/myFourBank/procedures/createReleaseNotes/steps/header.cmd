relNotesFileName="$[/myPipelineRuntime/flowRuntimeId].relNotes"
ectool setProperty "/myJob/relNotesFile" ${relNotesFileName}
mkdir -p artifacts
relNotesFileName=artifacts/$(ectool getProperty "/myJob/relNotesFile")
echo "Release notes for Release $[/myPipelineRuntime/flowRuntimeId]" > ${relNotesFileName}
