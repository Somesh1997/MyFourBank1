
task 'Create GSD Ticket', {
  description = ''
  actualParameter = [
    'AuditUser': 'gsduat062',
    'BackoutDuration': '172800',
    'CAB': 'Global',
    'Changetype': 'Normal',
    'ClarityPrjIdList': '''<ProjectDetails>
<ProjectId>10000/SSP00384/00001</ProjectId>
</ProjectDetails>''',
    'config': 'JaiGSD',
    'ConfigItemsList': '''<CIDetails>
<CIName>HTSN-SERVICE-NO-CI-GLOBAL</CIName>
<CIClass>Infrastructure Service</CIClass>
</CIDetails>''',
    'Impact': 'LOW',
    'ITSANFRCmpltd': 'true',
    'NFRMPRefNum': '1234567',
    'OptionalAttrVals': '''<ChgString>Requestor</ChgString>
<ChgString>43473451</ChgString>
<ChgString>Summary</ChgString>
<ChgString>CloudBees Flow PoV GSD plugin</ChgString>
<ChgString>Description</ChgString>
<ChgString>CloudBees Flow PoV GSD plugin</ChgString>
<ChgString>Justification</ChgString>
<ChgString>CloudBees Flow PoV GSD plugin</ChgString>''',
    'OutsideSchMaintWindow': 'true',
    'PCRecords': '''<PackageDetails>
<PackageId>com.company.gbm.survit.titan#hackcicd#hackcicd#df17207015c</PackageId>
<DeploymentTool>Surv-Jenkins</DeploymentTool>
</PackageDetails>''',
    'RequirePrivilegeAccess': 'true',
    'Risk': '0-Not Assessed',
    'ScheduleDuration': '172800',
    'ScheduleStartDate': '2019-11-21',
    'ScheduleStartTime': '17:00:00',
    'SourceChangeOrder': 'CR22596',
    'VerificationDuration': '172800',
    'VerificationStartDate': '2019-12-31',
    'VerificationStartTime': '23:00:00',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'myFourBank'
  resourceName = ''
  skippable = '0'
  stageSummaryParameters = '[{"name":"referenceNumber","label":"GSD Reference Number"}]'
  subpluginKey = 'EC-CAGlobalServiceDesk'
  subprocedure = 'Copy Change Request'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
