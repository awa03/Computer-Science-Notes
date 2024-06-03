# Introduction to Microsoft Azure
**Aiden Allen**

#### Different Cloud Models
There are 3 types of cloud models. These include:
- Private
- Public
- Hybrid
#### Private Model
The private model offers greater control (when compared to not using a cloud) for company's, due to features such as remote access. However it lacks the benefits of the public model while demanding a greater cost to the consumer. This is because it must be maintained by the user, which adds an additional layer of complexity when compared to outsourcing your cloud.
#### Public Model
A public cloud model is built and maintained by a third party. In the case of this assignment, Microsoft maintains their cloud platform __Azure__. The benefit of a cloud model being anyone that wants to purchase cloud services can access and use its resources. This availability difference is main differentiating factor between the public and private model.

#### Consumption Based Model
The consumption based model operates on the philosophy that the user should only be charged on the amount of IT Usage. This provides many benefits such as:
- No Upfront Costs
- No Infrastructure
- Get More Resources When Needed
- Stop Paying When Not Needed

#### Hybrid Model
The hybrid model uses both private and public models to interconnect to form an environment. It can be used to provide an extra layer of security as well as provide extra resources if needed given a usage spike. This may be useful for dealing with expected surges in usage.

#### Shared Responsibility Model
The shared responsibility model seeks to understand the relationship between the service provider (in this case for cloud computing with Microsoft), and the consumer. The shared responsibility model states that their are requirements that both the service provider and the consumer need to meet. On the service providers side, they have the responsibility of maintaining the ecosystem. This may include but is not limited to: ensuring the sanctity of data (security), ensuring the platform operates as intended, and keeping their systems up to the consumers standards. These standards for both the consumer the service provider can be variable, this brings us to the different levels of responsibility. 

There are 4 models offered by the Azure Cloud service. These are as follows:
- SaaS (Software As A Service)
- PaaS (Platform As A Service)
- IasS (Infrastructure As A Service)
- On-Premise

Generally speaking the consumer will always provide the information for which you are storing in the cloud or service, Devices for which you are allowed to connect to the service, and accounts for other users. The cloud provider (service) will always supply the: data center, network, and the host. Therefore the service model will define what operating system, network controls, applications, and infrastructure the VM (Virtual Machine) will use.

## Proof of Completion
![[S1-CLOUD.png]]
![[S5-CLOUD.png]]
> End Of Azure Fundamentals 1

****
#### Azure Management Infrastructure 
Azure's infrastructure begins with of course data centers. Azure hosts data centers around the world, this allows users to interact with the system through region zones, in order to ensure data security and resiliency.  For review purposes, [View More Info](https://datacenters.microsoft.com/). 

Given the brief summary from Microsoft:
<blockquote>The management infrastructure includes Azure resources and resource groups, subscriptions, and accounts. Understanding the hierarchical organization will help you plan your projects and products within Azure.</blockquote>
In other words it is useful to understand the Azure management infrastructure in order to properly use azure. We will cover all of these topics in order to gain a better understanding of the functionality, usage, and tools within Microsoft's Azure. 

#### Resources and Resource Groups
Any provision, creation, or deployment is considered a resource to Azure. This includes services such as Virtual Machines, Virtual Networks, and databases (and others) as well. In order to group these resources we use something known as a __resource group__. When a resource is created within Azure it must be placed into one of these resource groups. This is useful because it provides a layer of abstraction through grouping, providing easy of refactoring (through applying actions, also deletion), and a way of organizing resources. 

#### Subscriptions
Subscriptions provide a unit for billing, and logically organizing resource groups for payment. The basis of this model comes from the Azure tool, Azure requires a subscription in order to use the service. A subscription provides an authentication and access to the service. Additional azure subscriptions can be created in order to customize billing models. This means that our chain of command is as follows 

<blockquote>Resources are gathered into resource groups, and resource groups are gathered into subscriptions.</blockquote>
How do we manage all of these? Further grouping these, so that application organization can become more efficient?

#### Management Groups
To answer the aforementioned, we would use management __groups__. This allows us to implement many features, given the hierarchical relationship.
- __User Access to many subscriptions__
- __Hierarchy that Applies Policy__
#### Azure Storage Services
There are many benefits to using Azure storage services, these benefits include but are not limited to: 
- Security
- Scalability
- Accessible
- Durable
- Availability 

Azure includes the following data services: Blobs, Files, Elastic SAN, Queues, Tables, Managed Disks, and Container Storage. 

## Proof of Completion
![[S2-CLOUD.png]]
![[S6-CLOUD.png]]

> End Of Azure Fundamentals 2
****
#### What are the factors that can affect costs in Azure? 
Since Azure shifts costs from Capital expense (Hosting equipment covered by Azure) to Operational cost Azure costs are impacted by the following metrics:
- Resource Type
- Consumption
- Region
- Maintenance
- Subscription Type
#### Azure Monitoring Tools
__Azure Advisor__ evaluates your Azure resources allowing you to judge the reliability, security, and performance in order to determine optimizations that should be made to these resources. The Azure Advisor may assist in reducing costs as well, since it may lead to improved performance. __Azure Health__ provides a look into services or regions that you are using. __Azure Status__ looks at a broad picture of how azure is operating globally. 

#### Azure Monitor
Azure Monitor is a platform that collects data on your resources and analyzes it in order to determine what issues need fixing. Azure monitor may even fix some of these issues. Additionally, Azure provides features such as alerts in order to stay up to date on the monitors status.

## Proof of Completion
![[S3-CLOUD.png]]
![[S4-CLOUD.png]]

> End Of Azure Fundamentals 3

****

## Proof of Azure Account

![[S7-CLOUD.png]]

****