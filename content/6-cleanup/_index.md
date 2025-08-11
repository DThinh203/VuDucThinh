---
title : "Clean up resources"
weight : 6
chapter : false
pre : " <b> 6. </b> "
---

We will proceed with the following steps to delete the resources we created in this lab.

1. Delete EventBridge Schedule, go to Amazon EventBridge service.

In the left menu, select Schedules.

Find the schedule named Run-Predictor-Rule, tick the square box next to it and click Delete.
![DT](/images/6.clean/000-dt.png)

2. Delete Lambda Function and Layer

+ Go to AWS Lambda service, in the left menu, select Functions.

+ Select the Predict-And-Alert-Function function and click Actions -> Delete.
![DT](/images/6.clean/001-dt.png)

+ In the left menu, select Layers.

+ Select the scikit-learn-pandas-layer layer and click Delete.
![DT](/images/6.clean/002-dt.png)

3. Delete SageMaker Studio Environment

+ Go to **Amazon SageMaker AI** service, in the left menu, select **Domains**.

+ Click on your Domain name (QuickSetupDomain-...).

+ In the User profiles tab, select your user and click Delete.
![DT](/images/6.clean/003-dt.png)

+ After deleting all users, return to the Domains list page, tick the circle next to the Domain name and click Delete.
![DT](/images/6.clean/004-dt.png)

4. Delete RDS Database, this is one of the main cost sources.
+ Go to Amazon RDS service, select **Databases**, select **workshop-db** instance.
Click **Actions** -> Delete.
![DT](/images/6.clean/005-dt.png)

In the confirmation window, uncheck the **Create final snapshot?** box (to delete immediately and not incur snapshot storage costs), then enter delete me and confirm.

5. Delete S3 Bucket

+ Go to Amazon S3 service.

+ Click on your bucket name **ml-db-workshop-data**.

Select all files and folders inside, then click Delete to empty the bucket.
![DT](/images/6.clean/006-dt.png)

Return to the bucket list, select the empty bucket and click Delete.
![DT](/images/6.clean/007-dt.png)

6. Delete SNS Topic

+ Go to Amazon SNS service, select Topics.

Select the **DB_Alerts_Topic** topic and click Delete.

![DT](/images/6.clean/008-dt.png)


7. Delete IAM Roles and Policies

+ Go to IAM service, select Roles. Find and delete each of the following roles:

PredictorLambdaRole

EventBridgeInvokeLambdaRole

AmazonSageMaker-ExecutionRole-...
![DT](/images/6.clean/009-dt.png)


+ In the left menu, select Policies. Find and delete the InvokePredictLambdaPolicy policy.
![DT](/images/6.clean/010-dt.png)