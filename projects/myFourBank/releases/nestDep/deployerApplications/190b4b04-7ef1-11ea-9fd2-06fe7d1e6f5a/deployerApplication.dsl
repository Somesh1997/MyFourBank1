
deployerApplication 'AppDep', {
  enforceDependencies = '1'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'deploy'
  smartDeploy = '1'
  snapshotName = 'D1.2'
  stageArtifacts = '1'

  deployerConfiguration 'f16f9217-0c27-11ea-882f-4201ac142058', {
    deployerTaskName = 'deploy to DIT'
    environmentName = 'AppDep_DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration 'f17f978f-0c27-11ea-bc2c-4201ac142058', {
    deployerTaskName = 'deploy to SIT'
    environmentName = 'AppDep_SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration 'f190fbdc-0c27-11ea-b820-4201ac142058', {
    deployerTaskName = 'deploy to UAT'
    environmentName = 'AppDep_UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
