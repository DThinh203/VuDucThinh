---
title : "Create Lambda Function"
weight : 3
chapter : false
pre : " <b> 4.3 </b> "
---


1. Enter **Lambda** in the service bar and select **Lambda**.
![WN](/images/4.warning/009-cb.png)


+ Select **Create a function**.
![WN](/images/4.warning/010-ld.png)

2. On the Create function page:
  + In **Function name** enter the function name `Predict-And-Alert-Function`

  + In **Runtime** select Python 3.9.

  + In **Use an existing role** section select PredictorLambdaRole.

  + Finally select Create function
![WN](/images/4.warning/011-ld.png)

3. Write this [**code**](https://drive.google.com/file/d/1uB7ZRpQ6YirmA9i0AOi1csgY740WT1my/view?usp=sharing) for lambda.

4. In the **Configuration** tab -> **General configuration**, increase **Timeout** to 2 min, increase **Memory** to 512GB.
![WN](/images/4.warning/012-ld.png)
![WN](/images/4.warning/013-ld.png)

+ Scroll down and click **Save**



5. After creating Lambda, we need to create a Layer for lambda. Since the **us-east-1** region doesn't support it, we'll use an external Layer.
+ Download the [**Layer**](https://drive.google.com/file/d/1-SOPrjQeBqiEAPBKPmUKFeZZaxYChv1G/view?usp=sharing) file.
+ Access S3, go to the created bucket, select Upload.
![WN](/images/4.warning/014-ld.png)

+ Select **Add file**, then select the downloaded file, then click **Upload**.
![WN](/images/4.warning/015-ld.png)
+ After successful upload, select the uploaded file, select **Copy S3 URI**.
![WN](/images/4.warning/016-ld.png)
+ Return to the Lambda page, select **Layers**, Select **Create layer**.
![WN](/images/4.warning/017-ld.png)
+ Enter layer name `scikit-learn-pandas-layer`, select **Upload a file from Amazon S3**, then paste the copied S3 URI link into the **Amazon S3 link URL** box, select **x86_64**, **Python 3.9**. Finally click **Create**.
![WN](/images/4.warning/018-ld.png)

6. Return to the Lambda page, in the **Layers** section, select **Add a layer**.
![WN](/images/4.warning/019-ld.png)
+ In Choose a layer select **Custom layers** then select `scikit-learn-pandas-layer`, select the latest version then click **Add**.