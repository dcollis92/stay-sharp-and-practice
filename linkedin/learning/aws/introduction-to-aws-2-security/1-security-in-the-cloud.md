# Introduction to AWS for Non-Engineers: 1 Cloud Concepts

## **Security in the Cloud**

---

### 1.1 Security in the Cloud

Transcript:
Security in the Cloud. If you're anything like me, when you think about security for your data and your IT infrastructure, you probably think of the server room in your office, locked with a card key that only the IT department has. Or maybe your company has a data center off-site that you have to drive two hours to get to, to make sure your backups are being saved securely. When you get to the data center, you probably encounter a lot of security personnel and need to submit a lot of credentials to step into the facility and get anywhere near the servers. This image of securing data is quickly being replaced by cloud-based security where you no longer have to keep costly data centers functioning and secured. Instead, you can have a cloud computing service provider manage their own data centers on your behalf so you can focus on other aspects of IT infrastructure management. When you deploy your IT resources into AWS Cloud, you benefit from the global network of data centers and architecture built with security in mind. AWS helps you keep your data safe in their highly secure data centers, and there are safeguards in place to help protect customer privacy. There are dozens of compliance programs embedded into AWS to help you meet your industry's compliance requirements for data security. Securing your data on AWS Cloud allows you to maintain the highest standard of security without having to manage your own data centers, which saves you time and money. It also allows you to scale the size of your business quickly, as AWS is designed to keep data safe no matter how big or small your cloud usage is. Let's learn about a few concepts and frameworks for security in the cloud before discussing specific security-related services that AWS offers.

### **----- BULLET POINT NOTES -----**

#### IT Infrastructure: In the Past
  - Server rooms secured with key cards (aka Terminator 2)
  - Off-site data centers
  - Lots of security devices and people
  - Difficult to access

#### IT Infrastructure: Present-Day AWS Cloud
  - Global network of data centers built with security in mind
  - Safeguards to protect customer privacy
  - Dozens of compliance programs to help meet industry compliance requirements for data security

In AWS Cloud, IT Infrastructure Looks like...
  - High-security standards without needs for your own data centers
  - Scale your business quickly

---

### 1.2 Shared Responsibility Model

Transcript:
When utilizing the cloud to house any part of your technical infrastructure, you must first consider the security impacts of moving your resources onto the cloud. Unlike the on-premises data center that is protected by the virtue of being within your physical reach, data centers hosting your cloud resources are in an undisclosed location in data centers managed by AWS. So who's responsible for the security of the data center? The servers? The networks? The data itself? All those EC2 instances that are running computations. Who makes sure their security patches are up to date? Who protects the data from being corrupted? AWS has a model that helps to puzzle these questions out, called the Shared Responsibility Model. As you might expect from the name, the Shared Responsibility Model asserts that the security of cloud functioning infrastructures is a shared responsibility between the customer and AWS. While there are certain parts of the infrastructure that the customers no longer have to worry about, there are still components that are the customer's responsibilities to secure. In the most basic breakdown, AWS is responsible for the security of the cloud, while you, the customer, are responsible for security in the cloud. Let's see if we can deconstruct what AWS might mean by this. When AWS says that they are responsible for security of the cloud, they mean that AWS is responsible for protecting the infrastructure that runs all of the services offered by AWS Cloud. This includes hardware, software, networking and the data center facilities that run their cloud computing platform. You can think of it like, AWS is responsible for security of the components that make up the AWS Cloud, like the data centers and physical servers. On the other hand, when AWS says that the customers are responsible for security in the cloud, they mean that the customers are responsible for varying levels of security functions, depending on which services they are using. These could be in forms of protecting customer data, platform, application, and identity or access management. Or operating systems of virtual machines, configuring firewalls and data encryption. You can think about it like, we are responsible for the security of things inside the AWS Cloud, like data encryption and patching servers. There are many granular settings and concepts within the Shared Responsibility Model for AWS Cloud, which you can read on their website. But the basic concept that you need to know for the exam when this model is brought up is this, AWS is responsible for security of the cloud, while you, as the customer, are responsible for security in the cloud.

### **----- BULLET POINT NOTES -----**

#### Shared Responsibility Model
  - Security of cloud computing infrastructres and data is shared responsiblity between the customer and AWS
    - AWS: Security OF the Cloud
    - Customer: Security IN the Cloud

#### AWS: Security of the Cloud
  - AWS is responsible for protecting the infrastructure, such as:
    - Physical security of data centers hosting the AWS Cloud
    - Security of hardware, software, networking, and so on, that runs the cloud computing services

#### You: Security in the Cloud
  - You are responsible of varying levels of security functions, depending on the AWS Cloud service used, such as:
    - Protecting customer data and encryption
    - Identity and Access Management
    - Patching operating systems of VMs
    - Configuring firewalls
    - Data Encryption



---

### 1.3 Well-Architected Framework

Transcript:

---

### 1.4 Principle of Least Privilege

Transcript:

---

### 1.5 AWS Cloud Compliance

Transcript:

---

### 1.6 Study Break: Security Domain

Transcript:

---

### Chapter Quiz

Transcript:

---



