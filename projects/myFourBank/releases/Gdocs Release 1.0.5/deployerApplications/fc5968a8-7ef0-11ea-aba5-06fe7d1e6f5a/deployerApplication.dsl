
deployerApplication 'GDOCS', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'deployGdocs'
  smartDeploy = '0'
  stageArtifacts = '0'

  deployerConfiguration '1cc628d4-0c35-11ea-882f-4201ac142058', {
    deployerTaskName = 'Build and Scan using Jenkins'
    environmentName = 'GDOCS-DIT'
    insertRollingDeployManualStep = '0'
    processName = 'buildGdocs'
    skipDeploy = '0'
    stageName = 'Dev'
  }

  deployerConfiguration '1ce1c72e-0c35-11ea-882f-4201ac142058', {
    deployerTaskName = 'Deploy in DIT'
    environmentName = 'GDOCS-DIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'DIT'
  }

  deployerConfiguration '1cf74b08-0c35-11ea-882f-4201ac142058', {
    deployerTaskName = 'Deploy in SIT'
    environmentName = 'GDOCS-SIT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'SIT'
  }

  deployerConfiguration '1d13ac70-0c35-11ea-bc72-4201ac142058', {
    deployerTaskName = 'Deploy in UAT'
    environmentName = 'GDOCS-UAT'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'UAT'
  }

  deployerConfiguration 'e826b42a-0c57-11ea-b157-4201ac142058', {
    deployerTaskName = 'Deploy in PROD'
    environmentName = 'GDOCS-PROD'
    insertRollingDeployManualStep = '0'
    skipDeploy = '0'
    stageName = 'PROD'
  }
}
