
deployerApplication 'AuthServices', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '2'
  processName = 'deployAuthServices'
  smartDeploy = '0'
  stageArtifacts = '0'

  deployerConfiguration '66ab09e1-0c30-11ea-882f-4201ac142058', {
    deployerTaskName = 'Build and Scan using Jenkins'
    environmentName = 'AuthServices-DIT'
    insertRollingDeployManualStep = '0'
    processName = 'deployAuthServices'
    skipDeploy = '0'
    stageName = 'Dev'
  }

  deployerConfiguration '66bb5d8d-0c30-11ea-95f3-4201ac142058', {
    deployerTaskName = 'Deploy in DIT'
    environmentName = 'AuthServices-DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration '66c966f8-0c30-11ea-9666-4201ac142058', {
    deployerTaskName = 'Deploy in SIT'
    environmentName = 'AuthServices-SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration '66dd1675-0c30-11ea-b6d5-4201ac142058', {
    deployerTaskName = 'Deploy in UAT'
    environmentName = 'AuthServices-UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
