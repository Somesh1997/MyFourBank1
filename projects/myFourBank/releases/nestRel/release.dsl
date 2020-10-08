
release 'nestRel', {
  description = ''
  disableMultipleActiveRuns = '0'
  plannedEndDate = '2019-12-05'
  plannedStartDate = '2019-11-21'
  projectName = 'myFourBank'

  subrelease {
    subreleaseName = 'nestDep'
    subreleaseProject = 'myFourBank'
  }
}
