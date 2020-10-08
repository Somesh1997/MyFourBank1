
catalogItem '1-API Docker/K8S Application', {
  description = '''<xml>
  <title>
    Creates a 1-API service Docker / K8S to be deployed with Kubectl to GKE, EKS, AKS, ...
  </title>

  <htmlData>
    <![CDATA[
      <div>Create myFourBank Application</div>
    ]]>
  </htmlData>
</xml>'''
  allowScheduling = '0'
  buttonLabel = 'Create'
  catalogName = 'myFourBank'
  dslString = '''def jenkinsConfigName = args.jenkinsConfigName,
    jenkinsJobName = args.jenkinsJobName,
    iqAnalysisRepoDirectory = args.iqAnalysisRepoDirectory,
    iqArtifactExtension = args.iqArtifactExtension,
    sonarQubeConfigName = args.sonarQubeConfigName,
    gitYamlConfigName = args.gitYamlConfigName,
    gitRemoteRepo = args.gitRemoteRepo,
    k8sConfigName = args.k8sConfigName,
    appName = args.appName,
    appProjName = args.appProjName,
    appCompName = args.appCompName

// Create Objects
transaction {

application appName, {
  description = \'\'
  projectName = appProjName

  applicationTier \'Tier 1\', {
    applicationName = appName
    projectName = appProjName

    component (appCompName, pluginName: null){
      description = \'AuthServices-api-component\'
      actualParameter = [
        \'gitRemoteRepo\': gitRemoteRepo,
        \'gitYamlConfigName\': gitYamlConfigName ,
        \'iqAnalysisRepoDirectory\': iqAnalysisRepoDirectory ,
        \'iqArtifactExtension\': iqArtifactExtension ,
        \'jenkinsConfigName\': jenkinsConfigName ,
        \'jenkinsJobName\': jenkinsJobName ,
        \'k8sConfigName\': k8sConfigName ,
        \'sonarQubeConfigName\': sonarQubeConfigName
      ]
      applicationName = appName
      pluginKey = null
      projectName = appProjName
      sourceComponentName = \'api-component\'
      sourceProjectName = \'myFourBank\'
      reference = \'1\' 
    }
  }

  process \'buildApplication\', {
    applicationName = appName
    exclusiveEnvironment = \'0\'
    processType = \'OTHER\'
    projectName = appProjName
    serviceName = null
    smartUndeployEnabled = null
    timeLimitUnits = null
    workingDirectory = null
    workspaceName = null

    formalParameter \'ec_AuthServices-api-component-run\', defaultValue: \'1\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    formalParameter \'ec_AuthServices-api-component-version\', defaultValue: \'$[/projects/myFourBank/components/api-component/ec_content_details/version]\', {
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'entry\'
    }

    formalParameter \'ec_enforceDependencies\', defaultValue: \'0\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    formalParameter \'ec_smartDeployOption\', defaultValue: \'1\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    formalParameter \'ec_stageArtifacts\', defaultValue: \'0\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    processStep \'actualBuild\', {
      actionLabelText = null
      afterLastRetry = null
      allowSkip = null
      alwaysRun = \'0\'
      applicationTierName = \'Tier 1\'
      componentRollback = null
      dependencyJoinType = \'and\'
      disableFailure = null
      emailConfigName = null
      errorHandling = \'abortJob\'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      processStepType = \'process\'
      projectName = appProjName
      retryCount = null
      retryInterval = null
      retryType = null
      rollbackSnapshot = null
      rollbackType = null
      rollbackUndeployProcess = null
      skipRollbackIfUndeployFails = null
      smartRollback = null
      subcomponent = \'AuthServices-api-component\'
      subcomponentapplicationName = appName
      subcomponentProcess = \'buildThisApiService\'
      subprocedure = null
      subproject = null
      subservice = null
      subserviceProcess = null
      timeLimitUnits = null
      useUtilityResource = \'0\'
      utilityResourceName = null
      workingDirectory = null
      workspaceName = null

      // Custom properties

      property \'ec_deploy\', {

        // Custom properties
        ec_notifierStatus = \'0\'
      }
    }

    // Custom properties

    property \'ec_deploy\', {

      // Custom properties
      ec_notifierStatus = \'0\'
    }
  }

  process \'deployApplication\', {
    applicationName = appName
    exclusiveEnvironment = \'0\'
    processType = \'OTHER\'
    projectName = appProjName
    serviceName = null
    smartUndeployEnabled = null
    timeLimitUnits = null
    workingDirectory = null
    workspaceName = null

    formalParameter \'ec_AuthServices-api-component-run\', defaultValue: \'1\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    formalParameter \'ec_AuthServices-api-component-version\', defaultValue: \'$[/projects/myFourBank/components/api-component/ec_content_details/version]\', {
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'entry\'
    }

    formalParameter \'ec_enforceDependencies\', defaultValue: \'0\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    formalParameter \'ec_smartDeployOption\', defaultValue: \'1\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    formalParameter \'ec_stageArtifacts\', defaultValue: \'0\', {
      checkedValue = null
      expansionDeferred = \'1\'
      label = null
      orderIndex = null
      required = \'0\'
      type = \'checkbox\'
      uncheckedValue = null
    }

    processStep \'actualDeploy\', {
      actionLabelText = null
      afterLastRetry = null
      allowSkip = null
      alwaysRun = \'0\'
      applicationTierName = \'Tier 1\'
      componentRollback = null
      dependencyJoinType = \'and\'
      disableFailure = null
      emailConfigName = null
      errorHandling = \'abortJob\'
      instruction = null
      notificationEnabled = null
      notificationTemplate = null
      processStepType = \'process\'
      projectName = appProjName
      retryCount = null
      retryInterval = null
      retryType = null
      rollbackSnapshot = null
      rollbackType = null
      rollbackUndeployProcess = null
      skipRollbackIfUndeployFails = null
      smartRollback = null
      subcomponent = \'AuthServices-api-component\'
      subcomponentapplicationName = appName
      subcomponentProcess = \'deployThisApiService\'
      subprocedure = null
      subproject = null
      subservice = null
      subserviceProcess = null
      timeLimitUnits = null
      useUtilityResource = \'0\'
      utilityResourceName = null
      workingDirectory = null
      workspaceName = null

      // Custom properties

      property \'ec_deploy\', {

        // Custom properties
        ec_notifierStatus = \'0\'
      }
    }

    // Custom properties

    property \'ec_deploy\', {

      // Custom properties
      ec_notifierStatus = \'0\'
    }
  }

  // Custom properties

  property \'ec_deploy\', {

    // Custom properties
    ec_notifierStatus = \'0\'
  }

  property \'jobCounter\', value: \'22\', {
    expandable = \'1\'
    suppressValueTracking = \'1\'
  }
}

}'''
  endTargetJson = ''' 
{
      "source": "parameter",
      "object": "application",
      "objectName": "appName",
      "objectProjectName": "appProjName"
}
 '''
  iconUrl = '/commander/images/company_logo3.png'
  projectName = 'myFourBank'
  useFormalParameter = '1'

  formalParameter 'appName', {
    expansionDeferred = '0'
    label = 'Application Name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'appCompName', {
    expansionDeferred = '0'
    label = 'Component Name'
    orderIndex = '2'
    required = '0'
    type = 'entry'
  }

  formalParameter 'appProjName', defaultValue: 'myFourBank', {
    expansionDeferred = '0'
    label = 'Project Name'
    orderIndex = '3'
    required = '1'
    type = 'project'
  }

  formalParameter 'jenkinsConfigName', {
    expansionDeferred = '0'
    label = 'Jenkins Config Name'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'jenkinsJobName', {
    expansionDeferred = '0'
    label = 'Jenkins Job Name'
    orderIndex = '5'
    required = '1'
    type = 'entry'
  }

  formalParameter 'iqAnalysisRepoDirectory', {
    expansionDeferred = '0'
    label = 'iq Analysis Repo Directory'
    orderIndex = '6'
    required = '1'
    type = 'entry'
  }

  formalParameter 'iqArtifactExtension', defaultValue: 'jar', {
    expansionDeferred = '0'
    label = 'iq Artifact Extension'
    orderIndex = '7'
    required = '1'
    type = 'entry'
  }

  formalParameter 'sonarQubeConfigName', {
    expansionDeferred = '0'
    label = 'sonarQube Config Name'
    orderIndex = '8'
    required = '1'
    type = 'entry'
  }

  formalParameter 'gitYamlConfigName', {
    expansionDeferred = '0'
    label = 'git Yaml Config Name'
    orderIndex = '9'
    required = '1'
    type = 'entry'
  }

  formalParameter 'gitRemoteRepo', {
    expansionDeferred = '0'
    label = 'git Remote Repo URL'
    orderIndex = '10'
    required = '1'
    type = 'entry'
  }

  formalParameter 'k8sConfigName', {
    description = ''
    expansionDeferred = '0'
    label = 'k8s Config Name'
    orderIndex = '11'
    required = '1'
    type = 'entry'
  }
}
