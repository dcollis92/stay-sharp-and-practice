# Introduction to AWS for Non-Engineers: 1 Cloud Concepts

## **Security Services**

---

### 1.1 Identity and Access Management (IAM)

Transcript:
When utilizing the cloud to house any part of your technical infrastructure you must first consider the security impacts of moving your resources onto the cloud. Unlike the on-premises data center that is protected by the virtual being within your physical reach, data centers hosting your cloud resources are in an undisclosed data centers managed by AWS. By now you've probably surmised it's not the best idea to provide unrestricted access to your IT resources to everyone in your organization, but is there an easy way to provide extremely granular access permissions to every user in service but at the same time make them easy to manage? Thankfully AWS has a service called Identity Access Management commonly referred to as IAM which helps you do just that. Identity and Access Management, or IAM, is a free service provided by AWS that enables you to manage access to services and resources on the AWS cloud. You can create and manage users and groups as well as set permissions to allow or deny access to various resources. The permissions are global which means that the access you set for a user or group will be true for all regions in AWS Cloud. When providing access to users and services you should follow the principal of least privilege. There are a few ways you can set permissions for various services or users to access your AWS resources. You can use IAM to manage users, manage roles and manage federated users. The first way you can set access is by using IAM to manage users. You can create users in IAM and assign them individual security credentials. These users can have very granular permission sets so you can control which operations a user can perform on which specific service. A user could be administrators that need console access to manage the AWS Cloud account, end users who need to access content in the AWS Cloud account or systems that need the ability to programmatically access data in the AWS Cloud account. Programmatic access means that applications are directly accessing resources in the AWS Cloud as opposed to humans doing the same activity. Another way to set access is to manage IAM roles. You can create roles to manage permissions and control what these roles can do in your AWS instance. An entity assumes a role and can obtain a set of temporary security credentials to make API calls to your AWS resources. This could be used to provide access to a user from another AWS account to your AWS account such as when an organization has separate develop and production environments. The last way to set access is to manage federated users. By enabling identity federation you can allow existing identities in your enterprise to access your AWS cloud instance without having to create an IAM user for each user. You can use any identity management solution that supports SAML 2.0 or use one of AWS's federation samples. You've probably experienced identity federation in action when you sign up for an online service using your Facebook or Gmail account. In a corporate setting you could have your Microsoft Active Directory users have federated access to your AWS cloud instance using identity federation. Some benefits of IAM are enhanced security, granular control, ability to provide temporary credentials, flexible security credential management, ability to leverage external identity systems using federated access and seamlessly integrating various AWS services within the AWS Cloud infrastructure.

### **----- BULLET POINT NOTES -----**

#### IAM
  - Manage access to services and resources on the AWS Cloud
  - Manage users and groups
  - Can provide access to users or other AWS services
  - Permissions are global: any access setting will be true across all regions
  - Follow principle of least privilege

#### Method 1: Manage Users
  - Create users in IAM and assign them security credentials
  - Users can have precise permission sets
  - User can access AWS through AWS Management Console
  - You can provide programmatic access to data/resources
  - Programmatic access: applications directly accessing resources instead of humans doing the same activity

#### Method 2: Manage IAM Roles
  - Create roles to manage permissions and what those roles can do
  - An entity assumes a role to obtain temporary security credentials to make API calls to your resources
  - Used to provide access to a user from another AWS acct to your AWS acct

#### Method 3: Manage Federated Users
  - Enable identity federation: 
    - allow existing identities in your enterprise to access AWS without having to create IAM user for each identityIdeal for lists
  - Can use any identity management solution using SAML 2.0 or one of AWS's federation samples 
  - EXAMPLE:
    - Microsoft Active Director ->Federated Access-> AWS IAM

#### Benefits of Identity and Access Management (IAM)
  - Enhanced security
  - Granular control
  - Ability to provide temporary credentials
  - Flexibility security credential management
  - Federated access
  - Seamless integration across various AWS services

---

### 1.2 Web Application Firewall (WAF)

Transcript:
Web Application Firewall or WAF. AWS Web Application Firewall, commonly referred to AWS WAF, protects web applications running on AWS Cloud from common web exploits. As the name suggests, it's a firewall service for your web applications. Fancy that. WAF can protect against exploits that could compromise security or availability of your web apps. It can also protect the application from exploits that could force your app to consume excessive resources which in turn could end up costing you a lot of money. With WAF, you only pay for what you use with no upfront commitments. Web Application Firewall improves web traffic visibility, provides cost-effective web application protection, and delivers increased security and protection against web attacks. It is also easy to deploy and maintain, as you can deploy it on Amazon CloudFront as part of your content delivery network solution or via Amazon API Gateway. There is no additional software that you need to deploy and you can reuse the centrally-defined roles across all of your web applications. AWS WAF is an affordable, malleable, and adaptable protection for your web applications running on AWS Cloud that is easy to manage and deploy.

### **----- BULLET POINT NOTES -----**

### AWS Web Application Firewall (WAF)
- Protects web apps running on the AWS Cloud from common web exploits
- Firewall service for web applications
- Protect web apps against exploits that could compromise security or availability
- Protect apps from exploits that could force your app to consume excessive resources
  - High consumption: Expensive
- Improves web traffic visilibity
- Provides cost-effective web app protection
- Increased security and protection against web attacks
- Easy to deploy and maintain

---

### 1.3 Shield

Transcript:
AWS Shield. Have you ever experienced Distributed Denial of Service or DDoS attacks, you might have tried to access your favorite social network platform, only to find that the website is glitchy, or nothing is loading on your browser? You might Google the website or complain about it on another social media network. And you might find out that the website is experiencing a DDoS attack. A Distributed Denial of Service Attack or DDoS attack is an attempt to make a machine or network resource unavailable temporarily or indefinitely, most often by making excessive repeated access requests to the website using thousands of unique IP addresses. Basically, a hacker or malicious personal organization would overload the server with access requests so that real users can't access the website because it's to busy. Have you ever felt extremely overwhelmed by multiple requests coming from all different places? Maybe you worked on extremely busy restaurant when a coworker called out or you had multiple project deadlines at the office while some dumpster fire was going on, that you needed to fix, you likely felt overwhelmed, exhausted and unsure how to deal with the workload. And perhaps you mentally shut down unable to process all the different requests. This is what happens to the servers when it's under a DDoS attack. AWS has a service called AWS Shield, which provides detection and automatic mitigations to minimize the effects of DDoS attack on your applications. AWS Shield helps to minimize application downtime and latency when an attack happens. There are two tiers to AWS Shield in terms of protection and cost. The standard tier is automatically enabled, free to use and protects your web application against majority of common DDoS attacks. When used with CloudFront and Route 53. You can obtain comprehensive availability protection against all known infrastructure attacks. The second tier is called Shield Advanced and it provides 24/7 access to the AWS DDoS response team. It detects and mitigates sophisticated DDoS attacks with near real-time visibility into the events and integrates with AWS WAF. Shield Advanced provides higher level protections, network and transport layer protections and automated application traffic monitoring. Shield Advanced also provides financial protection against DDoS related spikes for charges for EC2, elastic load balancers, CloudFront and Route 53. It is available globally on all CloudFront and Route 53 Edge locations. This means that your web application can be hosted anywhere in the world but still be protected by AWS Shield as long as you're able to deploy CloudFront instance in front of the server. With two-tiered support, AWS Shield can provide comprehensive protection against DDoS attacks small and large that is catered to your budget and needs. If you have a small product, you can get started with the standard protection and as it scaled, you can upgrade your protection to suit your needs.

### **----- BULLET POINT NOTES -----**

#### Distributed Denial of Service (DDoS) Attack
  - An attempt to make a machine or network resource unavailable
  - Most often by making excessive repeated requests to the website using thousand of unique IP addresses

#### AWS Shield
  - Provides detection and automatic mitiations
  - Minimize effects of DDoS attacks to your apps
  - Helps minimize application downtime and latency when an attack happens

#### AWS Shield: Standard
  - Automatically enabled
  - Free
  - Protects web applications against a majority of common DDos attacks
  - Get comprehensive availability protection against all known infrastructure attacks when used with CloudFront and Route 53

#### AWS Shield: Advanced
  - Continuous, 24/7 access to AWS DDoS response team
  - Near real-time visibility into events
  - Integrates with AWS WAF
  - Provides higher-level protections, network and transport layer protections, and automated application traffic monitoring.
  - Financial protection against DDoS-related spikes in charges for EC2, elastic load balancers, CloudFront, and Route 53
  - Available globally on all CloudFront and Route 53 Edge locations
  - Your web application can be hosted anywhere in the world and still be protected by AWS Shield

---

### 1.4 Inspector

Transcript: 

### **----- BULLET POINT NOTES -----**
  
---

### 1.5 Trusted Advisor

Transcript:


---

### 1.6 Study Break: Security Domain

Transcript:
Wyou no longer have to purchase equew how AWS  addresses how can you best protect your AWS Cloud infrastructure from both internal and external security threats? AWS has the five pillars of a Well-Architected Framework to help it's customers build the most secure, fault resilient, efficient, and high performing IT infrastructure possible. Within the five pillars, there is the security pillar, which outlines how you can secure your infrastructure adhering to best practices. Security in the Cloud is composed of five areas: Identity and Access Management, Detective Controls, Infrastructure Protection, Data Protection, and Incident Response. Architecting a Well-Architected Framework can go a long way to making your IT infrastructure stable and secure. Next is Principle of Least Privilege. What resources should you provide access to? The Principle of Least Privilege states that you should only be providing access to resources that an entity requires to do it's job. Every role has a set of access permissions necessary to effectively execute it's job, and the resources and individuals should have no more or no less than the optimal level of access. In AWS, you would make this happen by using a service called Identity and Access Management, or IAM, providing granular access permissions. Providing the minimum amount of access to entities to complete their work is a vital way to keep your IT infrastructure secure. The Principle of Least Privilege coincides with the Shared Responsibility Model, where the customer, you, are responsible for security in the Cloud by making sure access is provided responsibly. Lastly, here are many AWS Cloud Compliance programs available to help you determine if your industry allows you to store data on AWS. Many industries have compliance requirements for storing your data, such as HIPAA for medical organizations. You can learn more about the various compliance programs AWS offers by visiting aws.amazon.com/compliance. In the security domain of the AWS Certified Cloud Practitioner Exam, AWS wants you to be able to explain what concepts like the Shared Responsibility Model and Principle of Least Privilege may mean in real life scenarios. If you feel like you want or need a refresher for any of the concepts we reviewed in this video, feel free to go back and watch the videos again.

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

1. Which statement best exemplifies the principle of least privilege?
   
  - [ ] Give as little access as possible to all workers.
  - [ ] IT should have access to everything but should limit access for others.
  - [X] Grant access to the optimal resources required for a job and no more.

2. How does cloud security differ from security at private data centers?
   
  - [ ] Private data centers are often much less secure than cloud storage.
  - [ ] Cloud security is often less strict than security at private data centers.
  - [X] Cloud security can be at least as comprehensive as security at private data centers.
    - Cloud data centers provide all the options that you expect, but you do not have to manage them.
  - [ ] Security at private data centers is more adaptable to your needs.

3. In the shared responsibility model with AWS Cloud, who should manage identity and access?
   
- [ ] both the customer and AWS
- [X] the customer
  - Only the customer will know which people should have access.
- [ ] AWS

4. In a well-architected framework, how should you implement infrastructure protection?

- [ ] on the most vulnerable systems
- [ ] at the OS level
- [ ] on all layers
  - Best practices require automated security on all systems.
- [ ] on the physical data center

5. You are engaged in educational record management and want to port your operations to AWS. How should you start examining security issues?

- [ ] Consult with your local governmental department of education.
- [ ] Examine the resources at studentprivacy.ed.gov.
- [X] Peruse the site aws.amazon.com/compliance/programs/.
  - From there, you may examine the resources at aws.amazon.com/compliance/ferpa/.
- [ ] Interview your stakeholders to ascertain their security concerns.

---
