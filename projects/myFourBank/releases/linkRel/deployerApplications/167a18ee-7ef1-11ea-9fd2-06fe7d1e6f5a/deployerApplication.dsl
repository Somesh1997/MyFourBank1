
deployerApplication 'AppRel', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '2'
  processName = 'deployAll'
  smartDeploy = '0'
  snapshotName = 'R1.3'
  stageArtifacts = '0'

  deployerConfiguration 'ce1da754-06d2-11ea-936d-4201ac142058', {
    deployerTaskName = 'deploy to DIT'
    environmentName = 'DIT_AppRel'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration 'ce2a2ae0-06d2-11ea-b157-4201ac142058', {
    deployerTaskName = 'deploy to SIT'
    environmentName = 'SIT_AppRel'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration 'ce48af10-06d2-11ea-8e52-4201ac142058', {
    deployerTaskName = 'deploy to UAT'
    environmentName = 'UAT_AppRel'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
