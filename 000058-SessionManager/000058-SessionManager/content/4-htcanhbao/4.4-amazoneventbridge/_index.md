---
title : "Schedule Execution - Amazon EventBridge"
weight : 4
chapter : false
pre : " <b> 4.4 </b> "
---


1. Enter **EventBridge** in the service search bar, select **Amazon EventBridge**.
![WN](/images/4.warning/021-ld.png)

2. In the left menu bar select **Rules**, select **Create rule**.
![WN](/images/4.warning/022-ld.png)

3. In the Create rule page, enter name `Run-Predictor-Rule`, select **Schedule** then click **Continue in EventBridge Scheduler**.
![WN](/images/4.warning/023-ld.png)

+ In Occurrence section select **Recurring schedule**, Schedule type select **Rate-based schedule** and set it to 15 minutes then click Next
![WN](/images/4.warning/024-ld.png)
+ In Target section select AWS Lambda, select the Lambda function created.
![WN](/images/4.warning/025-ld.png)
+ Click Next until the end and select **Create schedule**.