---
title : "Kiểm tra"
weight : 5 
chapter : false
pre : " <b> 5. </b> "
---

{{% notice info %}}
Phần này chúng ta sẽ kiểm tra xem, model có hoạt động và có gửi thông báo về email cho chúng ta không.
{{% /notice %}}


1. Truy cập vào Lambda, chọn Functions, vào Lambda Function đã tạo.
+ Ấn deploy để kiểm tra code Lambda.
![TS](/images/5.test/000-ts.png)
2. Chọn mục Test và chọn Test để kiểm tra hoạt động của model.
![test](/images/5.test/001-ts.png)

+ Trong hình dưới đây là lỗi làm cho model không hoạt động
![test](/images/5.test/002-ts.png)

Lỗi này xảy ra khi chúng ta tạo **EventBridge** không tạo role và policies để kích hoạt Lambda.

3. Tạo Policies.
+ Vào **IAM**, chọn **Policies**, chọn **Create Policy**. Nhập đoạn [**code**](https://drive.google.com/file/d/1RfvLMhlHzYYmzp6HdOYBQVd93PWs60Zl/view?usp=sharing) sau đây vào JSon trong trang **Create Policy** và ấn Next.
+ Đặt tên cho Policies rồi ấn **Create Policy**.
![test](/images/5.test/003-ts.png)

4.Tạo Role.
+ Vào **IAM**, chọn **Roles**, chọn **Create Role**.
+ Chọn **Custom trust policy**, dán đoạn [**code**](https://drive.google.com/file/d/1mCWIhlPi8GpcfnOgXFCzX81Odq0syqoL/view?usp=sharing) này vào JSon, sau đó ấn Next.
![test](/images/5.test/004-ts.png)
+ Ở trang **Add permissions**, NHập Policy mới tạo `InvokePredictLambdaPolicy`, chọn sau đó ấn Next, đặt tên role `EventBridgeInvokeLambdaRole` rồi ấn Create Role.

![test](/images/5.test/005-ts.png)

5. Vào lại Amazon EventBridge, chọn Schedulesm, bấm vào tên schedule Run-Predictor-Rule rồi chọn Edit.
![test](/images/5.test/006-ts.png)

+ Bấm Next để đi đến Step 3: Settings. Trong mục Permissions, chọn **Use existing role**.

+ Trong menu thả xuống, tìm và chọn Role bạn vừa tạo: `EventBridgeInvokeLambdaRol`.

![test](/images/5.test/007-ts.png)


+ Bấm Next và **Update schedule**.

6. Quay lại trang Lambda, Chạy Test lại, kiểm tra Gmail xem có thông báo không. Nếu có thì bạn đã thành công.

