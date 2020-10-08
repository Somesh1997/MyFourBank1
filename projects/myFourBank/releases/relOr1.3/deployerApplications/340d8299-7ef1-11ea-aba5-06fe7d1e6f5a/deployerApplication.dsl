
deployerApplication 'AppRel', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'deployAll'
  smartDeploy = '0'
  snapshotName = 'R1.3'
  stageArtifacts = '0'

  deployerConfiguration '0d046514-06cf-11ea-882f-4201ac142058', {
    deployerTaskName = 'deploy to DIT'
    environmentName = 'DIT_AppRel'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration '0d2310b8-06cf-11ea-b820-4201ac142058', {
    deployerTaskName = 'deploy to SIT'
    environmentName = 'SIT_AppRel'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration '0d344ecf-06cf-11ea-b157-4201ac142058', {
    deployerTaskName = 'deploy to UAT'
    environmentName = 'UAT_AppRel'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
