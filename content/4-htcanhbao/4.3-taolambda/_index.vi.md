---
title : "Tạo Lambda Function"
weight : 3
chapter : false
pre : " <b> 4.3 </b> "
---


1. Nhập **Lambda** trên thanh dịch vụ và chọn **Lambda**.
![WN](/images/4.warning/009-cb.png)


+ Chọn **Create a function**.
![WN](/images/4.warning/010-ld.png)

2. Tại trang Create function:
  + Tại **Function name** nhập tên function `Predict-And-Alert-Function`

  + Tại **Runtime** chọn Python 3.9.

  + Mục **Use an existing role** chọn PredictorLambdaRole.

  + Cuối cùng chọn Create function
![WN](/images/4.warning/011-ld.png)

3. VIết đoạn [**code**](https://drive.google.com/file/d/1uB7ZRpQ6YirmA9i0AOi1csgY740WT1my/view?usp=sharing) này cho lambda.

4. Trong tab **Configuration****** -> **General configuration**, tăng **Timeout** lên 2 min, tăng **Memory** lên 512GB .
![WN](/images/4.warning/012-ld.png)
![WN](/images/4.warning/013-ld.png)

+ Kéo xuống dưới rồi ấn **Save**



5. Sau khi tạo Lambda, chúng ta cần tạo Layer cho lambda. Vì khu vực **us-east-1** không hỗ trợ nên sẽ dùng Layer ngoài.
+ Tải file [**Layer**](https://drive.google.com/file/d/1-SOPrjQeBqiEAPBKPmUKFeZZaxYChv1G/view?usp=sharing) xuống.
+ Truy cập vào S3, vào bucket đã tạo, chọn Upload.
![WN](/images/4.warning/014-ld.png)

+ Chọn **Add file**, sau đó chọn file vừa tải về, sau đó ấn **Upload**.
![WN](/images/4.warning/015-ld.png)
+ Sau khi tải lên thành công, chọn file vừa tải lên, chọn **Copy S3 URI**.
![WN](/images/4.warning/016-ld.png)
+ Quay lại trang Lambda, chọn **Layers**, Chọn **Create layer**.
![WN](/images/4.warning/017-ld.png)
+ Điền tên layer là `scikit-learn-pandas-layer`, chọn **Upload a file from Amazon S3**, sau đó dán đường dẫn S3 URI đã copy ở trên vào ô **Amazon S3 link URL**, chọn **x86_64**, **Python 3.9**. Cuối cùng ấn **Create**.
![WN](/images/4.warning/018-ld.png)

6. Quay lại trang Lambda, trong phần **Layers**, chọn **Add a layer**.
![WN](/images/4.warning/019-ld.png)
+ Tại Choose a layer chọn **Custom layers** sau đó chọn `scikit-learn-pandas-layer`, chọn version mới nhất rồi ấn **Add**.







 
