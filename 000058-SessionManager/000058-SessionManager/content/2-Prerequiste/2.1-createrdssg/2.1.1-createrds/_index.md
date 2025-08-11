---
title : "Create RDS"
weight : 1 
chapter : false
pre : " <b> 2.1.1 </b> "
---



1. Access the RDS service management interface by:
 - Enter RDS in the service search bar and select Aurora and RDS

![RDS](/images/2.prerequisite/001-createrds.png)

2. On the **Aurora and RDS** page.
  + Click **Database** then click **Create database**

![RDS](/images/2.prerequisite/002-createrds.png)

- Select **Standard create** and **PostgreSQL**.
 ![RDS](/images/2.prerequisite/003-createrds.png)
 
- Select **Free tier**.
![RDS](/images/2.prerequisite/004-createrds.png)

- Set a name for the DB, keep the default Master name, Self managed and set a password.
![RDS](/images/2.prerequisite/005-createrds.png)

- In **Instance configuration** select **db.t3.micro**
![RDS](/images/2.prerequisite/006-createrds.png)

- In **Connectivity** scroll down to **Public access**, select **Yes**.
![RDS](/images/2.prerequisite/000-createrds.png)

- Finally select **Create database**
![RDS](/images/2.prerequisite/007-createrds.png)