
cluster 'testGceCluster', {
  environmentName = 'testGceEnvironment'
  pluginKey = 'EC-GoogleContainerEngine'
  projectName = 'myFourBank'
  provisionParameter = [
    'clusterName': 'testGceCluster',
    'clusterProjectID': '',
    'config': '',
    'diskSize': '',
    'enableAutoscaling': '',
    'imageType': '',
    'machineType': '',
    'masterZone': '',
    'maxNodeCount': '',
    'minNodeCount': '',
    'network': '',
    'nodePoolName': '',
    'nodePoolSize': '',
  ]
  provisionProcedure = 'Provision Cluster'
}
