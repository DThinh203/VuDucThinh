---
title : "Hệ thống cảnh báo"
weight : 4 
chapter : false
pre : " <b> 4. </b> "
---
{{% notice info %}}
Sau khi đã có một mô hình Machine Learning được huấn luyện ở Phần 3, bây giờ là lúc chúng ta "triển khai" nó vào một hệ thống tự động. Trong phần này, chúng ta sẽ xây dựng một quy trình khép kín để mô hình có thể đưa ra dự đoán theo lịch trình và gửi cảnh báo khi cần thiết.
{{% /notice %}}

Chúng ta sẽ kết hợp sức mạnh của ba dịch vụ serverless cốt lõi của AWS:
* **AWS Lambda** sẽ đóng vai trò là "bộ não" thực thi, chạy mã nguồn dự đoán của chúng ta.
* **Amazon SNS** sẽ là "người đưa tin", chịu trách nhiệm gửi cảnh báo qua email.
* **Amazon EventBridge** sẽ là "đồng hồ báo thức", tự động kích hoạt toàn bộ quy trình theo một lịch trình định trước.


### Nội dung:

  - [Tạo Kênh Thông Báo-Amazon SNS](./4.1-amazonsns/)
  - [Tạo IAM](./4.2-taoiam/)
  - [Tạo Lambda Function](./4.3-taolambda/)
  - [Lên Lịch Thực Thi - Amazon EventBridge](./4.4-amazoneventbridge/)
