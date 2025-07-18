# Implications


## Self descriptions

__Description:__
 A data product within the digital twin system must be able to describe itself. This means that all relevant information about the data product is directly available, including the context, usability, quality aspects, durability, origin (lineage), and semantic interpretation of the provided data.

__Rationale:__
 Self-descriptions are crucial for realizing the 'Data as a product' architecture principle. By providing data products with clear metadata, reuse is facilitated, and discoverability within the self-service data infrastructure is improved. This contributes to an open and transparent system (core value) in which users can assess the reliability of data (core value: fair, qualitative, and inclusive). The explicit mention of terms of use ensures data sovereignty. Moreover, insight into the properties of data strengthens trust in the entire system (core value).

__Implication for:__
- [Data as a product](#data-as-a-product)
- [Data sovereignty is safeguarded](#data-sovereignty-is-safeguarded)
- [The system is reliable](#the-system-is-reliable)
- [Data quality is known](#data-quality-is-known)
- [Self-service data infrastructure](#self-service-data-infrastructure)

## Lineage

__Description:__
 The origin and journey of data within the digital twin system must be traceable. This means that the data lineage or data provenance of a data product must be known, including the time of acquisition and any processing the data has undergone. 
 
__Rationale:__
 Insight into data lineage is essential to account for data quality (architecture principle: data quality is known) and to guarantee trust in the reliability of the system (architecture principle: the system is reliable). By knowing the origin, users can better understand the context of the data and assess its suitability for their specific application. This supports the core value of fair, qualitative, and inclusive by providing transparency about the data's creation.

__Implication for:__
- [Data as a product](#data-as-a-product)
- [The system is reliable](#the-system-is-reliable)
- [Data quality is known](#data-quality-is-known)

## Quality framework

__Description:__
 A quality framework must be present within the digital twin system that defines and manages standards and levels for the quality of data and models. This framework is necessary to exchange reliable data products and to ensure that users can assess the quality of the data on aspects such as relevance, timeliness, accuracy, coherence, consistency, interpretability, and accessibility.

__Rationale:__
 This framework is necessary to exchange reliable data products (architecture principle: the system is reliable) and to ensure that users can assess the quality of the data on aspects such as relevance, timeliness, accuracy, coherence, consistency, interpretability, and accessibility (architecture principle: data quality is known). It contributes to the core value of fair, qualitative, and inclusive by providing clear criteria for assessing data and models, which is essential for the responsible use of digital twins (core value: People at the centre, human in the loop).

__Implication for:__
- [Data as a product](#data-as-a-product)
- [The system is reliable](#the-system-is-reliable)
- [Data quality is known](#data-quality-is-known)

## Reuse

__Description:__
 Within the architecture of the digital twin system, the reuse of (system) functions and definitions should be maximized. This means that one should start from what already exists instead of focussing on developing new solutions. 
 
__Rationale:__
 This promotes efficiency and reduces costs by building on existing architectural frameworks (architecture principle: Aligned with related frameworks), open standards (architecture principle: open standards), and proven concepts. It ensures interoperability and is a direct consequence of the domain-oriented and decentralized nature of the system, allowing components to be used more frequently across different domains.

__Implication for:__
- [Aligned with related frameworks](#aligned-with-related-frameworks)
- [Domain-oriented, decentralized system](#domain-oriented-decentralized-system)
- [Open standards](#open-standards)

## Describe specific domain context

__Description:__
 When developing and offering data products, it is crucial to explicitly describe the specific context of the domain. This helps to prevent misunderstandings and ambiguity, for example by clearly indicating the difference between a bank (riverbank, waterway) and a bank (financial institute). 
 
 __Rationale:__
  This prevents misunderstandings and ambiguity in a domain-oriented, decentralized system where different disciplines collaborate. Domain context is specifically important related to the 'data as a product' principle to ensure the comprehensibility of data products, so that consumers can correctly interpret and use the data in their specific context. This contributes to the effectiveness of the system (core value: effectively governed).

__Implication for:__
- [Data as a product](#data-as-a-product)
- [Domain-oriented, decentralized system](#domain-oriented-decentralized-system)

## Ensure discoverability

__Description:__
 To encourage reuse and maximize the value of the system, it is essential that data products can be easily found by other participants. Only when products are discoverable via, for example, federated catalogs or indexes can parties choose to reuse existing solutions instead of developing something new themselves. 
 
__Rationale:__
 This stimulates reuse and maximizes the value of the decentralized system by increasing the potential for data integration (capability: integration). It is a direct implication of a domain-oriented, decentralized system where data and models can be distributed across different organizations and is facilitated by the self-service data infrastructure components. Discoverability is essential for the development of a digital twin ecosystem.

__Implication for:__
- [Domain-oriented, decentralized system](#domain-oriented-decentralized-system)

## Conscious choices in automation

__Description:__
 The development and management of the digital twin system requires conscious choices in the field of automation. This includes considerations about whether or not to use AI, but also being sufficiently aware of the technology stack used, such as a 'Infrastructure as Code' approach. 
 
__Rationale:__
 This is crucial for realizing federated computational governance which benefits the scalability and reliability of the system (architecture principle: the system is reliable). Automation of auditing, logging, authentication, and authorization is necessary given the size and complexity of the envisioned digital ecosystem. It contributes to a robust and secure system (core value).

__Implication for:__
- [Federated computational governance](#federated-computational-governance)
- [The system is reliable](#the-system-is-reliable)

## API Designrules

__Description:__ The architecture of the digital twin system is based on service orientation, where data and models are exchanged via standardized questions and answers (APIs). To ensure optimal integration and collaboration within the system, it is necessary to follow API Design Rules.

__Rationale:__
 This is essential to guarantee interoperability (architecture principle: open standards) and to create a reliable system (architecture principle: the system is reliable) in a service-oriented architecture (architecture principle: service orientation). It facilitates a flexible and responsive way of connecting and sharing data, models, and tools (core value: federated) and supports the exchange of data products within the self-service data infrastructure.

__Implication for:__
- [Self-service data infrastructure](#self-service-data-infrastructure)
- [Service Orientation](#service-orientation)
- [The system is reliable](#the-system-is-reliable)
