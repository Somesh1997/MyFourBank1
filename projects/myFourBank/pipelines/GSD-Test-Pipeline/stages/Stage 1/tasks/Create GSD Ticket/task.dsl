
task 'Create GSD Ticket', {
  description = ''
  actualParameter = [
    'AuditUser': 'gsduat062',
    'BackoutDuration': '18000',
    'CAB': 'Global',
    'Changetype': 'Normal',
    'ClarityPrjIdList': '''<ProjectDetails>
<ProjectId>10000/SSP00384/00001</ProjectId>
</ProjectDetails>''',
    'config': 'JaiGSD',
    'ConfigItemsList': '''<CIDetails>
<CIName>APP_NAME</CIName>
<CIClass>Batch</CIClass>
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
    'Risk': '1-Very Low',
    'ScheduleDuration': '172800',
    'ScheduleStartDate': '2019-12-22',
    'ScheduleStartTime': '07:00:00',
    'SourceChangeOrder': 'CR22598',
    'VerificationDuration': '17',
    'VerificationStartDate': '2020-01-25',
    'VerificationStartTime': '08:00:00',
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
  subpluginKey = 'EC-CAGlobalServiceDesk'
  subprocedure = 'Copy Change Request'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
