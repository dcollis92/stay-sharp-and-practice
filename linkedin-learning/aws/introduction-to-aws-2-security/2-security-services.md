# Introduction to AWS for Non-Engineers: 2 Security

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
Amazon Inspector. If you or your company develops applications, there's a service that can provide your auditors and your development team a peace of mind knowing that the applications adhere to security standards set by the company and the industry as a whole. Amazon Inspector is an automated security assessment service for your applications deployed on AWS. This means that it helps you improve the security and compliance of these applications by automatically assessing them for exposure, vulnerabilities, and derivations from best practices. Once the assessment is completed, it generates detailed reports to help you check for unintended vulnerabilities. Security teams can then get reports validating that tests were performed. Inspector helps you reduce the risk of introducing security issues during deployment and development by proactively identifying potential issues that do not align with best practices and policies. You can define your own standards and best practices, and make sure that they're being followed. Or you can choose to utilize AWS's constantly updated standards. As the name suggests, Amazon Inspector inspects your applications to find security issues and bring them to your attention.

### **----- BULLET POINT NOTES -----**

#### Amazon Inspector

- Automated security assessment service for applications
- Automatically assess for exposure, vulnerabilities, and derivations from best practices
- Generates detailed reports to help check for vulnerabilities
- Security teams can get reports validating that tests were performed
- Reduce risk of indtroducing security issues during deployment and development
- You can define standards and best practices
- Or use the AWS constantly updated standards

---

### 1.5 Trusted Advisor

Transcript:
AWS Trusted Advisor. Have you ever looked at your finances and thought, "Well dang. "I wish someone would tell me what to do with my money, "so I could have a comfortable early retirement?" I've tried some investments, I've tried putting money into a 401k, but I have no idea if I'm doing any of this right. Oftentimes, the people you call up about your money health are called financial advisors. For your AWS Cloud infrastructure, you have Trusted Advisor. AWS Trusted Advisor is a service that guides the provisioning of your resources, so that you are following AWS best practices. Upon scanning your AWS infrastructure, Trusted Advisor advises you on how your infrastructure is or is not following AWS best practices based on five categories. The categories are cost optimization, performance, security, fault tolerance, and service limits. AWS then provides action recommendations to bring your infrastructure closer to best practice standards. All AWS customers have access to seven core trusted advisor checks for free. These checks are S3 bucket permissions, security groups, specific ports unrestricted, IAM use, MFA on root account, EBS public snapshots, RDS public snapshots, and service limits. For those with enterprise or business support plans, there are extended set of checks and recommendations available. On top of more types of checks, those with full trusted advisor access also get notifications through weekly updates, an ability to set up automated actions in response to alerts with Amazon CloudWatch. They also have programmatic access to the scan results via AWS Support API. AWS Trusted Advisor is a valuable ally in making sure that deployment of your AWS Cloud resources are aligned with best practices, as well as providing you customized recommendations based on proactive monitoring of your infrastructure.

### **----- BULLET POINT NOTES -----**

- Guides provisioning of resources to follow AWS best practices
- Scans your infrastructure and advises you on how it is or is not following AWS best practices
- Based on five categories:
  - cost optimization
  - performance
  - security
  - fault tolerance
  - service limits
- Provides action recommendations to meet best practices

#### Seven Core Trusted Advisor Checks

- S3 bucket permissions
- Security groups - specific pots unresticted
- IAM use
- MFA on root account
- EBS public snapshots
- RDS public snapshots
- service limits

#### Full Trusted Advisor Checks

- More types of checks on top of core checks
- Notification through weekly updates
- Set up automated actions in response to alerts using CloudWatch
- Programmatic access to scan results via AWS Support API

---

### 1.6 GuardDuty

Transcript:
Amazon GuardDuty. In a perfect world, you wouldn't need to sleep so that you can be up at all times of the day and night monitoring your cloud infrastructure for threats and malicious activities. Unfortunately, we all need sleep, and some departments don't have the budget to have people staring at dashboards 24/7. Thankfully, you don't have to, because AWS Cloud has a service that stays up all day and night for you. It's called Amazon GuardDuty, and it's a threat detection service that monitors for malicious activity and unauthorized behavior to protect your AWS Cloud instance 24/7. It analyzes billions of events across multiple AWS data sources which can then send actionable alerts via AWS CloudWatch events. GuardDuty uses machine learning, anomaly detection, and integrative threat intelligence to identify and prioritize potential threats that may impact your AWS Cloud infrastructure. Best of all, you can deploy GuardDuty within a few clicks as there is no additional software or infrastructure to manage to take advantage of that protection. Amazon GuardDuty continuously monitors your AWS Cloud infrastructure, intelligently detects threats using machine learning and helps you take action immediately if a threat is found so that you and your team can have a good night's sleep knowing your infrastructure is being monitored at all times.

### **----- BULLET POINT NOTES -----**

- 24/7 threat detection service for the AWS Cloud
- Monitors for malicious activity and unauthorized behavior
- Analyzes events to send actionable alerts via CloudWatch
- Uses machine learning, anomaly detection, and integrated threat intelligence to identify potential threats
- Easy to deploy

---

### 1.7 Study Break: Reviewing Security Services

Transcript:
Welcome to the Study Break. Let's review the security related services that may be relevant to the AWS Certified Cloud Practitioner exam. The security services we will be reviewing in this video are; AWS Identity and Access Management or IAM, AWS Web Application Firewall or WAF, AWS Shield, Amazon Inspector, AWS Trusted Advisor, and Amazon GuardDuty. First, AWS Identity and Access Management, more commonly referred simply as IAM, is a free service that enables you to securely manage access to services and resources in the AWS cloud. The permission sets are extremely granular, helping you allow or deny access by users or other services to various resources. You can set access by using IAM to manage users utilizing granular permission sets. You could also create and manage IAM roles which has specific permission sets. You can allow entities to assume a role to do specific actions in your AWS cloud instance. In this way, you don't have to manually set up every entities permission sets, which could result in human errors and inconsistencies. Finally, you can enable identity Federation, which will allow existing identities in your enterprise accounts. Many organizations allow identity Federation for their Microsoft active directory. Allowing employees to access their AWS cloud instance without having to create a new IAM user for every single employee. IAM allows you to have enhanced security, granular control over permission sets, ability to provide temporary credentials, flexible security credential management, inability to utilize identity Federation. Second, the AWS Web Application Firewall of WAF, is as it sounds. A firewall service for web applications running on AWS cloud. It protects web apps from common web exploits as well as potential compromises that could force your apps to consume excessive AWS resources, which could be detrimental to your finances. It improves web traffic visibility, provides cost-effective web application protection and delivers increased security against web attacks. It's an affordable protection for your web applications that can be deployed within minutes. Another security service is AWS Shield, which can protect your web applications from a distributed denial of service or DDoS attack. It provides detection and automatic mitigation of DDoS attacks to applications, helping you minimize the negative consequences and application downtime. There are two tiers available for customers. The standard tier is automatic, free and protects web apps against majority of common DDoS attacks. The shield Advanced tier provides 24/7 access to AWS DDoS response team and detects and mitigates sophisticated DDoS attacks with near real time visibility into events. And even provides financial protection against DDoS-related spikes in AWS resource usages. You can receive comprehensive DDoS protection catered around your budget and needs with AWS shield. Next, the Amazon Inspector is an automated security assessment service for your AWS applications, which helps you improve security and compliance. It inspects your applications automatically assessing them for exposure, vulnerabilities, and derivations from best practices. After an assessment is completed, it generates detailed reports to help you check for vulnerabilities. Utilizing Amazon specter helps to reduce the risk of introducing security issues by proactively identifying potential security vulnerabilities that do not align with best practices and policies. You can define your own standards to check against and create reports that validate that specific tests were performed. You can continue enforcing best practices within your AWS cloud infrastructure. What the help of AWS has constantly updated standards made available through inspector. Another crucial security service is the AWS Trusted Advisor, AWS trusted advisor guides provisioning of resources to AWS cloud. So you're following AWS best practices. As the name suggests, it advises you on how your infrastructure is or is not following AWS best practices based on five categories; Optimization, Performance, Security, Fault tolerance and Service limits. It then offers recommendations to bring your infrastructure closer to standards. The Seven core Trusted Advisor checks are free and those with Business Support plans and above have access to Full Trusted Advisor checks. AWS trusted advisor provides customized recommendations based on proactive monitoring to make sure your AWS cloud deployments are aligned with best practices. Lastly, Amazon GuardDuty is a threat detection service that monitors for malicious activity and unauthorized behavior 24/7. Utilizing machine learning, anomaly detection and integrated threat intelligence. GuardDuty identifies and prioritizes potential threats that may impact your AWS infrastructure. It's deployable with just a few clicks and helps you take action immediately against the threat. It works as a 24/7 monitoring solution to help your human infrastructure team get a good night's rest. So, this was a quick study break review of the security related services AWS offers to help protect your cloud infrastructure. If you are unsure about your understanding of any, feel free to go back to the individual videos to get more in depth summaries of each, before moving on.

### **----- BULLET POINT NOTES -----**

#### IAM: AWS Identity and Access Management

- Securely manage access to services and resources in AWS with extremely grandular permissions set
- Set access permissions for users or other services to a resource
- Create and manage IAM roles with specific permission sets
- Don't have to manually set every entity's permission sets, which could result in inconsistencies
- Utilize identity federation for already existing users in non-AWS services

#### WAF: AWS Web Application Firewall

- Firewall for web applications running on the AWS Cloud
- Protects web apps from common web exploits and potential compromises that can jack up your AWS usage bill
- Improves traffic visibility
- Can be deployed within minutes

#### AWS Shield

- Detection and automatic mitigations of distributed denial of service (DDoS) attacks to web applications
- Standard tier:
  - Automatic
  - Free
  - Protects against majority of common DDoS attacks
- Advanced tier:
  - Continuous, 24/7 access to AWS DDoS response team
- Detects and mitigates sophisticated DDoS attacks
- Provides financial protection against DDoS-related spikes in AWS resource usages

#### Amazon Inspector

- Automated security assessment service to improve security and compliance
- Automatically assesses applications for exposure, vulnerabilities, and derivations from best practices
- Generated detailed reports
- Define standards to check against and create reports to validate specific tests were performed

#### AWS Trusted Advisor

- Guides resource provisioning to align with AWS best practices
- Advises you on how your infrastructure is or is not following AWS best practices, based on five categories:
  - Optimization
  - Performance
  - Security
  - Fault tolerance
  - Service limits
- Seven core Trusted Advisor checks are free
- Full Trusted Advisor checks are free with Business Support plans and above

#### Amazon GuardDuty

- Threat detection service that monitors for mailicious activity and unauthorized behavior non-stop, 24/7
- Identifies and prioritizes potential threats
- Quick to deploy

---

### Chapter Quiz

1. How does AWS GuardDuty deal with threats?

- [ ] It uses operator surveillance of resource anomalies.
- [ ] It employs AI methods to combat malicious behavior.
  - AWS GuardDuty is continuously active.
- [ ] It constantly monitors activity and deploys machine learning techniques for analysis.
- [ ] It creates a checklist of bad actors to exclude from all interaction.

2. What does AWS Inspector examine?

- [ ] database encryption
- [ ] user fidelity
- [ ] network efficiency
- [x] application security
  - If you develop your own application, AWS Inspector can help you find any security flaws.

3. What action does AWS Trusted Advisor take upon implementation?

- [ ] It reduces your security vulnerabilities automatically.
- [x] It looks at your setup and suggests changes to meet best practices.
  - Security is just one issue that Trusted Advisor examines.
- [ ] It scans your infrastructure and documents any intrusions into your systems.

4. Why would you employ federated users?

- [ ] to include all users in the same group
- [ ] to delegate security management to the department level
- [ ] to provide granular control
- [x] to integrate with external operations and across AWS systems
  - For example, you might integrate Microsoft Active Directory with AWS IAM.

5. What is the purpose of a WAF?

  - [x] to protect applications from malicious activity
    - A WAF, or web application firewall, protects your applications from web exploits.
  - [ ] to encrypt all data
  - [ ] to prevent frivolous resource use
  - [ ] to seek out bad actors

6. Why would you need the advanced instead of the standard AWS Shield?
   
  - [x] to get real-time tools for balancing loads
    - The advanced AWS Shield provides more dynamic responses and financial protection.
  - [ ] to protect against DDoS attacks
  - [ ] to prevent access corruption
  - [ ] to ensure data redundancy and security

---
