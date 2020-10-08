
process 'deployAll', {
  applicationName = 'AppRel'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_Component1-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Component1-version', defaultValue: '$[/projects/myFourBank/applications/AppRel/components/Component1/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_Component2-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Component2-version', defaultValue: '$[/projects/myFourBank/applications/AppRel/components/Component2/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_Component3-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Component3-version', defaultValue: '$[/projects/myFourBank/applications/AppRel/components/Component3/ec_content_details/versionRange]', {
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

  processStep 'deployC1', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'Component1'
    subcomponentApplicationName = 'AppRel'
    subcomponentProcess = 'deploy'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'deployC2', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'Component2'
    subcomponentApplicationName = 'AppRel'
    subcomponentProcess = 'deploy'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'deployC3', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'Component3'
    subcomponentApplicationName = 'AppRel'
    subcomponentProcess = 'deploy'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
