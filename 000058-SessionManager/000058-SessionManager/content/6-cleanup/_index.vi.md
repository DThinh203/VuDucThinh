+++
title = "Dọn dẹp tài nguyên  "
date = 2021
weight = 6
chapter = false
pre = "<b>6. </b>"
+++

Chúng ta sẽ tiến hành các bước sau để xóa các tài nguyên chúng ta đã tạo trong bài thực hành này.

1. Xóa Lịch trình EventBridge,vào dịch vụ Amazon EventBridge.

Ở menu bên trái, chọn Schedules.

Tìm schedule có tên Run-Predictor-Rule, tick vào ô vuông bên cạnh và bấm Delete.
![DT](/images/6.clean/000-dt.png)

2. Xóa Lambda Function và Layer

+ Vào dịch vụ AWS Lambda, ở menu bên trái, chọn Functions.

+ Chọn hàm Predict-And-Alert-Function và bấm Actions -> Delete.
![DT](/images/6.clean/001-dt.png)

+ Ở menu bên trái, chọn Layers.

+ Chọn layer scikit-learn-pandas-layer và bấm Delete.
![DT](/images/6.clean/002-dt.png)

3. Xóa Môi trường SageMaker Studio

+ Vào dịch vụ **Amazon SageMaker AI**, ở menu bên trái, chọn **Domains**.

+ Bấm vào tên Domain của bạn (QuickSetupDomain-...).

+ Trong tab User profiles, chọn user của bạn và bấm Delete.
![DT](/images/6.clean/003-dt.png)

+ Sau khi xóa hết user, quay lại trang danh sách Domains, tick vào ô tròn bên cạnh tên Domain và bấm Delete.
![DT](/images/6.clean/004-dt.png)

4. Xóa Cơ sở dữ liệu RDS, đây là một trong những nguồn chi phí chính.
+ Vào dịch vụ Amazon RDS, chọn **Databases**, chọn instance **workshop-db**.
Bấm **Actions** -> Delete.
![DT](/images/6.clean/005-dt.png)

Trong cửa sổ xác nhận, bỏ tick ở ô **Create final snapshot?** (để xóa ngay và không tốn chi phí lưu trữ snapshot), sau đó nhập delete me và xác nhận.

5. Xóa S3 Bucket

+ Vào dịch vụ Amazon S3.

+ Bấm vào tên bucket của bạn **ml-db-workshop-data**.

Chọn tất cả các file và thư mục bên trong, sau đó bấm Delete để làm rỗng (empty) bucket.
![DT](/images/6.clean/006-dt.png)

Quay lại danh sách các bucket, chọn bucket đã rỗng và bấm Delete.
![DT](/images/6.clean/007-dt.png)

6. Xóa SNS Topic

+ Vào dịch vụ Amazon SNS, chọn Topics.

Chọn topic **DB_Alerts_Topic** và bấm Delete.

![DT](/images/6.clean/008-dt.png)


7. Xóa IAM Roles và Policies

+ Vào dịch vụ IAM, chọn Roles. Tìm và xóa từng role sau:

PredictorLambdaRole

EventBridgeInvokeLambdaRole

AmazonSageMaker-ExecutionRole-...
![DT](/images/6.clean/009-dt.png)


+ Ở menu bên trái, chọn Policies. Tìm và xóa policy InvokePredictLambdaPolicy.
![DT](/images/6.clean/010-dt.png)