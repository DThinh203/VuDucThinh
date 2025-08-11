---
title : "Set up Amazon SageMaker"
weight : 3 
chapter : false
pre : " <b> 2.3 </b> "
---

This is the step to set up our main working environment, where data analysis and Machine Learning model training will take place.

### Implementation steps:

1.  **Create SageMaker Domain:**
    + Access **Amazon SageMaker** service.

![SGM](/images/2.prerequisite/021-sgm.png)

+ In the left menu, select **Studio**.

+ Select **Create a SageMaker domain**.
    
![SGM](/images/2.prerequisite/022-sgm.png)

+ Click **'Quick setup'** to start. AWS will automatically configure a Domain for you.

![SGM](/images/2.prerequisite/023-sgm.png)
+ Select **Set up**.


2.  **Grant S3 access permissions:**
    + SageMaker needs permission to read data from S3 and save trained models. We will grant this permission through IAM Role.
    + Access **IAM (Identity and Access Management)** service.
    ![IAM](/images/2.prerequisite/024-iam.png)

    + In the left menu, select **Roles**.
    + Find the Role with a name containing `AmazonSageMaker-ExecutionRole` that SageMaker just created in the step above.
    ![IAM](/images/2.prerequisite/025-iam.png)

    + Click on that Role name, then select **Add permissions -> Attach policies**.
    ![IAM](/images/2.prerequisite/026-iam.png)
    + Find and attach the policy named **`AmazonS3FullAccess`**.
    ![IAM](/images/2.prerequisite/027-iam.png)
 
3.  **Launch Studio:**
    + Return to the SageMaker Domain page, wait until the status is **'InService'**.
     ![IAM](/images/2.prerequisite/028-sgm.png)
    + In the Domain details page, create a **User Profile** (e.g., `workshop-user`) or use the existing `default` user.
    + Click **Launch -> Studio** to open the working environment.
     ![IAM](/images/2.prerequisite/029-sgm.png)

    + This is the interface after selecting Studio.
    ![SGM](/images/2.prerequisite/030-sgm.png)