
process 'deploy', {
  applicationName = 'AppDep'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_Component4-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Component4-version', defaultValue: '$[/projects/myFourBank/applications/AppDep/components/Component4/ec_content_details/versionRange]', {
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

  processStep 'deployC4', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'Component4'
    subcomponentApplicationName = 'AppDep'
    subcomponentProcess = 'deploy'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
