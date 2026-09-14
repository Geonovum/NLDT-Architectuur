# Introduction

This reference architecture contains guidelines and principles for a networked system of digital twins for the physical environment. This reference architecture is intended for everyone who plays a role in establishing a digital twin for the physical environment. The guidelines, starting points, principles, and standards presented in this document contribute to establishing a system consisting of many applications that form together a network of digital twins.

This document contains an "open" architecture. That is to say: the architecture can be applied by everyone, government and business alike. Application of the guidelines, principles, and standards from this document contributes to establishing an "ecosystem" that consists of many data sources and computational models to be connected. This makes it possible to connect data and models from diverse sectors and knowledge areas, and thereby create two- or three-dimensional images of the physical environment, support policy-making with decision models and simulations, or enable real-time control functionalities for operational processes.

The subject of Digital Twins is currently receiving a great deal of attention; developments are rapidly succeeding one another on all fronts. This reference architecture has been drawn up against this background; seeking the broadest possible consensus on starting points, principles, and standards for developing digital twins. Seeking a coherent package of principles and standards and thereby sometimes also explicitly excluding certain principles and standards. The choices made in this document can therefore provoke discussion. That fits the phase in which this development finds itself. After this version, new versions will follow, which will bring us another step closer to a complete system for digital twinning of the physical environment.

### Scope

This reference architecture is limited to the physical environment. This includes the built environment, spatial planning, traffic flows, air composition, noise, temperature, public transport, water systems, and infrastructures for energy, data, water, sewage, and data communication. 

Within this domain, digital twinning can help map the current situation, such as the location and dimensions of buildings, bridges, tunnels, and the like. Or it can involve bringing together data based on measurements of traffic flows, particulate matter, noise, or temperature. This can involve static or dynamic data. The use of a digital twin can support researchers and policymakers in making considerations in the design of aspects of the physical environment, such as the design of new residential areas, infrastructure, or calculating scenarios contributing to the energy transition. Digital twinning can also be a powerful tool for daily process control, such as traffic flows or mitigating negative consequences of exceptional rainfall.

Within the mentioned domains, extensive databases and measurement data are often already available. Models have been developed to make data insightful. Models are also necessary to perform "what if" analyses or simulations that can provide reliable predictions. Much is already in place, and often different disciplines and starting points underlie them. Digital twinning can be seen as a next step in this development. It is about bringing together data and the results of models to compose a multi-dimensional model of (a part of) reality. An example: What is the effect on traffic flow caused by a temporary road closure, and what does this mean for the environmental impact (CO2 emissions, noise) on the alternative routes that traffic will use, and what adjustments to the traffic guidance system will be necessary to prevent a traffic jam? The combined use of computational models provides insight into such complex issues.

This reference architecture therefore contains guidelines, principles, and standards relevant to digital twinning within the aforementioned areas. 

In this document, we follow the definition of a Digital Twin as stated in the (Dutch) Parliamentary letter from the Ministry of Housing and Spatial Planning: 

_A digital twin of the physical environment is a digital representation of the urban and rural environment based on data, models, and visualisations. These can be used to simulate and analyse various aspects of the physical environment._ [[VRO_2024]]

### Target audience

This document is aimed at everyone involved in developing forms of digital twinning within the physical domain. This naturally includes business, information, data, and infrastructure architects, but also model and data specialists, developers, user interface and security experts, and administrators. For people who are further removed from the technology, the chapter on core values is important, and possibly parts of the other chapters as well. The structure of the document progresses from general to increasingly specific.

### Structure of this Architecture

The architecture describes a number of core values that a Digital Twin for the physical living environment should meet in chapter 2. 

Chapter 3 discusses the Architecture Principles of the nLDT. 

Chapter 4 discusses the implications that follow from the Architecture Principles. 

Chapter 5 introduces Valuestreams and elaborates on a number of Capabilities that functionally describe what a Digital Twin must fulfil. These Capabilities stem from a previous publication Policy processes and building blocks for Digital Twins [[BBDT]].

In chapter 6, these Capabilities are then modelled in more technical building blocks, with a particular focus on standards and guidelines. The reference architecture will not prescribe specific (software) solutions but will focus on patterns that enable interoperability. 

Chapter 7 then outlines how this architecture relates to developments in the broader field.