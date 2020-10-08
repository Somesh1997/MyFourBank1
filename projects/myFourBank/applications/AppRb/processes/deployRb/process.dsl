import java.io.File


process 'deployRb', {
  applicationName = 'AppRb'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_CompRb-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_CompRb-version', defaultValue: '$[/projects/myFourBank/applications/AppRb/components/CompRb/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'deployComp', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'CompRb'
    subcomponentApplicationName = 'AppRb'
    subcomponentProcess = 'deploy'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'ok', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/AppRb/processes/deployRb/processSteps/ok.cmd").text,
      'shellToUse': '/bin/sh',
    ]
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'myFourBank'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'rollback', {
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'rollback'
    projectName = 'myFourBank'
    rollbackType = 'environment'
    smartRollback = '1'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processDependency 'deployComp', targetProcessStepName: 'ok', {
    branchCondition = '$[/myJob/ec_CompRb-version] != "1.2"'
    branchConditionName = 'Not1.2'
    branchConditionType = 'CUSTOM'
    branchType = 'ALWAYS'
  }

  processDependency 'deployComp', targetProcessStepName: 'rollback', {
    branchCondition = '$[/myJob/ec_CompRb-version] == "1.2"'
    branchConditionName = '1.2'
    branchConditionType = 'CUSTOM'
    branchType = 'ALWAYS'
  }
}
