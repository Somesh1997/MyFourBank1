
deployerApplication 'BOI', {
  enforceDependencies = '1'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  smartDeploy = '1'
  stageArtifacts = '1'

  deployerConfiguration '4068f564-09cc-11ea-8e52-4201ac142058', {
    deployerTaskName = 'Build in Dev'
    environmentName = 'BOI-Dev'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'Dev'
  }

  deployerConfiguration '4075ed65-09cc-11ea-a8a1-4201ac142058', {
    deployerTaskName = 'Deploy in DIT'
    environmentName = 'BOI-DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration '40813829-09cc-11ea-936d-4201ac142058', {
    deployerTaskName = 'Deploy in SIT'
    environmentName = 'BOI-SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration '408d6d88-09cc-11ea-bc2c-4201ac142058', {
    deployerTaskName = 'Deploy in UAT'
    environmentName = 'BOI-UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
