import java.io.File


process 'deployThisApiService', {
  processType = 'DEPLOY'
  projectName = 'myFourBank'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'getYaml', {
    actualParameter = [
      'clone': '0',
      'config': '$[gitYamlConfigName]',
      'dest': './$[/myComponent/componentName]',
      'GitBranch': '$[gitRemoteBranch]',
      'GitRepo': '$[gitRemoteRepo]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'CheckoutCode'
    subproject = '/plugins/ECSCM-Git/project'
    useUtilityResource = '0'
  }

  processStep 'getDockerImageTagFile', {
    actualParameter = [
      'artifacts': '*.txt',
      'build_number': '',
      'config_name': '$[jenkinsConfigName]',
      'job_name': '$[jenkinsJobName]',
      'target_directory': '$[/myComponent/componentName]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'DownloadArtifacts'
    subproject = '/plugins/EC-Jenkins/project'
    useUtilityResource = '0'
  }

  processStep 'processYmlFile', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./components/api-component/processes/deployThisApiService/processSteps/processYmlFile.cmd").text,
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'myFourBank'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }

  processStep 'actualDeploy', {
    actualParameter = [
      'additionalOptionsForKubectl': '',
      'additionalOptionsForKubectlCommand': '',
      'config': '$[k8sConfigName]',
      'fileContent': '',
      'filePath': './$[/myComponent/componentName]/manifests/DEV',
      'resultPropertyPath': '/myJob/$[/myComponent/componentName]',
      'specSource': 'filePath',
      'updateAction': 'apply',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'Create Or Update Objects'
    subproject = '/plugins/EC-Kubectl/project'
    useUtilityResource = '0'
  }

  processDependency 'getDockerImageTagFile', targetProcessStepName: 'processYmlFile', {
    branchType = 'ALWAYS'
  }

  processDependency 'getYaml', targetProcessStepName: 'getDockerImageTagFile', {
    branchType = 'ALWAYS'
  }

  processDependency 'processYmlFile', targetProcessStepName: 'actualDeploy', {
    branchType = 'ALWAYS'
  }
}
