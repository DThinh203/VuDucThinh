---
title : "Lên Lịch Thực Thi - Amazon EventBridge"
weight : 4
chapter : false
pre : " <b> 4.4 </b> "
---


1. Nhập **EventBridge** trên thanh tìm kiếm dịch vụ, chọn **Amazon EventBridge**.
![WN](/images/4.warning/021-ld.png)

2. Ở thanh menu bên trái chọn **Rules**, chọn **Create rule**.
![WN](/images/4.warning/022-ld.png)

3. Trong tràn Create rule, Nhập name `Run-Predictor-Rule`, chọn **Schedule** sau đó ấn **Continue in EventBridge Scheduler**.
![WN](/images/4.warning/023-ld.png)

+ Mục Occurrence chọn **Recurring schedule**, Schedule type chọn **Rate-based schedule** và cài cài đặt 15 phút sau đó ấn Next
![WN](/images/4.warning/024-ld.png)
+ Trong mục Target chọn AWS Lambda, chọn Lambda function đã tạo.
![WN](/images/4.warning/025-ld.png)
+  Ấn Next cho tới cuối chọn **Create schedule**.

