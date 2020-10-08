
deployerApplication 'GDOCS', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'deployGdocs'
  smartDeploy = '0'
  stageArtifacts = '0'

  deployerConfiguration '6665007b-0c30-11ea-bc72-4201ac142058', {
    deployerTaskName = 'Build and Scan using Jenkins'
    environmentName = 'GDOCS-DIT'
    insertRollingDeployManualStep = '0'
    processName = 'buildGdocs'
    skipDeploy = '0'
    stageName = 'Dev'
  }

  deployerConfiguration '667664a8-0c30-11ea-b820-4201ac142058', {
    deployerTaskName = 'Deploy in DIT'
    environmentName = 'GDOCS-DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration '6686432a-0c30-11ea-936d-4201ac142058', {
    deployerTaskName = 'Deploy in SIT'
    environmentName = 'GDOCS-SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration '66990870-0c30-11ea-bc2c-4201ac142058', {
    deployerTaskName = 'Deploy in UAT'
    environmentName = 'GDOCS-UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }
}
