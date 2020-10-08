import java.io.File


process 'buildCasePapi', {
  processType = 'OTHER'
  projectName = 'myFourBank'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  formalParameter 'iqAnalysisRepo', defaultValue: '/tmp/flow/iqAnalysisRepo', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  processStep 'prepBuild', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/GDOCS/applicationTiers/Tier 1/components/casepapi-component/processes/buildCasePapi/processSteps/prepBuild.cmd").text,
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
      'config_name': 'adf-jenkins',
      'jenkins_enable_parallel_mode': '0',
      'job_name': 'myFourBankCloud/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/gdocs-use-case/job/SPCOEPTL-191-Case-PAPI-CBF',
      'parameters': 'flowId=$[/myJob/jobId]',
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
      'artifacts': '*.jar',
      'build_number': '',
      'config_name': 'adf-jenkins',
      'job_name': 'myFourBankCloud/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/gdocs-use-case/job/SPCOEPTL-191-Case-PAPI-CBF',
      'target_directory': '$[iqAnalysisRepo]',
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

  processStep 'downloadSonarInformationFromJenkins', {
    actualParameter = [
      'artifacts': '*.txt',
      'build_number': '',
      'config_name': 'adf-jenkins',
      'job_name': 'myFourBankCloud/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/gdocs-use-case/job/SPCOEPTL-191-Case-PAPI-CBF',
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
      'commandToRun': new File(projectDir, "./applications/GDOCS/applicationTiers/Tier 1/components/casepapi-component/processes/buildCasePapi/processSteps/getSonarResults.cmd").text,
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
      'config': 'devsupport-sonar',
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
      'commandToRun': new File(projectDir, "./applications/GDOCS/applicationTiers/Tier 1/components/casepapi-component/processes/buildCasePapi/processSteps/updateSonarResults.cmd").text,
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

  processDependency 'querySonar', targetProcessStepName: 'updateSonarResults', {
    branchType = 'ALWAYS'
  }

  processDependency 'buildWithJenkins', targetProcessStepName: 'downloadJarFromJenkins', {
    branchType = 'ALWAYS'
  }

  processDependency 'buildWithJenkins', targetProcessStepName: 'downloadSonarInformationFromJenkins', {
    branchType = 'ALWAYS'
  }

  processDependency 'prepBuild', targetProcessStepName: 'buildWithJenkins', {
    branchType = 'ALWAYS'
  }

  processDependency 'getSonarResults', targetProcessStepName: 'querySonar', {
    branchType = 'ALWAYS'
  }

  processDependency 'downloadSonarInformationFromJenkins', targetProcessStepName: 'getSonarResults', {
    branchType = 'ALWAYS'
  }
}
