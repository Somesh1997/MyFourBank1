
environment 'AppDep_UAT', {
  description = 'Slide 7 for capabilities 1, 2, 3, 6 & 7'
  environmentEnabled = '1'
  projectName = 'myFourBank'
  reservationRequired = '0'
  rollingDeployEnabled = '1'
  rollingDeployType = 'phase'

  rollingDeployPhase 'Blue', {
    orderIndex = '1'
    rollingDeployPhaseType = 'tagged'
  }

  rollingDeployPhase 'Green', {
    orderIndex = '2'
    rollingDeployPhaseType = 'untagged'
  }

  environmentTier 'Tier 1', {
    resourceName = [
      'local copy',
    ]
  }
}
