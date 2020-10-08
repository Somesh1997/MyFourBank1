
component 'AuthServices-api-component', {
  description = 'AuthServices-api-component'
  actualParameter = [
    'gitRemoteBranch': 'feature/update-gcp-verion',
    'gitRemoteRepo': 'gitRepo/myFourBank-cloudbees-flow-pov/kubernetes-manifests-cape-auth-server.git',
    'gitYamlConfigName': 'git-lillian',
    'iqAnalysisRepoDirectory': '/tmp/flow/iqAnalysisRepo',
    'iqArtifactExtension': 'jar',
    'jenkinsConfigName': 'adf-jenkins',
    'jenkinsJobName': 'myFourBankCLOUD/job/Application_Delivery_Framework/job/CloudBeeFlow-PoV/job/cape-use-case/job/cape-authServer-again',
    'k8sConfigName': 'adfKubectl',
    'sonarQubeConfigName': 'devsupport-sonar',
  ]
  applicationName = 'AuthServices'
  projectName = 'myFourBank'
  reference = '1'
  sourceComponentName = 'api-component'
  sourceProjectName = 'myFourBank'
}
