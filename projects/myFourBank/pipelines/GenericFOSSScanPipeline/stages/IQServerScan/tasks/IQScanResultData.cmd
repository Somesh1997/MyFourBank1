

ectool setProperty "/myTriggeringPipelineRuntime/IQ Build Report URL" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/Build Report URL]


ectool setProperty "/myTriggeringPipelineRuntime/IQ Component Count" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/Component Count]

ectool setProperty "/myTriggeringPipelineRuntime/IQ Critical Violation Count" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/Critical Violation Count]

ectool setProperty "/myTriggeringPipelineRuntime/IQ License Issue Count" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/License Issue Count]

ectool setProperty "/myTriggeringPipelineRuntime/IQ Moderate Violation Count" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/Moderate Violation Count]

ectool setProperty "/myTriggeringPipelineRuntime/IQ Severe Violation Count" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/Severe Violation Count]

ectool setProperty "/myTriggeringPipelineRuntime/IQ Security Issue Count" $[/myPipelineRuntime/tasks/ScanWithIQServer/job/outputParameters/Security Issue Count]