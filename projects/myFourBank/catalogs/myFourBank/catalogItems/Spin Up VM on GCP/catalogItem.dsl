
catalogItem 'Spin Up VM on GCP', {
  description = '''<xml>
  <title>
    Spin Up VM on GCP with Terraform
  </title>

  <htmlData>
    <![CDATA[
      
    ]]>
  </htmlData>
</xml>'''
  allowScheduling = '0'
  buttonLabel = 'Create'
  catalogName = 'myFourBank'
  dslParamForm = ''
  dslString = ''
  iconUrl = '/commander/images/company_logo3.png'
  projectName = 'myFourBank'
  subprocedure = 'spinUpTerraform'
  useFormalParameter = '0'

  formalParameter 'TerraformConfig', defaultValue: 'adf-terraform1', {
    expansionDeferred = '0'
    label = 'Terraform Config'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }
}
