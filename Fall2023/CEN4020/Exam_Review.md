<h1><strong>Software Development process model</strong></h1>
- Waterfall
- Spiral 
- Agile
More info is found in [[Lecture_2]] & [[Lecture_3]]

<h3>Process Model - Waterfall</h3>
- Sequential model
- 6 methods
	1) Feasibility Planning
	2) Requirements Definition
	3) System and software design
	4) implementation and unit testing
	5) System testing and integration testing
	6) Operation Maintenance 
- Not good for change

<h3>Process Model - Spiral</h3>
- 4 Stages
	1) Plan Objectives
	2) Risk Analysis and Resolution
	3) Develop next version
	4) Plan the next Phase
- Risk management is crucial
- Built off the previous version of the software system

<h3>Process Model - Agile</h3>
> Most Popular Model
- Program specification and design are light and interleaved
- The system is developed as a series of increments 
- Rapid development and delivery
- Emerged in 1990s
- <strong>4 Values</strong>
	- Individuals and Interactions
	- Working Software
	- Customer Collaboration
	- Responding to Change

<h3>Extreme Programming</h3>
- Start with the simplest solution and evolve it as necessary
	- Pair programming
	- Collective ownership
	- Continuous integration
	- Sustainable pace
	- On-site customer

Practice|Description
-|-
Incremental planning|Plan in small parts and continue the cycle
Small releases|Release small portions at a time
Simple Design|Make each design a simplistic component that builds to a large complex one
Test-first development|Requirements being converted to test cases before software is fully developed
Refactoring|Make Changes Based on these 

<h3>Scrum Programming</h3>
- <strong>Product Owner</strong>- Represents the stakeholder, voice of customer
- <strong>Development Team</strong>- Self-organizing, and delivering the product. 
- <strong>Scrum Master</strong>- Facilitator who organizes meetings, tracks work and communicates with customers and management.
- The starting point for planning is the <strong>Product Backlog</strong>
- The selection phase involves the product team working with the customer to select the features and functionality developed during the sprint.
- Meetings are short, describe progress since the last meeting and problems that have arisen, and plan to remedy this.

<h1><strong>Version Control System</strong></h1>
- Software tools to visualize changes over time
	- Track changes
	- Track errors
	- Etc
- <strong>Centralized</strong>
- <strong>Distributed</strong> 

<h3>How Git Works - DCVS</h3>
- <strong>Working Directory</strong> - Local copy
- <strong>Staging Index</strong> - Where the commit is prepared
- <strong>Repository</strong> - Where the commit is stored
- Atomic commits are small changes related to specific aspects of the projects
- Example
	- Commit 1- Player Movement & Tile Map <strong>Wrong</strong>
	- Commit 1- Player Movement | Commit 2- Tile Map <strong>Right</strong>
	
<h3>What the Client Needs</h3>
- High-level requirements - give a general description of what the system should do
- Low-level specifications - more specific and how they will operate
- Functional requirements - specifies an action that the product must perform
- Non-Functional requirements - Constraints, and things that are measurable

<h3>UML Diagram</h3>
- <strong>Actor</strong> - user is symbolized by a stick figure
	- The type of user needs to be identified
	- Could be an external system, database
- <strong>Use case</strong> - represents functionality
	- One functional requirement
	- Linked to at least one actor, most of the time
	- (Not when triggered by another case)
- <strong>Association</strong> - The participating actor is linked by this
	- Links elements together
- <strong>Include</strong> - between two use cases
- <strong>Extend</strong> - between two use cases




 #incremental #development_models #cen4020 #software #engineering