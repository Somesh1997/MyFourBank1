import java.io.File


process 'deployUserManagementPapi', {
  processType = 'DEPLOY'
  projectName = 'myFourBank'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'getYaml', {
    actualParameter = [
      'clone': '0',
      'config': 'git-lillian',
      'dest': './$[/myComponent/componentName]',
      'GitBranch': 'master',
      'GitRepo': 'gitRepo/myFourBank-cloudbees-flow-pov/kubernetes-manifests-gdocs-user-management.git',
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

  processStep 'processYmlFile', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/GDOCS/applicationTiers/Tier 1/components/user-management-papi-component/processes/deployUserManagementPapi/processSteps/processYmlFile.cmd").text,
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
      'config': 'adfKubectl',
      'fileContent': '',
      'filePath': './$[/myComponent/componentName]/manifests/DEV',
      'resultPropertyPath': '/myJob',
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

  processDependency 'getYaml', targetProcessStepName: 'processYmlFile', {
    branchType = 'ALWAYS'
  }

  processDependency 'processYmlFile', targetProcessStepName: 'actualDeploy', {
    branchType = 'ALWAYS'
  }
}
