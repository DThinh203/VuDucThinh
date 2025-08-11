---
title : "Thiết lập Amazon Sagemaker"
weight : 1 
chapter : false
pre : " <b> 2.3 </b> "
---

Đây là bước thiết lập môi trường làm việc chính của chúng ta, nơi sẽ diễn ra việc phân tích dữ liệu và huấn luyện mô hình Machine Learning.

### Các bước thực hiện:

1.  **Tạo SageMaker Domain:**
    + Truy cập dịch vụ **Amazon SageMaker**.

![SGM](/images/2.prerequisite/021-sgm.png)

+ Ở menu bên trái, chọn **Studio**.

+ Chọn **Create a SageMaker domain**.
    
![SGM](/images/2.prerequisite/022-sgm.png)

+ Bấm **'Quick setup'** để bắt đầu. AWS sẽ tự động cấu hình một Domain cho bạn.

![SGM](/images/2.prerequisite/023-sgm.png)
+ Chọn **Set up**.


2.  **Cấp quyền truy cập S3:**
    + SageMaker cần quyền để đọc dữ liệu từ S3 và lưu mô hình đã huấn luyện. Chúng ta sẽ cấp quyền này thông qua IAM Role.
    + Truy cập dịch vụ **IAM (Identity and Access Management)**.
    ![IAM](/images/2.prerequisite/024-iam.png)

    + Ở menu bên trái, chọn **Roles**.
    + Tìm Role có tên chứa `AmazonSageMaker-ExecutionRole` mà SageMaker vừa tạo ở bước trên.
    ![IAM](/images/2.prerequisite/025-iam.png)

    + Bấm vào tên Role đó, sau đó chọn **Add permissions -> Attach policies**.
    ![IAM](/images/2.prerequisite/026-iam.png)
    + Tìm và gắn policy có tên **`AmazonS3FullAccess`**.
    ![IAM](/images/2.prerequisite/027-iam.png)
 
3.  **Khởi chạy Studio:**
    + Quay lại trang SageMaker Domain, chờ đến khi trạng thái là **'InService'**.
     ![IAM](/images/2.prerequisite/028-sgm.png)
    + Trong trang chi tiết của Domain, tạo một **User Profile** (ví dụ: `workshop-user`) hoặc sử dụng user `default` có sẵn.
    + Bấm **Launch -> Studio** để mở môi trường làm việc.
     ![IAM](/images/2.prerequisite/029-sgm.png)

    + Đây là giao diện hoạt động sau khi chọn Studio.
    ![SGM](/images/2.prerequisite/030-sgm.png)

