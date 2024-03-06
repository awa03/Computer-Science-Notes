Services are reusable components that are independent and are loosely coupled
- A web service is:
	- Loosely coupled, reusable software component that encapsulates discrete functionality
- Services can be offered by service provider inside or outside of an organization. 
- The service provider makes the information from the service public so that any authorized user can use the service
- Application can delay the binding of services until they are deployed or until execution
- Allows for opportunistic construction of new services if possible. A service provider may recognize new services that can be created by linking existing services


## Service Oriented Architecture


### SOAP

- SOAP (Simple object access protocol)
	- A message exchange standard that supports service communications
- protocol for exchanging structured information in web services. It is a messaging protocol that allows programs running on different operating systems to communicate with each other. SOAP uses XML (eXtensible Markup Language) as its message format and relies on other application layer protocols, such as HTTP or SMTP, for message negotiation and transmission.
- SOAP messages typically consist of an envelope, which defines the structure of the message, and a set of rules for how messages are processed. These rules include specifications for encoding data types and representing remote procedure calls. SOAP is often used in conjunction with web services to enable communication between different systems over a network.
- More lightweight alternatives are now used

### Restful Service

- Traditional services standards are criticized as heavy weight
	- Overuse of XML
	- WSDL files: complex and difficult to work with
- REST is an architecture based on transferring representations of resources from a server to a client
- This style is simpler than soap
1) Resource Identification: a URI
2) Resource representation: any format, XML
3) Resource operation: retrieve, create, delete, or update

Name|Definition
-|-
Post|Create a new resource on the server. The client sends data to the server, and the server creates a new resource based on that data.
Get|Read a value of resource and return that to requestor
Put|Update a resource on the server. The client sends data to the server, and the server updates the resource based on that data. If the resource does not exist, it may be created.
Delete|Remove a resource from the server. The client sends a request to the server, and the server deletes the specified resource.

- used when the data is exposed and is accessed using its URL
- Invokes the GET operation and returns a list of maximum and minimum temperatures


### Microservice-based architecture

- A modern interpretation of service oriented architecture
- Developed independently
- Multilingual and multi-technology
- Communicate over lightweight interfaces (REST)
- Easy to deploy
- Scale independently
- Total system functionality comes from composing multiple services 
- Most services are not externally available
- Shortens development lifecycle
- Reduces communication and coordination effort
- Reinforces abstraction
- Makes easier to maintain a clear boundaries between components