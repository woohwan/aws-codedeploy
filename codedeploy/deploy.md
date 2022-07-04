### Deploy 순서  

https://docs.aws.amazon.com/ko_kr/codedeploy/latest/userguide/reference-appspec-file-structure.html
```    
version: 0.0
os: operating-system-name
files:
  source-destination-files-mappings
permissions:
  permissions-specifications
hooks:
  deployment-lifecycle-event-mappings
```    



사전준비:  

1. Application 생성  
```  
aws deploy create-application --application-name TestApp 
```  

2. 베포그룹 생성  
```
aws deploy create-deployment-group \
  --application-name TestApp \
  --deployment-group-name TestApp-DepGroup \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --ec2-tag-filters Key=Name,Value=CodeDeployDemo,Type=KEY_AND_VALUE \
  --service-role-arn arn:aws:iam::532805286864:role/CodeDeployServiceRole
```  

