---
title : "Testing"
weight : 5 
chapter : false
pre : " <b> 5. </b> "
---

{{% notice info %}}
In this section we will check whether the model works and sends notifications to our email.
{{% /notice %}}


1. Access Lambda, select Functions, go to the Lambda Function created.
+ Click deploy to check Lambda code.
![TS](/images/5.test/000-ts.png)
2. Select Test section and select Test to check model operation.
![test](/images/5.test/001-ts.png)

+ The image below shows an error that prevents the model from working
![test](/images/5.test/002-ts.png)

This error occurs when we create **EventBridge** without creating role and policies to trigger Lambda.

3. Create Policies.
+ Go to **IAM**, select **Policies**, select **Create Policy**. Enter the following [**code**](https://drive.google.com/file/d/1RfvLMhlHzYYmzp6HdOYBQVd93PWs60Zl/view?usp=sharing) into JSON in the **Create Policy** page and click Next.
+ Name the Policy and click **Create Policy**.
![test](/images/5.test/003-ts.png)

4. Create Role.
+ Go to **IAM**, select **Roles**, select **Create Role**.
+ Select **Custom trust policy**, paste this [**code**](https://drive.google.com/file/d/1mCWIhlPi8GpcfnOgXFCzX81Odq0syqoL/view?usp=sharing) into JSON, then click Next.
![test](/images/5.test/004-ts.png)
+ On the **Add permissions** page, enter the newly created Policy `InvokePredictLambdaPolicy`, select it then click Next, name the role `EventBridgeInvokeLambdaRole` then click Create Role.

![test](/images/5.test/005-ts.png)

5. Go back to Amazon EventBridge, select Schedules, click on the schedule name Run-Predictor-Rule then select Edit.
![test](/images/5.test/006-ts.png)

+ Click Next to go to Step 3: Settings. In the Permissions section, select **Use existing role**.

+ In the dropdown menu, find and select the Role you just created: `EventBridgeInvokeLambdaRole`.

![test](/images/5.test/007-ts.png)


+ Click Next and **Update schedule**.

6. Return to the Lambda page, run Test again, check Gmail to see if there are any notifications. If yes, you have succeeded.