
process 'buildGdocs', {
  applicationName = 'GDOCS'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_casepapi-component-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_casepapi-component-version', defaultValue: '$[/projects/myFourBank/applications/GDOCS/components/casepapi-component/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_gdocs-eapi-component-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_gdocs-eapi-component-version', defaultValue: '$[/projects/myFourBank/applications/GDOCS/components/gdocs-eapi-component/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
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

  formalParameter 'ec_user-management-papi-component-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_user-management-papi-component-version', defaultValue: '$[/projects/myFourBank/applications/GDOCS/components/user-management-papi-component/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  processStep 'buildCasePapi', {
    actualParameter = [
      'iqAnalysisRepo': '/tmp/flow/iqAnalysisRepo',
    ]
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'casepapi-component'
    subcomponentApplicationName = 'GDOCS'
    subcomponentProcess = 'buildCasePapi'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'buildUserManagementPapi', {
    actualParameter = [
      'iqAnalysisRepo': '/tmp/flow/iqAnalysisRepo',
    ]
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'user-management-papi-component'
    subcomponentApplicationName = 'GDOCS'
    subcomponentProcess = 'buildUserManagement'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'buildGdocsEapi', {
    actualParameter = [
      'iqAnalysisRepo': '/tmp/flow/iqAnalysisRepo',
    ]
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'myFourBank'
    subcomponent = 'gdocs-eapi-component'
    subcomponentApplicationName = 'GDOCS'
    subcomponentProcess = 'buildGdocsEapi'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
