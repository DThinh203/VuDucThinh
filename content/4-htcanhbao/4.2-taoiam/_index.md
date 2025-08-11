---
title : "Create IAM"
weight : 2 
chapter : false
pre : " <b> 4.2 </b> "
---

1. Go to IAM -> Roles -> Create role.
![WN](/images/4.warning/005-cb.png)

2. At Trusted entity select **AWS service**, Use case: **Lambda** then **Next**.
![WN](/images/4.warning/006-cb.png)

4. Attach policies: **AmazonS3ReadOnlyAccess**, **SecretsManagerReadWrite**, **AmazonSNSFullAccess**.
![WN](/images/4.warning/007-cb.png)


5. Name the role PredictorLambdaRole.
![WN](/images/4.warning/008-cb.png)