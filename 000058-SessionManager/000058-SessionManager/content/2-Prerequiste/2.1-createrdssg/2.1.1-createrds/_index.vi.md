---
title : "Tạo RDS "
weight : 1 
chapter : false
pre : " <b> 2.1.1 </b> "
---



1. Truy cập giao diện quản trị dịch vụ RDS bằng cách:
 - Nhập RDS vào thanh tìm kiếm dịch vụ và chọn Aurora and RDS

![RDS](/images/2.prerequisite/001-createrds.png)

2. Tại trang **Aurora and RDS**.
  + Ấn **Database** rồi ấn **Create database**

![RDS](/images/2.prerequisite/002-createrds.png)

 - Chọn **Standard create** và **PostgreSQL**.
 ![RDS](/images/2.prerequisite/003-createrds.png)
 
- Chọn **Free tier**.
![RDS](/images/2.prerequisite/004-createrds.png)

- Đặt tên cho DB, giữ nguyên Mastername, Self managed và đặt mật khẩu.
![RDS](/images/2.prerequisite/005-createrds.png)

- Ở **Instance configuration** chọn **db.t3.micro**
![RDS](/images/2.prerequisite/006-createrds.png)

- Tại **Connectivity** kéo xuống **Public access**, chọn **Yes**.
![RDS](/images/2.prerequisite/000-createrds.png)

- Cuối cùng chọn **Create database**
![RDS](/images/2.prerequisite/007-createrds.png)
