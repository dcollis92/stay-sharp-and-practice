# Introduction to AWS for Non-Engineers: 1 Cloud Concepts

## **Diving into AWS**

---

### 4.1 Popular Services Offered in AWS

Transcript:
Compute services provide virtual server hosting, container management, and serverless computing. You can set code to run to certain triggers using Lambda, run virtual machines using Elastic Compute Cloud or EC2, quickly set up and run small websites using LightSail, or create a unit of software to ship out to your users using Elastic Container Services or ECS. Compute services are backbones of cloud computing platforms as they provide the much-coveted computing resources that many companies are looking for. Instead of having to host their own servers in their own data centers, they can rent servers from AWS for pennies on the dollar. Storage services provide storage for both in-use and archival files. You can use Elastic File System or EFS to create shared folders in the cloud. You can upload flat files like images, videos, or text files to Simple Storage Service or S3 and link to it directly to use on your website. You can also archive files and store large amounts of data for cheap using Glacier or you can use Storage Gateway to take daily backups of your company's on-premises data and send them to the cloud for safekeeping. Storage solutions are cheaper than ever with cloud computing and AWS provides many options depending on the frequency of access and durability of data you require. AWS also offers fully-managed relational and NoSQL databases. Their cost-efficient relational database is called Relational Database Service or RDS and a highly scalable NoSQL database is called DynamoDB. They also offer a fully managed, easily scalable petabyte-scale data warehouse service called Redshift and a highly scalable caching service called ElastiCache. ElastiCache allows you to run extremely intensive computations by caching necessary data in the cloud. All of the database services are highly scalable and cost efficient so you can crunch all the numbers and data you need for a fraction of the cost of an on-site database server. It's easy to get lost in the abundance of options but it's also exciting to consider the almost limitless potentials in what we can create using these resources.

---

### 4.2 Create an AWS Account

Transcript:
Let's dig right in and create an AWS account. You'll need to go to aws.amazon.com. Just as a warning, creating an account requires to have a valid phone number and a credit card. To create the account, click on the very aptly labeled button here that says "Create an AWS Account." Fill in your email address and create a password. An AWS account name is a unique username for AWS. You might have to try a few times before you hit an account no one has taken yet. Once you're done filling out the form, click Continue. For the account type, choose Personal, as you are creating this account to learn and explore. Enter your full name, phone number, as well as your address. Make sure to read the agreement and check the box before proceeding. Once you're done, click Create Account and Continue. We're almost done. The next page asks for your payment information. For the first 12 months after your account creation, you are eligible for what is called the AWS Free Tier. This means that up a certain usage level, you can try out many of AWS's most popular features for free. The payment information is in case you use features that require payment, or if you go past your free tier limits. They will make a small test charge to make sure your payment method is valid. It will go away once your account confirmation is complete. Now click Secure Submit. We're almost done. This page will ask you to verify your account creation with a phone verification. They will call you so you can put in a code to verify that you indeed did create this new account. This number can be any phone number that you can receive calls at, so it can be an extension at work if needs be. Put in your phone number, type in the code in the security check, and click on Contact me. When prompted, enter the four numbers that came up after clicking the button when you received the call. Feel free to pause this video now to receive the phone call. Once you complete the verification, click Continue. Now you'll select a support plan for your account. As you can see on this page, there are three kinds of support plans available to you, which are Basic Plan, Developer Plan, and Business Plan. There is also a fourth one, Enterprise, but that's only for bigger companies that require a lot of support. Each plan has different features, support tiers, and costs associated. You can click on the Basic Plan, as it's free and provides you access to health status and notifications for your various services. You can learn more about each support plan by clicking on Learn More. Now we wait for AWS to finish creating your account. The page you're on now helps you personalize your account by picking your role and interests while you wait for the account to be activated. Once your account is fully ready, which generally only takes a few minutes at most, they will notify you by email. There you have it. You've successfully created an AWS account. Go check your email to log in to your own AWS management console for the first time.

---

### 4.3 Exploring the AWS Dashboard

Transcript:
When you first log in to the AWS Management Console, you'll immediately notice that there's a lot going on. No worries. Most of the time, we only work with one or two of the resources on this dashboard. First off, let's take look at the right top corner of the browser. Here, you'll see your user name you chose for yourself when you signed up for an account. When you click on your user name, you can find out information and have a quick way of accessing your security credentials. The billing portion is important as you start exploring different services, as some of them will cost money, even during the free tier. Let's move on to the link near the user name labeled Support. Here, you can explore different ways of finding documentation and support resources for your issues or questions. You can create tickets in the support center or ask peers in the forum. You can also find documentation and tutorials on how to troubleshoot or create certain functions in the documentations and trainings offered by AWS for free. The Services link at the top left corner of the browser takes you to the list of all the services AWS offers. This list expands as new services are announced, and just in October of 2018, AWS added new categories, like Blockchain and Satellite. Some of the most popular categories of services are Storage, Commute, and Database. You can click on any of them and they will provide you information and introduction to the services, as well as resources you could check out to learn more about them. Back on the main dashboard, there are resources to learn about various services and what they can do for you, such as the Build a solution and Learn to build section. You can also go to the Explore AWS column to the right and see what AWS things you should check out now. There are many parts to the AWS Management Console dashboard, but we've gone over many of the main resources available for you to begin your dive in to AWS. A big portion of learning a new system or technology is knowing where to look for answers. And the support resources available on the dashboard can answer many of your potential questions and issues. Go ahead and take a little while to explore the dashboard on your own.

---

### AWS Free Tier

Transcript: 
Go to AWS.Amazon.com/free. AWS Free Tier allows new potential customers to test out and use many services offered by AWS for free. This allows you to become comfortable with many of the services and AWS gains a potential customer. When the 12 months are over, you begin to be charged for services you consume at regular rates. As a warning, you will get a notification when your 12 months are expiring, but you will then need to manually turn down or delete your services if you don't want to be charged. There are three different types of Free Tier offerings. They are 12 months free, always free, and trials. Let's take a look at each option. The first option is 12 months free. As the naming suggests, these are offers that expire 12 months after you sign up for your account. All of the services have usage limits, and if you go above the limit, you will be charged at normal rates even within the first 12 months. Some of the common limitations are use time, number of requests, amount of storage, number of characters, and actions per month. The second option is always free. And, you guessed it, it's always free, up to a certain point. The final type of Free Tier offering is trials. Most of the trials are for less than 12 months, and have stricter limits. Take note, one important thing is that being on the AWS Free Tier plan doesn't mean you have unlimited use of everything. Depending on the service, there are different limits. AWS Free Tier is a generous offering that helps bring in new customers for AWS, and as a brand new user of AWS, it allows you to test out the services and learn and explore this powerful system.

---

### Use Case: AWS Free Tier

Transcript:
So, now that we are armed with an AWS account and AWS Free Tier, let's explore a use case for a real project you can create using mostly free resources. Imagine you have to create and host a WordPress website using AWS. You can very quickly spin up an Elastic Compute Cloud or EC2 Instance, that comes loaded with WordPress. AWS has a marketplace for preconfigured servers called Amazon Machine Images or AMI. These are basically templates of servers that you can create and immediately get it preconfigured to a certain way. In this case, a company called Bitnami has created a WordPress AMI called WordPress Certified by Bitnami. It is Free Tier eligible and runs on an Ubuntu server. You will be led through the setup process and once you're through, you will have a WordPress website set up and ready to go. EC2s have fairly long URLs through, which could be something like ec2-52-204-122-132.compute-1.amazonaws.com. That's usually not a very attractive way to introduce your blog to your new friends. You would probably want something like mycoolblog.com to take your visitors to your brand new blog. AWS has a service to help you do just that. The simplest way is to purchase the domain name that you want using AWS's domain name registrar Route 53. A domain name registrar is like a phone book. To visit a website you input a domain name like mycoolblog.com and the DNS finds it in an online directory of IP addresses. It then sends your request to the appropriate server so you can load the website. By purchasing your domain on Route 53 and matching the domain name with the IP address of your EC2 Instance, you can make the address mycoolblog.com load your WordPress website. Now, Route 53 costs a few dollars a year for the domain registration and charges a separate monthly usage fee, however, the monthly usage fee for me is around 50 cents a month and domain registration itself was around $12, so for a whole year of website hosting the costs are fairly minimal. If you were thinking about starting a blog for cheap using AWS might just be the way to go, and it doesn't hurt that you are getting some hands-on experience with different services at AWS. There are many resources available on how to set one up ranging in complexity from a simple one, like what we just did using Route 53 and EC2, to using other services like CloudFront, AWS Certificate Manager and Elastic Load Balancer to help secure the website and make sure it stays up even if someone tried to take your blog down with a DDoS attack. Your creativity can take the reins to create just the project you were dreaming of with AWS Free Tier and other services.

### **----- BULLET POINT NOTES -----**

#### WordPress AMI on EC2
- Elastic Compute Cloud (EC2) = Virtual Server on AWS
- Host websites like WordPress
- Amazon Machine Images = Preconfigured servers in AWS Marketplace
- Free Tier eligible, and runs on Ubuntu server
- WordPress blog on EC2

#### Route 53
- Domain name registrar
- You can purchase a domain name for a WordPress blog on Route 53

---

### Chapter Quiz

1. How can you find general documentation and help on the AWS dashboard?

- [X] from the Support drop-down menu
  - You can find detailed documentation and create help tickets.
- [ ] from the Services drop-down menu
- [ ] by accessing Learn to Build or Build a Solution
- [ ] by using Resource Groups

2. How should you use AWS Free Tier?

- [X] as a way to explore
  - The service provides an introduction to AWS, and lets you try various capabilities.
- as an in-depth resource
- as a routine service
- as a toy

3. How can you make the URL for your weblog simpler than the long AWS string?

- [ ] by using the correct EC2
- [ ] by using WordPress
- [X] by using the paid AWS domain registrar
  - This service is called Route 53.
- [ ] by using an AMI

4. Your team has some extensive calculations to conduct for an engineering design. Which type of service would be most helpful?

- [ ] database
- [ ] storage
- [ ] machine learning
- [X] compute
   - Compute services are core to many scientific and engineering operations.

5. What information is necessary for AWS account creation?

- [X] telephone number and credit card credentials
  - The telephone number can be mobile or other.
- physical address and mobile phone number
- name and banking details
- Amazon ID and password