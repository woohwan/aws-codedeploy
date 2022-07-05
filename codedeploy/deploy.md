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

### Just One EC2 Instance  

사전준비:  

1. 배포하려는 war과 appspec.yml, scripts/* 을 zip 하여 s3에 upload한다  
```  
aws s3 cp .\TestApp.zip s3://steve-codedeploy-bucket/web/target/TestApp.zip
```  
2. Application 생성  
```  
aws deploy create-application --application-name TestApp 
```  

3. 베포그룹 생성  
   tag fileter는 배포할 EC2 instance에 있는 tag 적용  
```
aws deploy create-deployment-group \
  --application-name TestApp \
  --deployment-group-name TestApp-DepGroup \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --ec2-tag-filters Key=Name,Value=''Quterback WAS',Type=KEY_AND_VALUE \
  --service-role-arn arn:aws:iam::532805286864:role/CodeDeployServiceRole
  ```  
1. 배포  
```  
aws deploy create-deployment \
  --application-name TestApp \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name TestApp-DepGroup \
  --s3-location bucket=steve-codedeploy-bucket,bundleType=zip,key=web/target/TestApp.zip
```  