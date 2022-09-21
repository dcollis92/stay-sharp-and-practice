# Introduction to AWS for Non-Engineers: 1 Cloud Concepts

## **Cloud Computing Concepts**

---

### 2.1 Advantage of Cloud Computing

Transcript:
So, why cloud computing? Think of it this way, you don't have to buy a computer with a huge hard disk because you can save your files on the cloud using services like Dropbox. Not only that, but these files are available from any machine connected to the internet. You don't need to buy an expensive gaming computer to play graphics-heavy games because you can use a web service like Parsec to play games on their server loaded with enough memory for seamless playing. Instead of paying hundreds of dollars for a program that you install onto your computer, you could pay a $10 a month, subscribe to a service, to use it through your web browser. How does this work for large businesses? If you are thinking in terms of your company's IT infrastructure, you no longer need to have people setting up physical servers and cabling. The countless hours and dollars spent maintaining a server room and the technology inside can now be used elsewhere. Even things like temperature regulation in a server room could be a source of headaches when setting up the IT department. When a piece of hardware breaks, you have to go through the whole procurement and setup process, which could take months. Cloud computing makes all of that the service provider's issue to solve and gives you a set fee to use the services over the internet. With cloud computing, you pay only when and what you consume. This avoids the overhead cost of buying too much physical space on-premises. If you are about to run out, you can simply scale up on the cloud within minutes. I don't know about you, but I'm into saving money wherever possible. The cloud computing service providers take care of the physical infrastructure and their own huge data centers, so you and your engineers can worry about other more interesting things, saving you manpower and money. You also benefit from the massive economy of scale, since larger cloud computing providers buy their capacities in huge quantities, they are able to offer a portion of their capacity to you for a much lower price than if you try to go out and get it for yourself. There are six major advantages to cloud computing. You can trade capital expense for variable expense. Benefit from massive economies of scale. Stop guessing about capacity. Increase speed and agility. Stop spending money running data centers. And go global in minutes. You no longer have to worry about buying too little or too much of something, and you only pay as you go, allowing you to focus your attention and money elsewhere.

### **----- BULLET POINT NOTES -----**

#### Six Advantages
- Trade capital expense for variable expense
- Benefit from massive economies of scale
- Stop guessing capacity
- Increase speed and agility
- Stop speding money running and maintaining data centers
- Go global in minutes

---

### 2.2 Cloud Computing Models

Transcript:
There are three main cloud computing models, software as a service or SaaS, platform as a service or PaaS, and infrastructure as a service or IaaS. Infrastructure as a service also known as IaaS refers to the basic building blocks of cloud IT infrastructure. You have control over the networking, security, computer, and servers. IaaS provides the most flexibility and management control of all the different types of cloud computing models, and it's the closest in features to having the traditional on-premises data center. Some examples of infrastructure as a service platforms are Amazon Web Services, Microsoft Azure, and Google Cloud. You can modify and control almost all parts of the infrastructure in the cloud to fit your needs without having to purchase or manage actual hardware. Platform as a service known as PaaS allows you to deploy and manage applications without worrying about the underlying hardware infrastructure. Services offered could be web servers, databases, operating systems, or environments where you can execute specific programming languages to host applications. Some examples of PaaS are Microsoft Azure web hosting, Google App Engine, and Heroku. You can focus on deploying the applications instead of the operational side of deployment. PaaS is different from IaaS in that there is less flexibility as packages are preconstructed. But, you also have to deal with less of the infrastructure deployment and maintenance allowing you more time and resources to focus on the project at hand as opposed to the infrastructure. Software as a service, SaaS, describes completed products managed by the service provider. You get the whole package of the service complete with user interfaces. It's ready for use by an end user regardless of their technical backgrounds. You don't have to worry about how the service infrastructure is maintained or managed. You only have to worry about how you might use the service to fulfill a need. A very popular example of SaaS platform is a cloud-based email service such as Outlook and Gmail. As the user you only need to create an account to log in to send and receive emails, no need to worry about anything else. In terms of complexity and level of involvement required, infrastructure as a service is the most involved and requires the highest level of technical knowledge to execute, followed by platform as a service. Software as a service generally does not require much technical knowledge and it's extremely intuitive and features are ready to use quote unquote out of the box. So you and your team will have to decide which choice is right for your needs and circumstances.

### **----- BULLET POINT NOTES -----**

#### Cloud Computing
- SaaS: Software as a Service
- PaaS: Platform as a Service
- IaaS: Infrastructure as a Service

---

### 2.3 Cloud Computing Deployments

Transcript:
Analogous to different cloud computing services, there are also different deployment models that have organizations deploy their cloud infrastructure. And thankfully, their names are fairly intuitive. Cloud, on-premises, and hybrid deployment. When an organization utilizes cloud deployment, it means that all parts of its IT infrastructure reside and run on the cloud. All applications were either migrated to or created in the cloud. And the organization relies on internet and their cloud-computing service providers to fulfill their computational and IT requirements. Many small startups utilize this model, as it allows them to be flexible and scalable in their resources while removing the roadblock of costly and time-consuming procurement and management processes for on-premises infrastructure. They may use services like Office 365 for emails, Microsoft Teams for on-demand communication, and Microsoft Azure for their app development and hosting. All resources in a cloud deployment infrastructure live on the cloud. With on-premises deployment, often referred to as private cloud, organizations use virtualization to deploy resources in their on-premises data centers. In many cases, the execution of on-premises deployment looks like the traditional IT infrastructure with its servers, network cables, and data center management. The setup does not provide a lot of benefits of cloud computing. The resources are not accessed using the internet because they are on-site. This means you can access them really quickly because nothing has to be uploaded or downloaded using the internet. However, it could utilize application management and virtualization technologies to increase efficiency of the available resources, such as by deploying virtual machines and internet resources behind a firewall. On-premises deployment provides dedicated resources which means that the organization is not sharing any part of their resources with another organization. This may be a requirement for certain industries that take data privacy very seriously, such as the medical field. The last type of deployment is hybrid deployment which connects on-premises tech with cloud-based resources. This is a very common setup for many established companies that already have their own on-premises data centers, but are in the process of migrating over to the cloud. Hybrid deployment allows organizations to extend and scale their infrastructure into the cloud while still maintaining access to on-premises resources living on on-site servers. Another common use case is to use the cloud deployment as backup in disaster recovery solution. An organization can maintain a working copy on premises, but make sure they have durable backup in the cloud. Because migration of existing IT systems take a long time and is costly, hybrid deployment is a very effective in-between as resources are migrated to the cloud. Flexibility, scalability, and finding your perfect fit are features of cloud computing that shine when considering which model of cloud computing deployment is the best fit for your organization. For organizations that don't have very many IT resources deployed yet, cloud deployment would allow them to utilize the complete flexibility and affordability which are signatures of cloud computing services. For those who need all of their data secured and on-premises, either due to retrieval speed or security requirements, private cloud utilizing virtualization of legacy resources is a good fit. For companies with legacy IT resources that would take a long time to upload to the cloud, but would like to extend their computing stores capacity economically, hybrid cloud deployment might be preferable. Many companies utilize hybrid cloud deployment to have quick access to on-premises resources, but have a very safe backup in case of an emergency.

### **----- BULLET POINT NOTES -----**

### Cloud Deployment Models
- Cloud
  - 100% of IT infrastructure on the cloud
  - All applications migrated to or created in the cloud
  - Removes roadblock of costly and time-consuming procurement processes
- On-Premises/Private Cloud
  - Use virtualization to deploy resources in their on-premises data centers
  - Often looks like traditional IT infrastructure
  - Does not provide a lot of benefits of cloud computing
  - Resources cannot be accessed using the Internet
  - Security: Provides dedicated resources
- Hybrid
  - Connects on-premises technology wih cloud-based resources
  - Great for established companies that are in the process of migrating over to the cloud
  - Data partially on the cloud, and partially in the on-premises data center
  - Can use as backup and disaster recovery solution

---

### 2.4 Design Principles of Cloud Computing

Transcript:
Knowing how to create a well-architected infrastructure allows organizations to build the most secure, durable, efficient, and high performing IT infrastructure possible. So how can we do that? First, avoid unnecessary costs. Use only what you need and turn off any servers or resources you aren't using. Reserve resources in advance if you know you'll need a certain amount of compute power, as many services give discounts for reservations and upfront payment. Don't forget to continue monitoring for more ways to optimize as your organizational needs change and know which resources are causing which charges on your bills. Best practice number two, reliability. A reliable system has the ability to recover from service disruptions, often by itself. They can also dynamically adjust computing resources to meet demand. You should be testing your disaster recovery settings and incorporating redundancies in your infrastructure. Redundancy refers to the concept of having duplicate copies of resources so that when one goes down, the other can take over to provide seamless cut-over experience for end users. The third best practice, efficiency. Performance efficiency is the ability to use computing resources to adjust to system requirements. It should allow for more experimentation and when a change is set in motion, should be able to go global in minutes. A fourth best practice to consider, infrastructure security. This includes security of information, systems and assets. Security best practices should be automated. Data should be protected in transit and at rest, which means when it's being moved from one location to another, as well as when it's being stored. For example, when someone sends an email, the data is in transit being transferred using the internet. If you have a file uploaded to a server, it's at rest. Traceability should be enabled along with strong identity foundation. This means that in case of a security breach, you are able to see who did what at any point, because every user has a unique user account or access key. Who can do and access what should be well-defined and followed. The fifth best practice is operational excellence. This is your ability to run and monitor systems while constantly improving processes and procedures. Everything should be documented and operational procedures should be frequently refined. Failures should be anticipated and learned from and systems and processes updated to take them into account. If an incident occurs, such as a major service downtime, the whole team should come together to discuss what went wrong, how it could have been prevented and set up procedures in case it happens again.The sixth best practice is sustainability. Cloud architects and cloud computing platforms share responsibilities for environmental sustainability when operating cloud resources. There should be a focus on achieving maximum benefit from already provisioned resources to minimize required total resources to minimize environmental impact. According to AWS, cloud computing providers have lower carbon footprints and are more energy efficient than typical on-premises environments, because these providers invest in efficient power technology, achieve higher server utilization rates and operate energy efficient resources. So there are six best practices when architecting cloud-based IT infrastructure, cost optimization, reliability, performance efficiency, security, operational excellence, and sustainability. When all six pillars are taken into account and optimized, you will have a highly performing stable IT infrastructure that allows your organizations to save money, time and resources.

### **----- BULLET POINT NOTES -----**

#### Well-Architected Framework
- Build the most secure, durable, efficient, and high-performing IT infrastructure possible
- Avoid unnecessary costs
  - Use only what you need
  - Reserve resources in advance
  - Continue to monitor for optimization
- Reliability
  - Test diaster recovery settings
  - Incorporate redundancy
  - Have duplicate copies of resource
- Efficiency
- Security
  - Best practices should be automated
  - Data should always be protected
  - Enable traceability
  - Manage access
- Operational excellence
  - Document everything
  - Refine operational procedures
  - Anticipate failure
  - Update processes
  - Learn from failures
- Sustainability

---

### Study Break: Reviewing Cloud Computing

Transcript:
Welcome to the study break for cloud computing concepts that will come up in the AWS Certified Cloud Practitioner exam. The major concepts to remember are the advantages of cloud computing over legacy on-premises IT infrastructure, cloud computing models, types of cloud computing deployments, and design principles of cloud computing, such as the well architected framework of a solid cloud computing IT infrastructure. Let's start with the advantages of cloud computing over legacy on-premises IT infrastructure. AWS calls these the six advantages of cloud computing. The advantages are trade capital expense for variable expense, benefit from massive economies of scale, stop guessing about capacity, increase speed and agility, stop spending money running and maintaining data centers, and go global in minutes. There are three cloud computing models and there are three cloud computing deployments. The cloud computing models are Software as a Service, SaaS, Infrastructure as a Service, IaaS, and Platform as a Service, PaaS. The cloud computing deployments are public cloud, hybrid cloud and private cloud, otherwise known as on-premises cloud. Finally, the well architected framework of cloud computing provides best practices framework for designing a stable, robust and secure IT infrastructure on the cloud. The six pillars of a well architected framework are cost optimization, reliability, operational excellence, performance efficiency, security, and sustainability. If you are unsure about any of the concepts mentioned in this video, feel free to pause and go back to the specific videos. Knowing these concepts and models could mean a few extra points in exam which could go a long way in securing you the certification. Most importantly, the six advantages of cloud computing comes up again and again in exam. So it's well worth your time to make sure you know what these phrases mean in layman's terms.

### **----- BULLET POINT NOTES -----**

#### Main Notes
  - Advantages of cloud computing over legacy on-premises IT infrastructure
  - Cloud computing models
  - Cloud computing deployments
  - Design priciples of cloud computing (like Well-Architected Framework)

#### Six Advantages of Cloud Computing
- 1. Trade capital expense for variable expenses
- 2. Benefit from massive economies of scale
- 3. Stop guessing about capacitity
- 4. Increase speed and agility
- 5. Stop spending money running and maintaining data centers
- 6. Go global in minutes

#### Cloud Computing Models
- 1. SaaS - Software
- 2. IaaS - Infrastructure
- 3. PaaS - Platform

#### Cloud Computing Deployments
- 1. Public Cloud
- 2. Hybrid Cloud
- 3. Private Cloud

#### Six Pillars of a Well-Architected Framework
- 1. Cost Optimization
- 2. Reliability
- 3. Operational Excellence
- 4. Performance Efficiency
- 5. Security
- 6. Sustainability

---

### Chapter Quiz

1. Which of the below is not a “best practice” concept for deploying Cloud infrastructure?

- [ ] Security
- [ ] Reliability
- [ ] Performance Efficiency
- [X] Hybrid Cloud
  - Hybrid Cloud is a type of Cloud deployment, not part of the “best practice” concepts for deploying Cloud infrastructure

2. Which cloud concepts are you responsible for knowing for the AWS Certified Cloud Practitioner Exam?

- [X] advantages over legacy IT, models and deployments, and architecture
  - These topics cover all areas, except perhaps historical ones.
- [ ] history, security, and technology
- [ ] economics, mass storage, and implementation
- [ ] software, platforms, and infrastructure

3. How do economies of scale provide an advantage for the use of cloud computing over establishing a data center?

- [ ] with faster performance
- [ ] with lower prices due to competition between cloud services
- [ ] by providing the latest in hardware and software
- [X] by offering a portion of a large, optimized service
  - The cost of the accompanying infrastructure as a fraction of the total cost is reduced.

4. Your team wants to configure custom applications without worrying as much about security and hardware configurations. Which service model is most appropriate?

- [ ] SaaS
- [X] PaaS
  - A platform is provided on which to build your custom applications.
- [ ] MaaS
- [ ] IaaS

5. MedOpal is an aggregator of personal medical records for professionals who need to travel extensively. Security is paramount. Which type of deployment suits MedOpal best?

- [ ] hybrid
- [ ] cluster
- [ ] cloud
- [X] private
  - A private deployment satisfies the security that the business presently needs.