
process 'deployAuthServices', {
  applicationName = 'AuthServices'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_AuthServices-api-component-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_AuthServices-api-component-version', defaultValue: '$[/projects/myFourBank/components/api-component/ec_content_details/version]', {
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

  processStep 'actualDeploy', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'AuthServices-api-component'
    subcomponentApplicationName = 'AuthServices'
    subcomponentProcess = 'deployThisApiService'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
