import java.io.File


process 'buildThisApiService', {
  processType = 'OTHER'
  projectName = 'myFourBank'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'prepBuild', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./components/api-component/processes/buildThisApiService/processSteps/prepBuild.cmd").text,
      'shellToUse': '/bin/sh',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'myFourBank'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }

  processStep 'buildWithJenkins', {
    actualParameter = [
      'config_name': '$[jenkinsConfigName]',
      'jenkins_enable_parallel_mode': '0',
      'job_name': '$[jenkinsJobName]',
      'parameters': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'RunAndWait'
    subproject = '/plugins/EC-Jenkins/project'
    useUtilityResource = '0'
  }

  processStep 'downloadJarFromJenkins', {
    actualParameter = [
      'artifacts': '*.$[iqArtifactExtension]',
      'build_number': '',
      'config_name': '$[jenkinsConfigName]',
      'job_name': '$[jenkinsJobName]',
      'target_directory': '$[iqAnalysisRepoDirectory]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'DownloadArtifacts'
    subproject = '/plugins/EC-Jenkins/project'
    useUtilityResource = '0'
  }

  processStep 'downloadSonarAndDockerTagInformationFromJenkins', {
    actualParameter = [
      'artifacts': '*.txt',
      'build_number': '',
      'config_name': '$[jenkinsConfigName]',
      'job_name': '$[jenkinsJobName]',
      'target_directory': '$[/myComponent/componentName]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'DownloadArtifacts'
    subproject = '/plugins/EC-Jenkins/project'
    useUtilityResource = '0'
  }

  processStep 'getSonarResults', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./components/api-component/processes/buildThisApiService/processSteps/getSonarResults.cmd").text,
      'shellToUse': '/bin/sh',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'myFourBank'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }

  processStep 'querySonar', {
    actualParameter = [
      'config': '$[sonarQubeConfigName]',
      'resultFormat': 'propertysheet',
      'resultSonarProperty': '/myJob/$[/myComponent/componentName]/getLastSonarMetrics',
      'sonarMetricsComplexity': 'all',
      'sonarMetricsDocumentation': 'all',
      'sonarMetricsDuplications': 'all',
      'sonarMetricsIssues': 'all',
      'sonarMetricsMaintainability': 'all',
      'sonarMetricsMetrics': 'all',
      'sonarMetricsQualityGates': 'all',
      'sonarMetricsReliability': 'all',
      'sonarMetricsSecurity': 'all',
      'sonarMetricsTests': 'all',
      'sonarProjectKey': '$[/myJob/$[/myComponent/componentName]/sonarQubeProjectKey]',
      'sonarProjectName': 'myFourBankProjectName',
      'sonarProjectVersion': 'myFourBankProjectVersion',
      'sonarTaskId': '$[/myJob/$[/myComponent/componentName]/sonarQubeTaskId]',
      'sonarTimeout': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'myFourBank'
    subprocedure = 'Get Last SonarQube Metrics'
    subproject = '/plugins/EC-SonarQube/project'
    useUtilityResource = '0'
  }

  processStep 'updateSonarResults', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./components/api-component/processes/buildThisApiService/processSteps/updateSonarResults.cmd").text,
      'shellToUse': '/bin/sh',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'myFourBank'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }

  processDependency 'prepBuild', targetProcessStepName: 'buildWithJenkins', {
    branchType = 'ALWAYS'
  }

  processDependency 'buildWithJenkins', targetProcessStepName: 'downloadJarFromJenkins', {
    branchType = 'ALWAYS'
  }

  processDependency 'buildWithJenkins', targetProcessStepName: 'downloadSonarAndDockerTagInformationFromJenkins', {
    branchType = 'ALWAYS'
  }

  processDependency 'downloadSonarAndDockerTagInformationFromJenkins', targetProcessStepName: 'getSonarResults', {
    branchType = 'ALWAYS'
  }

  processDependency 'getSonarResults', targetProcessStepName: 'querySonar', {
    branchType = 'ALWAYS'
  }

  processDependency 'querySonar', targetProcessStepName: 'updateSonarResults', {
    branchType = 'ALWAYS'
  }
}
