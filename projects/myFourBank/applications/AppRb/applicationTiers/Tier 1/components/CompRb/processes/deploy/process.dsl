import java.io.File


process 'deploy', {
  processType = 'DEPLOY'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  processStep 'tryDeployComp', {
    actualParameter = [
      'artifactName': '$[/myComponent/ec_content_details/artifactName]',
      'artifactVersionLocationProperty': '$[/myComponent/ec_content_details/artifactVersionLocationProperty]',
      'filterList': '$[/myComponent/ec_content_details/filterList]',
      'overwrite': '$[/myComponent/ec_content_details/overwrite]',
      'retrieveToDirectory': '$[/myComponent/ec_content_details/retrieveToDirectory]',
      'versionRange': '$[/myJob/ec_CompRb-version]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'component'
    projectName = 'myFourBank'
    subprocedure = 'Retrieve'
    subproject = '/plugins/EC-Artifact/project'
    useUtilityResource = '0'
  }

  processStep 'if', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/AppRb/applicationTiers/Tier 1/components/CompRb/processes/deploy/processSteps/if.cmd").text,
      'shellToUse': '/bin/sh',
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

  processDependency 'tryDeployComp', targetProcessStepName: 'if', {
    branchType = 'ALWAYS'
  }
}
