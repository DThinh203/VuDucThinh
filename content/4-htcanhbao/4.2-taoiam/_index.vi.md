---
title : "Tạo IAM"
weight : 2 
chapter : false
pre : " <b> 4.2 </b> "
---

1. Vào IAM -> Roles -> Create role.
![WN](/images/4.warning/005-cb.png)

2. Tại Trusted entity chọn **AWS service**, Use case: **Lambda** rồi **Next**.
![WN](/images/4.warning/006-cb.png)

4. Gắn các policies: **AmazonS3ReadOnlyAccess**, **SecretsManagerReadWrite**, **AmazonSNSFullAccess**.
![WN](/images/4.warning/007-cb.png)


5. Đặt tên role là PredictorLambdaRole.
![WN](/images/4.warning/008-cb.png)
