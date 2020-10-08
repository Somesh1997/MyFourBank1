
deployerApplication 'AppDep', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'deploy'
  smartDeploy = '0'
  snapshotName = 'D1.2'
  stageArtifacts = '0'

  deployerConfiguration 'cdf5fad7-06d2-11ea-b820-4201ac142058', {
    deployerTaskName = 'deploy to DIT'
    environmentName = 'AppDep_DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration 'ce0208d2-06d2-11ea-b820-4201ac142058', {
    deployerTaskName = 'deploy to SIT'
    environmentName = 'AppDep_SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration 'ce0febfe-06d2-11ea-bc72-4201ac142058', {
    deployerTaskName = 'deploy to UAT'
    environmentName = 'AppDep_UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
