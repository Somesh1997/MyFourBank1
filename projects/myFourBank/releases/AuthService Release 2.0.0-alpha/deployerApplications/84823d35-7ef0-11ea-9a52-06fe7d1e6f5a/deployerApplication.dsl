
deployerApplication 'AuthServices', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'deployAuthServices'
  smartDeploy = '0'
  stageArtifacts = '0'

  deployerConfiguration '250b23c1-0aca-11ea-936d-4201ac142058', {
    deployerTaskName = 'Build and Scan using Jenkins'
    environmentName = 'AuthServices-DIT'
    insertRollingDeployManualStep = '0'
    processName = 'buildAuthServices'
    skipDeploy = '0'
    stageName = 'Dev'
  }

  deployerConfiguration '25184358-0aca-11ea-95f3-4201ac142058', {
    deployerTaskName = 'Deploy in DIT'
    environmentName = 'AuthServices-DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration '2525d867-0aca-11ea-bc2c-4201ac142058', {
    deployerTaskName = 'Deploy in SIT'
    environmentName = 'AuthServices-SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration '2537b270-0aca-11ea-b820-4201ac142058', {
    deployerTaskName = 'Deploy in UAT'
    environmentName = 'AuthServices-UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }

  deployerConfiguration '5e42b214-0b5b-11ea-b820-4201ac142058', {
    deployerTaskName = 'Deploy in PROD'
    environmentName = 'AuthServices-PROD'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'PROD'
  }
}
