
catalogItem 'myFourBank Release Pipeline', {
  description = '''<xml>
  <title>
    Creates a generic release pipeline for processing a service from Development to Production
  </title>

  <htmlData>
    <![CDATA[
      myFourBank Release Pipeline
    ]]>
  </htmlData>
</xml>'''
  allowScheduling = '0'
  buttonLabel = 'Create'
  catalogName = 'myFourBank'
  dslString = '''
def pipelineName = args.pipelineName,
    releaseName = args.releaseName,
    releaseProjName = args.releaseProjName,
    appName = args.appName
	
release releaseName, {
  description = \'\'
  disableMultipleActiveRuns = \'0\'
  plannedEndDate = \'2019-12-02\'
  plannedStartDate = \'2019-11-18\'
  projectName = releaseProjName
  timeZone = null

  pipeline pipelineName, {
    description = \'myFourBank CloudBees Flow PoV Generic pipeline\'
    disableMultipleActiveRuns = \'0\'
    disableRestart = \'0\'
    enabled = \'1\'
    overrideWorkspace = \'0\'
    pipelineRunNameTemplate = null
    projectName = releaseProjName
    releaseName = releaseName
    skipStageMode = \'ENABLED\'
    templatePipelineName = pipelineName
    templatePipelineprojectName = releaseProjName
    type = null
    workspaceName = null

    formalParameter \'iqConfigName\', defaultValue: \'ADF-IQ\', {
      description = \'IQ Configuration Name\'
      expansionDeferred = \'0\'
      label = null
      orderIndex = \'1\'
      required = \'1\'
      type = \'entry\'
    }

    formalParameter \'iqApplicationId\', defaultValue: \'gdocs-user-management-papi\', {
      description = \'IQ Application ID\'
      expansionDeferred = \'0\'
      label = null
      orderIndex = \'2\'
      required = \'1\'
      type = \'entry\'
    }

    formalParameter \'notUrgent\', defaultValue: \'1\', {
      expansionDeferred = \'0\'
      label = null
      orderIndex = \'3\'
      required = \'1\'
      type = \'integer\'
    }

    formalParameter \'iqAnalysisRepo\', defaultValue: \'/tmp/flow/iqAnalysisRepo\', {
      expansionDeferred = \'0\'
      label = null
      orderIndex = \'4\'
      required = \'1\'
      type = \'entry\'
    }

    formalParameter \'ec_stagesToRun\', defaultValue: null, {
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = null
    }

    stage \'Dev\', {
      description = \'Build, Unit test and scan stage\'
      colorCode = \'#a0362c\'
      completionType = \'auto\'
      condition = null
      duration = null
      parallelToPrevious = null
      pipelineName = \'GenericMultiPipeline\'
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      projectName = releaseProjName
      resourceName = null
      waitForPlannedStartDate = \'0\'

      gate \'PRE\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      gate \'POST\', {
        condition = null
        precondition = null
        projectName = releaseProjName

        task \'SonarQubeQualityGate\', {
          description = \'\'
          actionLabelText = null
          advancedMode = \'0\'
          afterLastRetry = null
          allowOutOfOrderRun = \'0\'
          allowSkip = null
          alwaysRun = \'0\'
          condition = \'0\'
          deployerExpression = null
          deployerRunType = null
          disableFailure = null
          duration = null
          emailConfigName = null
          enabled = \'1\'
          environmentName = null
          environmentProjectName = null
          environmentTemplateName = null
          environmentTemplateProjectName = null
          errorHandling = \'stopOnError\'
          gateCondition = \'\'\'$[/javascript
if ((\\"$[/myPipelineRuntime/analysis_coverage_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_duplicated_lines_density_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_new_blocker_violations_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_new_critical_violations_ok]\\" == \\"1\\")) {
  true;
} else {
  false;
}
]\'\'\'
          gateType = \'POST\'
          groupName = null
          groupRunType = null
          insertRollingDeployManualStep = \'0\'
          instruction = null
          notificationEnabled = null
          notificationTemplate = null
          parallelToPrevious = null
          plannedEndDate = null
          plannedStartDate = null
          precondition = null
          projectName = releaseProjName
          requiredApprovalsCount = null
          resourceName = \'\'
          retryCount = null
          retryInterval = null
          retryType = null
          rollingDeployEnabled = null
          rollingDeployManualStepCondition = null
          skippable = \'0\'
          snapshotName = null
          stageSummaryParameters = null
          startingStage = null
          subErrorHandling = null
          subapplication = null
          subpipeline = null
          subpluginKey = null
          subprocedure = null
          subprocess = null
          subproject = \'myFourBank\'
          subrelease = null
          subreleasePipeline = null
          subreleasePipelineProject = null
          subreleaseSuffix = null
          subservice = null
          subworkflowDefinition = null
          subworkflowStartingState = null
          taskProcessType = null
          taskType = \'CONDITIONAL\'
          triggerType = null
          useApproverAcl = \'0\'
          waitForPlannedStartDate = \'0\'
        }

        task \'IQServerQualityGate\', {
          description = \'\'
          actionLabelText = null
          advancedMode = \'0\'
          afterLastRetry = null
          allowOutOfOrderRun = \'0\'
          allowSkip = null
          alwaysRun = \'0\'
          condition = \'0\'
          deployerExpression = null
          deployerRunType = null
          disableFailure = null
          duration = null
          emailConfigName = null
          enabled = \'1\'
          environmentName = null
          environmentProjectName = null
          environmentTemplateName = null
          environmentTemplateProjectName = null
          errorHandling = \'stopOnError\'
          gateCondition = \'\'\'$[/javascript
if ((\\"$[/myPipelineRuntime/IQ Critical Violation Count]\\" <= $[/myProject/iqCriticalViolationCount]) && (\\"$[/myPipelineRuntime/IQ Moderate Violation Count]\\" <= $[/myProject/iqModerateViolationCount])) {
  true;
} else {
  false;
}
]\'\'\'
          gateType = \'POST\'
          groupName = null
          groupRunType = null
          insertRollingDeployManualStep = \'0\'
          instruction = null
          notificationEnabled = null
          notificationTemplate = null
          parallelToPrevious = null
          plannedEndDate = null
          plannedStartDate = null
          precondition = null
          projectName = releaseProjName
          requiredApprovalsCount = null
          resourceName = \'\'
          retryCount = null
          retryInterval = null
          retryType = null
          rollingDeployEnabled = null
          rollingDeployManualStepCondition = null
          skippable = \'0\'
          snapshotName = null
          stageSummaryParameters = null
          startingStage = null
          subErrorHandling = null
          subapplication = null
          subpipeline = null
          subpluginKey = null
          subprocedure = null
          subprocess = null
          subproject = \'myFourBank\'
          subrelease = null
          subreleasePipeline = null
          subreleasePipelineProject = null
          subreleaseSuffix = null
          subservice = null
          subworkflowDefinition = null
          subworkflowStartingState = null
          taskProcessType = null
          taskType = \'CONDITIONAL\'
          triggerType = null
          useApproverAcl = \'0\'
          waitForPlannedStartDate = \'0\'
        }
      }

      task \'Prepare Dev Tasks\', {
        description = \'\'
        actionLabelText = null
        actualParameter = [
          \'iqAnalysisRepo\': \'/tmp/flow/iqAnalysisRepo\',
        ]
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = \'prepareDevTasks\'
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'PROCEDURE\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'Get Jira Tickets\', {
        description = \'\'
        actionLabelText = null
        actualParameter = [
          \'config\': \'adf-jira\',
          \'createLink\': \'1\',
          \'jql\': \'project = SPCOEPTL AND \\"Epic Link\\" = SPCOEPTL-187\',
          \'resultFormat\': \'propertySheet\',
          \'resultProperty\': \'/myPipelineRuntime/getIssuesResult\',
        ]
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = \'EC-JIRA\'
        subprocedure = \'GetIssues\'
        subprocess = null
        subproject = null
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'PLUGIN\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'Build in Dev\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = \'parallel\'
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'DEPLOYER\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'FOSS-Scan\', {
        description = \'\'
        actionLabelText = null
        actualParameter = [
          \'iqApplicationId\': \'$[iqApplicationId]\',
          \'iqArtifactLocation\': \'$[iqAnalysisRepo]\',
          \'iqConfigName\': \'$[iqConfigName]\',
        ]
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = \'continueOnError\'
        subapplication = null
        subpipeline = \'GenericFOSSScanPipeline\'
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'PIPELINE\'
        triggerType = \'sync\'
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'Calculate Dispensation Condition\', {
        description = \'\'
        actionLabelText = null
        actualParameter = [
          \'commandToRun\': \'\'\'$[/javascript

setProperty(\\"/myPipelineRuntime/dispensationNeeded\\", 1);

if ((\\"$[/myPipelineRuntime/analysis_coverage_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_duplicated_lines_density_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_new_blocker_violations_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_new_sqale_debt_ratio_ok]\\" == \\"1\\") && (\\"$[/myPipelineRuntime/analysis_new_critical_violations_ok]\\" == \\"1\\")) {
  setProperty(\\"/myPipelineRuntime/dispensationNeeded\\", 0);
}

if ((\\"$[/myPipelineRuntime/IQ Critical Violation Count]\\" <= \\"$[/projects/$[/myPipelineRuntime/projectName]/iqCriticalViolationCount]\\") && (\\"$[/myPipelineRuntime/IQ Moderate Violation Count]\\" <= \\"$[/projects/$[/myPipelineRuntime/projectName]/iqModerateViolationCount]\\")) {
  setProperty(\\"/myPipelineRuntime/dispensationNeeded\\", 0);
}
]
echo $[/myPipelineRuntime/dispensationNeeded]\'\'\',
          \'shellToUse\': \'/bin/sh\',
        ]
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = \'EC-Core\'
        subprocedure = \'RunCommand\'
        subprocess = null
        subproject = null
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'COMMAND\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'Dispensation\', {
        description = \'\'
        actionLabelText = \'{\\"completed\\":\\"Dispensate\\",\\"failed\\":\\"Stop the Release\\"}\'
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = \'0\'
        alwaysRun = \'0\'
        condition = \'$[/javascript myPipelineRuntime.dispensationNeeded]\'
        deployerExpression = null
        deployerRunType = null
        disableFailure = \'0\'
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = \'\'\'Dispensation for Dev stage:
A violation has been detected in the released applications, please see report or Flow properties for details.
If you choose \\"Completed\\" you authorize the release of this software into the next stage.\'\'\'
        notificationEnabled = \'1\'
        notificationTemplate = \'ec_default_pipeline_manual_task_notification_template\'
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'MANUAL\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
        approver = [
          \'SystemAdminGroup\',
        ]
      }
    }

    stage \'DIT\', {
      description = \'Development Integration Test Stage\'
      colorCode = \'#00adee\'
      completionType = \'auto\'
      condition = null
      duration = null
      parallelToPrevious = null
      pipelineName = \'GenericMultiPipeline\'
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      projectName = releaseProjName
      resourceName = null
      waitForPlannedStartDate = \'0\'

      gate \'PRE\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      gate \'POST\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      task \'Deploy in DIT\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = \'parallel\'
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'DEPLOYER\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }
    }

    stage \'SIT\', {
      description = \'System Integration Test Stage\'
      colorCode = \'#ff7f0e\'
      completionType = \'auto\'
      condition = null
      duration = null
      parallelToPrevious = null
      pipelineName = \'GenericMultiPipeline\'
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      projectName = releaseProjName
      resourceName = null
      waitForPlannedStartDate = \'0\'

      gate \'PRE\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      gate \'POST\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      task \'Deploy in SIT\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = \'parallel\'
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'DEPLOYER\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }
    }

    stage \'UAT\', {
      description = \'User Acceptance Test Stage\'
      colorCode = \'#2c3ea0\'
      completionType = \'auto\'
      condition = null
      duration = null
      parallelToPrevious = null
      pipelineName = \'GenericMultiPipeline\'
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      projectName = releaseProjName
      resourceName = null
      waitForPlannedStartDate = \'0\'

      gate \'PRE\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      gate \'POST\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      task \'Deploy in UAT\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = \'parallel\'
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'DEPLOYER\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'Create GSD Ticket\', {
        description = null
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = \'EC-CAGlobalServiceDesk\'
        subprocedure = \'Copy Change Request\'
        subprocess = null
        subproject = null
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'PLUGIN\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }
    }

    stage \'PROD\', {
      description = \'\'
      colorCode = \'#2ca02c\'
      completionType = \'auto\'
      condition = null
      duration = null
      parallelToPrevious = null
      pipelineName = \'GenericMultiPipeline\'
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      projectName = releaseProjName
      resourceName = null
      waitForPlannedStartDate = \'0\'

      gate \'PRE\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      gate \'POST\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      task \'Deploy in PROD\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = \'parallel\'
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = null
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'DEPLOYER\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }
    }

    stage \'Audit and Reports\', {
      description = \'\'
      colorCode = \'#ff80ff\'
      completionType = \'auto\'
      condition = null
      duration = null
      parallelToPrevious = null
      pipelineName = \'GenericMultiPipeline\'
      plannedEndDate = null
      plannedStartDate = null
      precondition = null
      projectName = releaseProjName
      resourceName = null
      waitForPlannedStartDate = \'0\'

      gate \'PRE\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      gate \'POST\', {
        condition = null
        precondition = null
        projectName = releaseProjName
      }

      task \'Approval Task\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = \'EC-AuditReports\'
        subprocedure = \'generateApprovalAuditReport\'
        subprocess = null
        subproject = null
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'PLUGIN\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }

      task \'Release Notes\', {
        description = \'\'
        actionLabelText = null
        advancedMode = \'0\'
        afterLastRetry = null
        allowOutOfOrderRun = \'0\'
        allowSkip = null
        alwaysRun = \'0\'
        condition = null
        deployerExpression = null
        deployerRunType = null
        disableFailure = null
        duration = null
        emailConfigName = null
        enabled = \'1\'
        environmentName = null
        environmentProjectName = null
        environmentTemplateName = null
        environmentTemplateProjectName = null
        errorHandling = \'stopOnError\'
        gateCondition = null
        gateType = null
        groupName = null
        groupRunType = null
        insertRollingDeployManualStep = \'0\'
        instruction = null
        notificationEnabled = null
        notificationTemplate = null
        parallelToPrevious = null
        plannedEndDate = null
        plannedStartDate = null
        precondition = null
        projectName = releaseProjName
        requiredApprovalsCount = null
        resourceName = \'\'
        retryCount = null
        retryInterval = null
        retryType = null
        rollingDeployEnabled = null
        rollingDeployManualStepCondition = null
        skippable = \'0\'
        snapshotName = null
        stageSummaryParameters = null
        startingStage = null
        subErrorHandling = null
        subapplication = null
        subpipeline = null
        subpluginKey = null
        subprocedure = \'createReleaseNotes\'
        subprocess = null
        subproject = \'myFourBank\'
        subrelease = null
        subreleasePipeline = null
        subreleasePipelineProject = null
        subreleaseSuffix = null
        subservice = null
        subworkflowDefinition = null
        subworkflowStartingState = null
        taskProcessType = null
        taskType = \'PROCEDURE\'
        triggerType = null
        useApproverAcl = \'0\'
        waitForPlannedStartDate = \'0\'
      }
    }

    // Custom properties

    property \'ec_counters\', {

      // Custom properties
      pipelineCounter = \'28\'
    }
  }

  deployerApplication appName, {
    afterLastRetry = null
    applicationProjectName = null
    enforceDependencies = \'0\'
    errorHandling = \'stopOnError\'
    orderIndex = \'1\'
    processName = \'deployApplication\'
    retryCount = null
    retryInterval = null
    retryNotificationTemplate = null
    retryType = null
    smartDeploy = \'0\'
    snapshotName = null
    stageArtifacts = \'0\'
  }

}
'''
  endTargetJson = '''
{
      "source": "parameter",
      "object": "release",
      "objectName": "releaseName",
      "objectProjectName": "releaseProjName"
}
'''
  iconUrl = '/commander/images/company_logo3.png'
  projectName = 'myFourBank'
  useFormalParameter = '1'

  formalParameter 'releaseName', {
    expansionDeferred = '0'
    label = 'Release Name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'pipelineName', {
    expansionDeferred = '0'
    label = 'Pipeline Name'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'appName', {
    expansionDeferred = '0'
    label = 'Application Name'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'releaseProjName', {
    expansionDeferred = '0'
    label = 'Release Project Name'
    orderIndex = '4'
    required = '1'
    type = 'project'
  }
}
