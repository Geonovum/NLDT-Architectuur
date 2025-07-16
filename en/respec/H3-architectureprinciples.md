# Architecture principles

## Connecting to surrounding frameworks

__Description:__
 The architecture of the digital twin system is partly based on architectural frameworks of the government and de facto frameworks as common within companies and organizations. 
 
__Rationale:__
 The system of Digital twins does not exist in isolation. It must relate to the environment and the developments taking place there. This includes Data space developments and the European Data and AI Act. 
 
__Implications:__
• Reuse

## Domain-oriented, decentralized system

__Description:__
 The starting point is that organizations participating in the system are themselves responsible for establishing databases, data processing, and making data available to third parties. Ownership and responsibility therefore lie with the source. Concrete implementation can optionally be realized via a service provider. 
 
__Rationale:__
 In a federative system, assigning ownership and responsibility to the appropriate place is indispensable. Only if this is regulated at an acceptable level throughout the entire system can the system as a whole be successful.

__Implications:__
• Reuse
• describe specific domain context
• ensure discoverability

## Data as a product

__Description:__
 Organizations develop exchangeable data products based on the data they possess, which are made available to other participants of the system under certain conditions (connection conditions). These data products can take the form of operational data, analytical data, models, or a combination thereof. A data product is developed so that it is findable, understandable, reliable, interoperable, accessible, secure, addressable, and has public value. These are the conditions for participation in the system. The data product also informs consumers about, among other things, the relevant context, usability, quality aspects, shelf life, and origin of the provided data. All this information is present with the data product itself.

__Rationale:__
 Product thinking creates the conditions for exchanging services within the system. It provides a framework for uniformly reasoning not only about datasets but also about models and analytical or other services. This creates the preconditions for collaborating and making agreements within a system. 
 
__Implications:__
• describe specific domain context
• self descriptions
• lineage
• quality framework

## Self-service data infrastructure

__Description:__
 The system relies on federated components, including public and private data networks, cloud-based data centers, indexes for making data products discoverable, and facilities for identity and access control. Through federated indexes, requesting parties can automatically find desired data products. The system is designed so that parties that meet the connection conditions can participate with their own components.
__Rationale:__
 A federative system must create the conditions for a level playing field. There is no dependence on just one infrastructure supplier, but parties must be able to participate based on open standards and connection conditions.
 
__Implications:__
• self descriptions

## Federated and automated governance

__Description:__
 The system is based on a federated / distributed approach where automated governance is built in. This means that auditing, logging, authentication, and authorization rely on automated systems (and thus not on a manual audit process or manual certification). This enables scalability and reliability of the system.

__Rationale:__
 The current digital ecosystem is so large, complex, and interwoven that manual control is insufficient. Implementing federated and automated governance requires a digital mindset that is not yet self-evident. 
 
__Implications:__
• make choices in automation

## Based on service orientation

__Description:__
 The architecture of the digital twin system is based on service orientation. Participants in the system exchange data and models via the principle of service orientation. This means: an interplay of (standardized) questions and answers via a connecting infrastructure. In practical terms, this is implemented with services or APIs.

__Rationale:__
 Decoupling the various components in the system is only possible if the system is realized with well-described open and interoperable interfaces. Well-defined interfaces create an ecosystem where different parties can collaborate interoperably. 
 
__Implications:__
• API Design Rules

## Open standards

__Description:__
 The architecture of the digital twin system is maximally based on the application of open standards. The system is open for participation from government and the private sector. Federated components of the system are designed using open standards. In addition, there is a strong recommendation for participating parties to also use open standards for data products, to maximize the interoperability of the system.

__Rationale:__
 Open standards enable a level playing field for the various participating parties. 
 
__Implications:__
• Reuse

## Data sovereignty is ensured

__Description:__
 The data owner determines the terms of use for the data they provide throughout the entire chain. Data sovereignty addresses how data is exchanged and shared between organizations. A data owner determines the terms of use of their data. In other words: the data owner determines what the data consumer may and may not do with the provided data.

__Rationale:__ To realize valuable solutions, it will not always be possible to use only open data. The system must support 'data sharing under conditions' so that it becomes possible to offer a rich palette of solutions. 

__Implications:__
• self descriptions

## Data quality is known

__Description:__
 Accountability for the origin, meaning, and quality of data (including in the form of models) offered by participants in the system can be provided at any time.

__Rationale:__
 A system based on these architecture principles leads to chains of combinable data. Therefore, it is essential that data product consumers receive accurate, field-level, information about matters such as the origin of data (data lineage or data provenance), time of data acquisition, reliability of data, validity of data, confidentiality of data, usage conditions of data, and semantic interpretation of data. 
 
 __Implications:__
• self descriptions
• lineage
• quality framework

## The system is reliable

__Description:__
 The system is aimed at optimally and reliably sharing data. For this, a framework is needed that creates and guarantees trust. 
 
__Rationale:__
 In the system, the roles of the participants are known to ensure that 'data sharing under conditions' can take place. 
 
__Implications:__
• API Design Rules
• make choices in automation
• self descriptions
• lineage
• quality framework
