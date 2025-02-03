# Ethical Hacking
- only way to determine if defenses are capable
- provides information assurance
- probes infrastructure to identify weakness and recommend security measures
- a _layered_ approach at multiple locations can help prevent most attacks
- specialized or advanced tecniques not needed
- most of the time from common mistakes
- can be done through outsiders or insiders

### Technical Controls
- Controls should detect and prevent
- centralize
- provide early notification
- firewalls
- honeypots
- packet shapers
- network isolation using VLANS and NAT
- __Access Controls__
  - only authorized have access
  - on physical or cloud
- __Administrative Policies__
  - strong policies
  - disaster recovery
  - incredent managment
  - hiring practices
- __People__
  - security
  - education
  - training
  - awareness
  - company policies
  - cultivate security aware employees
- __Technical, administrative, the people__ are the layers

### AI and Machine learning
- morris worm was the first
- then email viruses in early 2000s
- ddos
- ransom ware
  - holding data hostage
- now more complex and well funded
- ai and machine learning play a key role
  - detect anomolies
  - analyze a large amount of data
- heuristic based recognize general characteristics shared by malware
- rule based uses a set of roles to see if indicitive of anamoly
- if most data is uploaded a download maybe a indicator
- monitors users, routers, servers, and endpoints
- malware is becomming more aggressive
  - ransomeware devistating
  - polymorphic malware
    - changing signatures
- most data is encrypted
  - double edged sword
  - __advanced persistant threat__
- fileless malware
- tunneling
- steganography
- adaptive security controls
  - flexible and proactive
  - predict, prevent, respond, recover
  - cyberthreat intelligence
  - vulnerability management
  - scan systems to identify weaknesses
  - security automation tools
    - based on changes in threat levels

### Stop Network Threats
- datamining algorithms to match characteristics to malicious activity
- event correlation, when multiple events are analyzed to find patterns in activity
- independetly monitor and secure network
- when score reaches certain score anamoly is found
  - then suspected host is disconnected
  - notified of issue

### Threat Modeling
- visualize vulnerability's within entry points
- malware
- supply chain attacks
- cryptomining
- ransomware
- _vulnerability analysis_: analyzes potential weaknesses across multiple attack vectors
- _threat assessment_: determines the best approach to ensure a system against a particular threat
- _threat modeling_: examines attack vectors and how potential attacks can occur
- used to create visualization of system and entry points as well as potential threats
- microsoft threat modeling tool

### Cyber Threat Intelligence
- share information on vulnerability's
- CVE (common vulnerability's and exposures)
- STIX / TAXII
- security operations center
  - gathers data using automated and manual methods
  - monitor network
  - gather data on threat
  - send operations to global reputation servers
  - update database
  - share with other networks
  - talos

### Threat activity to Threat intelligence
- cyberthreat intelligence: collecting analyzing and disseminating information about potential or existing cyberthreats
- cyber threat information
  - information
  - unevaluated
  - not nessicarily actionable
  - maybe inaccurate
- cyber threat intelligence
  - accurate
  - evaluated
  - actionable
- __indentify requirements__
- __collect information__
- __process information__
- __analyze data__
- __disseminate intelligence__
- __mitigate threats__
- __provide feedback__
- the lifecycle of threat intelligence is continuous

### Managing Incidents
- an incident is an unplanned event that disrupts activities
- guidelines
  - responding to disturbance
  - ask questions to narrow the scope
    - are all applications effected
    - have you downloaded / upgraded anything
  - consider cause
    - priority maybe modified
    - handed off if needed
  - some may resolve quickly
    - testing before deployment maybe required
  - run baseline
    - before and after
  - save configurations
  - close incident
  - allow for feedback
  - documentation should include problem and resolve, and suggest solutions
  - __proactive approach__
    - maintain security patches and updates
    - maintain all access control lists
    - perform security drills
    - tabletop exercises

### Hardening Guidelines
- security review
- manage supply chain risks
- strong operational controls
- architectural risks
- manage authentication, authorization, and accounting procedures
- review relationships with service providers

### Cyberkill Chain
- __advanced persistant threat__
  - if we identify early enough reduce possibilities
- 7 steps
  - reconissance
    - gathering information
    - researching for vulnerabilites on your system
  - weponization
    - devise a plan to get inside network
    - using polymorphic malware
  - delivery
    - using phising email
    - using software update
  - exploitation
    - now on network exploit
    - missing input validation
    - not closing DB connection
    - obselete methods
  - instalation
    - installs malware
    - create backdoor
    - rootkit
    - attempt to reaccess
  - command and control
    - issue instructions
  - actions on objective
- helps understand methodology
- goal is to stop attack before reach objective

### MITRE Attack
- advertiarial tactics, tecniques, or procedures
- attempt to reduce attacks
- __tactics__: technical goals that attackers must accomplish in order to execute attack
- __tecniques__: methods attackers use to acomplish their goal within each _tactic_
- __procedures__: sequences of tecniques and tactics that attackers use to achieve their objective
- guide ethical hacking procedure
- __MITRE Att&ck__: provides details on hundreds of tecniques

### Diamond Model of Intrusion Analysis
- __Defense Technical Information Center__
  - read about and view model
- 4 core features
  - adversary
    - malicious actors who seek to compromise
    - nationstates, insiders, etc
  - capability
    - tecniques and tactics used by attackers
  - victim
    - who is vulnerable
    - individual, goverment entity, etc
  - infrastructure
    - physical or logical communication structure attacker uses
- provide a way to analyze attack
- __metadata__: helps piece together events after cyberthreat
- most cases adversary and victim do not communicate directly
- __activity threads__:
  - gaps identify where more information is needed
  - will be able to identify capability and infrastructure used
- adversay can be identified still

### Lateral Movement
- reconissance
- inital access
- priviledge escalation
- lateral movement
- exfiltaration
- steel kerberos tickets and or access tokens
- RDP attacks
- spear fishing attacks
- CLI execution attacks
  - scripts
  - exploit vulnerabilites
  - control botnet
- __DNS Tunneling__
  - encodes data in DNS queries and responses
  - bypass firewalls
  - dns tunnel capture v normal capture
  - check wireshark
  - can send and recieve data undetected
