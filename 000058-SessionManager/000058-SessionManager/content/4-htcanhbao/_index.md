---
title : "Alert System"
weight : 4 
chapter : false
pre : " <b> 4. </b> "
---
{{% notice info %}}
After having a trained Machine Learning model in Part 3, now it's time to "deploy" it into an automated system. In this section, we will build a closed-loop process so the model can make predictions on schedule and send alerts when necessary.
{{% /notice %}}

We will combine the power of three core AWS serverless services:
* **AWS Lambda** will act as the "brain" executor, running our prediction source code.
* **Amazon SNS** will be the "messenger", responsible for sending alerts via email.
* **Amazon EventBridge** will be the "alarm clock", automatically triggering the entire process on a predetermined schedule.


### Content:

  - [Create Notification Channel - Amazon SNS](./4.1-amazonsns/)
  - [Create IAM](./4.2-taoiam/)
  - [Create Lambda Function](./4.3-taolambda/)
  - [Schedule Execution - Amazon EventBridge](./4.4-amazoneventbridge/)