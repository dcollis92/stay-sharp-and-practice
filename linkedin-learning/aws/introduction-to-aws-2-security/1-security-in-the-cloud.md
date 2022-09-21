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

Transcript: - Security in a Well-Architected IT infrastructure. When you're considering architecting how your AWS cloud IT infrastructure will look, you will have to put in a lot of considerations on how to make sure that it is secure from both external and internal threats. AWS has developed the concept called the five pillars of a well architected framework to help you build the most secure, fault resilient, efficient and high performing IT infrastructure possible. The pillars are discussed in detail in the first course of this series titled Introduction to AWS for non engineers, one cloud concepts. Since this course pertains to security, we'll be doing a deeper dive into you guessed it, the security pillar. They are Identity and Access Management or IAM, Detective Controls, Infrastructure Protection, Data Protection and Incident Response. To make sure user access is manage properly, you would want to implement a strong identity foundation. This would entail utilizing the principle of least privilege, which means that you only provide access to what people need to do their jobs, and no more. We will go over this concept in more detail in the next video. You should enable traceability by monitoring alerts, audit actions and changes to your environment in real time. Security should be applied on all layers instead of just on a single outer layer of your infrastructure. For a virtual server, this could mean that you make sure your infrastructure is secured at the organizational subnet, load balancer virtual machine in the operating system layers. Security best practices should also be automated, so that you can scale more rapidly and cost effectively. If the security methods are automated, You can just replicate that for every new instance or resource you deploy instead of having to manually set them up. Data should be protected At Rest and In Transit data is At Rest when it is stored somewhere like in an S3 bucket. Data is In Transit when it is moving from one place to another, such as when you send an email from your mail server to your friend's mail server. Security mechanisms should be adjusted depending on sensibility of the data. You should also keep people away from the data by eliminating the need for direct access or manual processing of data. In this way, human error and loss or modification of sensitive data can be prevented. Finally, when a security event occurs, you should be prepared to intervene, investigate and deal with the event. And once the issue is resolved, update the incident management process to learn from the security event. Security is a very vital part of running and architecting a well architected framework. You can strive for stability by focusing on protecting the data and resources against security events. And when an event occurs to learn from the event and update Incident Management procedures.

### **----- BULLET POINT NOTES -----**

#### AWS Five Pillars of a Well-Architected Framework
- Operational Excellence
- Security
- Reliability
- Performance Efficiency
- Cost Optimization  

#### Security
- Identity and Access Management (IAM)
  - Actively manage all-user access
  - Use strong identity foundation
  - Priciple of least privilege
- Detective Controls
  - Enable tracability: "Who did what, when?
  - Actively monitor alerts
  - Audit actions and changes to environment in real time
- Infrastructure Protection
  - Apply security on all layers of infrastructure
  - Not just the outer layer like the physical data center
  - Virtual servers: secure multiple layers like subnet, load balancer and OS
  - Security best practices should be automated to save time and money when scaling
- Data Protection
  - At Rest:
    - Image saved in S3 bucket
  - In Transit:
    - Email being sent from one server to another
  - Security mechanisms should be adjusted depending on the sensitivity of the data
  - Keep people away from data
    - prevent human error
- Incident Response
  - Intervene, investigate, and deal with all security events
  - Once issue is resolved, update incident management process
  - Contiue to learn from past mistakes and security events

---

### 1.4 Principle of Least Privilege

Transcript: Principle of least privilege. Who can access what? When you start a new job, you get some accounts to log in. It can be your not so new computer with someone else's coffee stains on the keys, or your corporate email account that has fifty emails waiting for you already. Or, it could be your company's shared network drive on the server, where your team and your predecessors have been keeping documents that everyone needs to access. Say you work in the sales departmnet. You should have access only to resources and information that you require to do your job. That could be the client list for your team, or deck templates for slideshows you will now be creating to present to potential clients. Or, even the products you are selling, however, you will not expect and should not have access to resources like pending legal cases being handled by the legal department, the not-yet released product mock-ups being developed by your dev teams, or list of personnel reshuffling that the HR department is contemplating. This concept of providing access only to resources that a person needs to do his job, and no more, is called the principle of least privilege. The concept is this. The CEO of the company should have access to a lot of the corporate resources. The newly hired sales associate should not. The IT department should have the ability to administer the services, but probably not have access to the sensitive information and files themselves. Every role has a set of access permissions necessary to effectively complete its job, and the individual in the role should have no more or no less than the optimal level of access. To follow the principle of least privilege in AWS, you provide access to services and resources for your users and other AWS services by using a service called Identity Access Management, or IAM. When you provide users or services access using IAM policies you should start with a minimum set of permissions and grant additional permissions only as necessary. Determine what the user or service needs to be able to do and craft policies to allow them to perform only those specific tasks. For example, a marketing manager might need to access certain marketing-related S3 bucket to upload flat files for the company's website. You may remember that S3 is a file store service offered by AWS, and buckets are like folders inside the service that holds your files. However, he will not need access to the S3 buckets where air logs are being dumped into by an app being developed by the dev team. The IAM access granted to the marketing manager should provide him only the absolute necessary access in the company's AWS cloud infrastructure. Remember to provide only the minimum amount of access a person or service requires and nothing more to keep your AWS cloud infrastructure secured.

### **----- BULLET POINT NOTES -----**

#### Principle of Least Privilege
- Every role has a set of access permissions necessary to effectively complete its job, and the individual in the role should have no more or no less than the optimal level of access.

#### Principle of Least Privilege in AWS
- Use Access Management (IAM) to provide access
- You can provide access to resources to both users and other AWS services
- Start with mimimum set of permissions, and grant additional only as necessary
- Determine what user/service needs to be able to do and craft policies to perform only those specific tasks.
  
#### EXAMPLE:
  - Marketing Manager
    - WOULD NEED:
      - S3 bucket upload access to company website
      - S3 bucket view access to company access
    - WOULD NOT NEED:
    - S3 bucket view access toDevTeam error logs
    - S3 bucket edit access to DevTeam production
  
---

### 1.5 AWS Cloud Compliance

Transcript:
AWS has many compliance programs available for your review in order to determine whether your industry allows you to store data or use AWS for your business. You can find the AWS Compliance Programs by going to aws.amazon.com/compliance/programs. Let's take a look together. Here, we can see that the AWS Compliance Programs are divided up into regions of the world. There's also a whole entire section on privacy. That's definitely a big one for the data on the cloud. If your organization deals with patient data in the United States, you would need to be cognizant of HIPAA. You can find out how AWS is compliant with HIPAA and how data is secured on AWS. Let's take a look. Let's see, here we go. Laws, regulations, privacy, HIPAA. If you had any questions, the quick FAQ will respond to many of the common questions. There are many compliance programs available for review. And this page allows you to easily find out whether your resources can or cannot be hosted on AWS if you have compliance requirements for your data. Again, you can find the information on aws.amazon.com/compliance/programs.

---

### 1.6 Study Break: Security Domain

Transcript:
What are the differences between security in the Cloud and security in an on-premises data center? Security in the Cloud may look a little different, and include some added benefits. Let's review the security domain of the AWS Certified Cloud Practitioner Exam together. Some topics we'll be covering are the security in the Cloud, Shared Responsibility Model, security pillar of the Well-Architected Framework, Principle of Least Privilege, and AWS Cloud Compliance. Let's go. One of the biggest benefits of utilizing Cloud computing is that you no longer have to purchase equipment and maintain your own data center to run IT resources. Cloud computing providers like AWS manage the data centers so you can focus on other aspects of IT infrastructure management. When you deploy to the AWS Cloud, you benefit from the global network of data centers and architecture built with security in mind. There are dozens of compliance programs embedded into AWS to help you meet your industry's compliance requirements. AWS is designed to keep your data safe, no matter how big or small your Cloud usage is, so you are free to scale your business as quickly as you want. There are three major concepts that outline AWS' recommended security practices. These are: the Shared Responsibility Model, the Security Pillar of a Well-Architected Framework, and Principle of Least Privilege. In addition, we will review how AWS accounts for compliance requirements for data and resources stored in the Cloud. The first concept addresses the question who is responsible for security? The answer is slightly complex. You, as the consumer, are responsible for security in the Cloud. AWS, as the Cloud computing service provider, is responsible for security of the Cloud. This concept is called the Shared Responsibility Model, and it asserts that the security of the data and resources in the Cloud is a shared responsibility between the Cloud computing service provider and the customer. While the customer no longer has to worry about certain aspects of IT infrastructure, like securing the physical data center or hardware, there are other aspects that they are still responsible for, including patching virtual service regularly, and utilizing proper permission sets so only people who should be accessing certain resources, do access them. Next, AWS addresses how can you best protect your AWS Cloud infrastructure from both internal and external security threats? AWS has the five pillars of a Well-Architected Framework to help it's customers build the most secure, fault resilient, efficient, and high performing IT infrastructure possible. Within the five pillars, there is the security pillar, which outlines how you can secure your infrastructure adhering to best practices. Security in the Cloud is composed of five areas: Identity and Access Management, Detective Controls, Infrastructure Protection, Data Protection, and Incident Response. Architecting a Well-Architected Framework can go a long way to making your IT infrastructure stable and secure. Next is Principle of Least Privilege. What resources should you provide access to? The Principle of Least Privilege states that you should only be providing access to resources that an entity requires to do it's job. Every role has a set of access permissions necessary to effectively execute it's job, and the resources and individuals should have no more or no less than the optimal level of access. In AWS, you would make this happen by using a service called Identity and Access Management, or IAM, providing granular access permissions. Providing the minimum amount of access to entities to complete their work is a vital way to keep your IT infrastructure secure. The Principle of Least Privilege coincides with the Shared Responsibility Model, where the customer, you, are responsible for security in the Cloud by making sure access is provided responsibly. Lastly, here are many AWS Cloud Compliance programs available to help you determine if your industry allows you to store data on AWS. Many industries have compliance requirements for storing your data, such as HIPAA for medical organizations. You can learn more about the various compliance programs AWS offers by visiting aws.amazon.com/compliance. In the security domain of the AWS Certified Cloud Practitioner Exam, AWS wants you to be able to explain what concepts like the Shared Responsibility Model and Principle of Least Privilege may mean in real life scenarios. If you feel like you want or need a refresher for any of the concepts we reviewed in this video, feel free to go back and watch the videos again.

### **----- BULLET POINT NOTES -----**

#### Reviewing the Security Domain
  - Security in the cloud
  - Shared responsibility model
  - Security pillar of the Well-Architected Framework
  - Principle of Least Privilege
  - AWS Cloud Compliance

#### Recommended Security Practices

#### Shared responsibility model
  - Customer: responsible for security IN the cloud
  - AWS: responsible for security OF the cloud
  - Security of data and resources IN the cloud is a shared responsibility between the cloud computing service provider and the customer
  
#### Security pillars of the Well-Architected Framework
  - Identity of Access Management
  - Detective Controls
  - Infrastructure Protection
  - Data Protection
  - Incident Response

#### Principle of Least Privilege
  - Only provide access to resources an entity requires to do its job
  - Permission should be no more or no less than the optimal level of access
  - Use IAM (Identity and Access Management) in the AWS Cloud
  - Coincides with the shared responsibility model

#### AWS Cloud Compliance
  - aws.amazon.com/compliance

---

### Chapter Quiz

Transcript:

---



