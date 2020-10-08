
process 'deploy', {
  processType = 'DEPLOY'
  projectName = 'myFourBank'
  timeLimitUnits = 'minutes'

  processStep 'retrieve', {
    actualParameter = [
      'artifactName': '$[/myComponent/ec_content_details/artifactName]',
      'artifactVersionLocationProperty': '$[/myComponent/ec_content_details/artifactVersionLocationProperty]',
      'filterList': '$[/myComponent/ec_content_details/filterList]',
      'overwrite': '$[/myComponent/ec_content_details/overwrite]',
      'retrieveToDirectory': '$[/myComponent/ec_content_details/retrieveToDirectory]',
      'versionRange': '$[/myJob/ec_Component1-version]',
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
}
