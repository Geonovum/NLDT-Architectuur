# Architecture principles

## Aligned with related frameworks

__Description:__
 The architecture of the digital twin system is based on and aligned with  architectural frameworks of the EU and national governments as well as de facto frameworks used within companies and organizations. 
 
__Rationale:__
 The network of local digital twins does not exist in isolation. It must be aligned with other IT environments and the developments taking place in the broader context. This includes Data space developments and the European Data and AI Act. 
 
__Implications:__
- [Reuse](#reuse)

## Domain-oriented, decentralized system

__Description:__
 The basic premise is that organizations participating in the system are themselves responsible for establishing databases, data processing, and making data available to third parties. Ownership and responsibility therefore lie with the source. Implementations can optionally be realized via a service provider. 
 
__Rationale:__
 In a federated system, assigning ownership and responsibility to the appropriate place is indispensable. Only if this is regulated at an acceptable level throughout the entire system can the system as a whole be successful.

__Implications:__
- [Reuse](#reuse)
- [Describe specific domain context](#describe-specific-domain-context)
- [Ensure discoverability](#ensure-discoverability)

## Data as a product

__Description:__
 Organizations develop exchangeable data products based on the data they possess, which are made available to other participants of the system under certain conditions (e.g. Service Level Agreements). These data products can take the form of operational data, analytical data, models, or a combination thereof. A data product is developed so that it is findable, understandable, reliable, interoperable, accessible, secure, addressable, and has public value. These are conditions for participation in the system. The data product also informs consumers about, among other things, the relevant context, usability, quality aspects, shelf life, and origin of the provided data. All this information is present with the data product itself.

__Rationale:__
 Product thinking creates the conditions for exchanging services within the system. It provides a framework for uniformly reasoning not only about datasets but also about models and analytical or other services. This creates the preconditions for collaborating and making agreements within a system. 
 
__Implications:__
- [Describe specific domain context](#describe-specific-domain-context)
- [Self descriptions](#self-descriptions)
- [Lineage](#lineage)
- [Quality framework](#quality-framework)

## Self-service data infrastructure

__Description:__
 The system relies on federated components, including public and private data networks, cloud-based data centers, indexes for making data products discoverable, and facilities for identity and access control. Through federated catalogues, requesting parties can automatically find desired data products. The system is designed so that parties that meet the connection conditions can participate with their own components.

__Rationale:__
 A federated system must create the conditions for a level playing field. There is no dependence on just one infrastructure supplier, but parties must be able to participate based on open standards and connection conditions.
 
__Implications:__
- [Self descriptions](#self-descriptions)
- [API Designrules](#api-designrules)

## Federated computational governance

__Description:__
 The system is based on a federated / distributed approach where automated governance is built in. This means that auditing, logging, authentication, and authorization rely on automated systems (and thus not on a manual audit process or manual certification). This enables scalability and reliability of the system.

__Rationale:__
 The current digital ecosystem is so large, complex, and interwoven that manual control is insufficient. Implementing federated and computational governance requires a digital mindset that is not yet self-evident. 
 
__Implications:__
- [Conscious choices in automation](#conscious-choices-in-automation)

## Service Orientation

__Description:__
 The architecture of the digital twin system is based on service orientation. Participants in the system exchange data and models via the principle of service orientation. This means: an interplay of (standardized) questions and answers via a connecting infrastructure. In practical terms, this is implemented with services or APIs.

__Rationale:__
 Decoupling the various components in the system is only possible if the system is realized with well-described open and interoperable interfaces. Well-defined interfaces create an ecosystem where different parties can collaborate interoperably. 
 
__Implications:__
- [API Designrules](#api-designrules)

## Open standards

__Description:__
 The architecture of the digital twin system is maximally based on the adoption of open standards. The system is open for participation from government and the private sector. Federated components of the system are designed using open standards. In addition, there is a strong recommendation for participating parties to also use open standards for data products, to maximize the interoperability of the system.

__Rationale:__
 Open standards enable a level playing field for the various participating parties. 
 
__Implications:__
- [Reuse](#reuse)

## Data sovereignty is safeguarded

__Description:__
 The data owner determines the terms of use for the data they provide throughout the entire chain. Data sovereignty addresses how data is exchanged and shared between organizations. In other words: the data owner determines what the data consumer may and may not do with the provided data.

__Rationale:__ To realize valuable solutions, it will not always be possible to use only open data. The system must support 'data sharing under conditions' so that it becomes possible to offer a rich palette of solutions. 

__Implications:__
- [Self descriptions](#self-descriptions)

## Data quality is known

__Description:__
 Accountability for the origin, meaning, and quality of data (including in the form of models) offered by participants in the system can be provided at any time.

__Rationale:__
 A system based on these architecture principles leads to chains of combinable data. Therefore, it is essential that data product consumers receive accurate, field-level, information about matters such as the origin of data (data lineage or data provenance), time of data acquisition, reliability of data, validity of data, confidentiality of data, usage conditions of data, and semantic interpretation of data. 
 
 __Implications:__
- [Self descriptions](#self-descriptions)
- [Lineage](#lineage)
- [Quality framework](#quality-framework)

## The system is reliable

__Description:__
 The system is aimed at optimally and reliably sharing data. For this, a framework is needed that creates and guarantees trust. 
 
__Rationale:__
 In the system, the roles of the participants are known to ensure that 'data sharing under conditions' can take place. 
 
__Implications:__
- [API Designrules](#api-designrules)
- [Conscious choices in automation](#conscious-choices-in-automation)
- [Self descriptions](#self-descriptions)
- [Lineage](#lineage)
- [Quality framework](#quality-framework)
