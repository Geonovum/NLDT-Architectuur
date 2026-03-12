# Valuestreams and Capabilities

As described in the introduction, we follow this definition of a digital twin: 

_A digital twin of the physical living environment is a digital representation of the urban and rural environment based on data, models, and visualisations. These can be used to simulate and analyse various aspects of the physical living environment._ [[VRO_2024]] 

The application of a Digital Twin in the physical living environment can be very diverse. To provide some guidance on the different types of applications, we use the following type levels of automation:

| Level | Explanation |
| --- | --- | 
| Descriptive | Dispersed, static data in systems without integration, communication, or automation. |
| Diagnostic | Operational data and sensor data. Dashboard with operational insights. |
| Predictive | Contextual data, machine learning, partial automation, connected data and systems. |
| Prescriptive | Real-time data from integrated systems, situational awareness, recommendations. |
| Autonomous | Continuous intelligence for decision-making, adaptive and generative AI, self-sustaining. |

Note: These levels of automation are used within the DMI ecosystem. 

Besides these automation levels, we also recognize the policy cycle, whereby in the different phases a different type of application can be used. (see [[BBDT]] for more information on this topic)

In this chapter, the value streams and capabilities are broadly described that can be used in different combinations, depending on the level of automation and phase in the policy cycle. The choice of which capabilities can be used for a specific application is not part of this reference architecture.

## Metamodel

<img src="./respec/media/NLDT-en_archimate_metamodel.png" alt="archimate metamodel" width="900">

Archimate metamodel for the nLDT architecture. [online viewer](https://geonovum.github.io/nldt-architectuur/Archimate/html/index.html?view=id-a08c59e3541043cba2f2f63e81f08c2f)

The above image visualises the Archimate metamodel for the nLDT architecture. This is built from motivational elements of Archimate to express frameworks and guidelines. Furthermore, it is built from capabilities and value streams to describe the service provision. The capabilities are then elaborated into patterns based on elements from the business and application layers of Archimate. Chapter 5 discusses the value streams and capabilities, Chapter 6 discusses the patterns of business and application objects.

## nLDT - eGovERA Alignment

<img src="./respec/media/nLDT-eGovERA-Alignment.png" alt="nLDT - eGovERA Alignment" width="900">

High level overview of nLDT - eGovERA Alignment

The different components of the nLDT reference architecture can be mapped to eGovERA building blocks. A general alignment is outlined in the above view. A more detailed mapping can be found in the archimate model.
  - The motivation and guidelines of the nLDT are aligned with the Shared Legal Content
  - The Organizational viewpoint is aligned with teh Shared Organisational Content
  - The nLDT building blocks contain elements that realize the Shared Knowledgde Content, while all the building blocks align with the Shared Application Content

  This Alignment is done against version 6.1.0 of the eGovERA Business Agnostic Reference Architecture [[eGovERA]]

## Value Streams

The deployment of a Digital Twin as an instrument serves a certain goal. This can be a scenario analysis, the substantiation of conducted policy, or the operational control of a system. There are countless possibilities. In all cases, a translation must be made from the intended goal to a model-based representation in the Digital Twin. This translation can be represented in a value stream that realizes a certain goal and thereby needs a number of capabilities.

### Use case to Indicators

In the report 'Policy processes and building blocks for Digital Twins' [[BBDT]], it is described how Digital Twins connect the world of policy with the world of technology. Indicators act as the linking pin from policy to the Digital Twin to enable data- and model-driven work within the policy process. The Innovation Learning Cycle can be used to connect these worlds. In architectural terms, you can refer to this as Value Streams.

## Capabilities

There are internationally diverse frameworks that describe capabilities or components of digital twins. Based on the ['Capabilities periodic table' of the Digital Twin Consortium](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table), a simplified set of Capabilities has been defined that serves as the basis for the nLDT [[BBDT]].

<img src="./respec/media/capabilities-en.png" alt="DT Capabilities op basis van Digital Twin Consortium Periodic Table" width="900">

<aside class="note">
    The image still needs to be updated with the 4 new capabilities.
</aside>

[Digital Twin Capabilities Periodic Table](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table)


### Data services

#### Access

> The controlled accessibility of data and computational models to other systems and applications via standardized interfaces.

The access function ensures that data and computational models in the digital twin are available for use by other systems, applications, and users. This occurs via clear and standardized digital connections, the APIs. This allows data and model results to be requested and reused safely and in a controlled manner. By providing access to data and models, information and calculations do not have to be recreated every time. Instead, they are managed and kept up-to-date at the source, while various applications can utilize them. This promotes collaboration, consistency, and efficient use of information.

#### Manage

> Actively adjusting, adding, or removing objects, properties, and designs within the digital twin.

The manage function makes it possible to actively make changes to the data in the digital twin. Users can not only edit data but also modify or add objects and new elements. This could include moving objects, changing properties, or adjusting settings within the digital environment. Additionally, designs such as 2D or 3D models and (parametric) designs can be integrated into the digital twin. This allows for the exploration of how new plans or interventions fit within an existing situation. All modifications are recorded so that it remains visible what was adjusted, when it happened, and by whom. Managing thus supports the exploration, elaboration, and calculation of the effects of designs in a digital twin before changes are implemented in the real world.

#### Find and Bind

> Being able to purposefully discover, filter, and retrieve relevant data, computational models, and visualisations within the digital twin.

The find and bind function ensures that users can quickly and easily find the right data, computational models, and visualisations within the digital twin. Because a digital twin often consists of many different datasets, models, and visualisations, it is important that the digital twin is easily searchable.

#### Time travel

> Time travel makes it possible to look back at past situations and look forward to recorded future scenarios and compare them with each other.

The time travel function in a digital twin makes it possible to view a situation as it was, is, or will be represented at a specific point in time. This means you can go back to the past to see what a situation looked like, what data was available, and what choices were made. Time travel helps users understand situations in their context, see differences over time, and gain insight into how a situation is developing. It supports historical analyses without making new predictions itself. Time travel displays existing or recorded states in time, while simulation calculates new variants based on chosen assumptions and prediction is aimed at future situations.

#### Describe

> Describing the meaning, origin, timeliness, and use of data and models so they can be correctly understood and applied.

The describe function ensures that data and computational models in the digital twin are clear and understandable. By providing data with descriptions (metadata), it is recorded what the data means, where it comes from, how current it is, and how it may be used. This makes it easier to find, correctly interpret, and reliably apply data, for both people and systems. This also helps ensure correct usage and prevents misinterpretation.

### Integration

#### Reproduction

> Being able to exactly recall previous states of the digital twin, including data, results, and the associated model settings.

The reproduction function makes it possible to recall a previous situation in the digital twin exactly as it was at a certain moment. This means that not only the data itself, but also the associated indicators, computational model settings, and context remain available for later use. Reproduction is essential when it must be demonstrated why a certain outcome or decision was reached and under what circumstances. By making situations reproducible, the digital twin becomes reliable and explainable: analyses and decisions can be verified, discussed, and, if necessary, re-executed based on the same starting points.

Time travel supports insight and context but does not guarantee full repeatability of a specific decision context. Reproduction is essential for accountability.

#### Sense & Actuate

> Connecting the digital twin to the real world by receiving measurements and (optionally) controlling systems or objects.

The sense & actuate function makes it possible to use information from the real world in the digital twin AND to perform actions in reality from the digital twin. Data such as temperature, movement, or status are measured and passed to the digital twin at fixed intervals or in real-time, so it can show an up-to-date image of the situation. Measured data is stored, making changes over time visible.
In addition to measuring, a digital twin can also be used to control parts of the real world. Via digital signals, settings or statuses can be adjusted, such as switching a device on or off (e.g., a bridge or lock). Both measurements and control actions are recorded.

#### Integration

> Bringing together data from different sources, systems, and domains into one coherent and recognizable image of reality.

The integration function ensures that data from various sources comes together as a coherent whole. Data from diverse systems and perspectives are linked and aligned so they form one clear image of an area or project. To integrate data, a coupling point (link) is always required, such as a location, a shared administrative key (e.g., a municipality code), or a geographic reference point. Combining this data reveals relationships that are not visible in isolated datasets, forming the basis for further analysis and decision-making.

### Intelligence

#### Analytics

> Interpreting data and results by recognizing and explaining patterns, trends, and deviations.

The analytics function helps give meaning to the data available in the digital twin. While calculation provides figures, analysis focuses on understanding what those outcomes mean for a situation or process. By viewing information from different angles, trends and bottlenecks can be discovered. Results can be presented in graphs, dashboards, or summaries to support decision-making.

#### Prediction

> Estimating likely future developments based on historical and current data and computational models.

The prediction function makes it possible to make an informed statement about how a situation will likely develop. It uses current and historical data combined with models to calculate probable future states. This differs from simulation (which explores what-if variants) and time travel (which shows recorded scenarios).

#### Orchestration

> Coordinating the coherence and sequence in which functions (such as sensing, calculating, analysing, and visualising) are executed.

Orchestration ensures that the different building blocks of the digital twin work together in the right order. It manages the process—for example, retrieving data, then calculating, then analysing, and finally visualising—without performing the calculations itself.

#### Simulation

> Simulation explores possible "what-happens-if" situations by changing parameters and calculating the effects.

Simulation allows users to investigate the impact of changing certain choices or circumstances. Users can adjust parameters to see effects on a system or area. Unlike prediction, it is not about what is most likely, but about exploring various options and risks to prepare for decision-making.

#### Calculation

> Applying calculation rules and models to data to generate results that provide insight into processes and effects.

The calculation function uses models to provide insight into phenomena like heat stress or waterlogging. It converts raw data into indicators, which are essential for policy-based assessments. These models are transparent and documented so that the underlying assumptions are clear.

#### Decide

> Decision support involves the careful weighing of effects and interests and subsequently recording a choice based on the insights provided by the digital twin.

The Decide function encompasses the careful weighing of various interests, goals, and effects, and then recording a choice based on insights from the digital twin. By making the consequences of options visible, it becomes clear what the impact is on factors such as livability, costs, safety, or sustainability, creating space for a well-founded dialogue about what is important. The decision consists of choosing a direction or option, including the moment and context in which that choice was made. By linking decisions to the underlying data and insights, it remains transparent why a decision was taken, allowing it to be explained, revised, or accounted for later.

### User experience

#### Visualisation

> Making data and results insightful via maps, graphs, dashboards, or 2D/3D images so information is quickly understood.

The Visualisation function helps users interpret, recognize, and understand data in the digital twin more quickly by making it visible through clear imagery. Instead of searching through lists or tables, users can discover data by looking at maps, graphs, or other visual representations. Visualisations make it possible to organize and filter large amounts of data—for example, by zooming in on an area, choosing a time period, or toggling specific themes on or off. This immediately clarifies where certain information is located and which data belongs together. By presenting data visually in 2D, 3D, or interactive environments with a Level-of-Detail that meets requirements, the function helps users place relevant information in the right context. Images can be static or dynamic, highly realistic (in terms of colors and effects), or symbolic (using false colors). Furthermore, the use of AR/VR/XR can offer more insight and interaction with reality.

#### (User) Experience

> Offering users an interactive and intuitive experience to actively explore and understand the digital twin.

The Experience function is about how users experience and interact with the digital twin. The experience aspect makes it possible not just to view information, but to actively explore, experiment, and learn within a digital environment. Users can immerse themselves in a situation and experience how a system, area, or process functions. Experience goes further than visualisation; while visualisation makes information visible, experience revolves around interaction, engagement, and ease of use. This can be shaped in various ways: with XR (Extended Reality), an environment can be fully experienced virtually, such as walking through a future neighborhood. With AR (Augmented Reality), digital elements can be added to the real world, such as projecting a new building or a noise zone into the existing environment. Gamification can also contribute by allowing users to complete tasks or explore scenarios, receiving feedback in the form of scores or rewards.

#### Explainability

> Explainability provides insight into the meaning of results from the digital twin by clarifying outcomes, patterns, and assumptions understandably and within their context.

The Explainability function supports users in understanding what outcomes mean, why certain patterns or effects are visible, and which assumptions play a role. Interpretation is particularly important because the user group of a digital twin is diverse, and not every user can independently interpret calculation results or analyses. Technically, this function relates to the 'explainability' of calculation models, the use of metadata and semantics, and AI models that provide summaries and explanations tailored to the user's role, knowledge, and context.

### Reliability

#### Trust

> Trust ensures that data in the digital twin can be shared safely, reliably, and according to clear agreements.

The trust function ensures that data within the digital twin can be shared in a safe, reliable, and responsible manner. Users must be able to trust that the information is correct, managed carefully, and only accessible to those with the right to see it. This trust arises because clear agreements have been made regarding the quality, origin, and use of data. By identifying users and applying access rights, it can be determined who is allowed to view or use specific data. Additionally, transparency contributes to trust; it is clear how data is processed and secured. Validation based on legal, ethical, or technical frameworks also gives substance to trust.

#### Identification & Authorization

> Identification establishes who the user is, so that access, rights, and responsibilities can be arranged safely.

The Identification function ensures that users of a digital twin make themselves known before using certain functions. By establishing who someone is, it can be determined which data, models, and functions are available to that user. In some cases, limited anonymous exploration is possible, but for more extensive actions—such as analysing, editing, or actuating—identification is necessary. This makes it possible to assign user rights and trace activities back to a user or role. This function protects users according to privacy and security rules, creating a reliable and transparent environment.

### Management

#### Observability

> Observability provides insight into whether the digital twin is functioning properly as a system by tracking whether data, models, and visualisations cooperate correctly and timely.

The Observability function ensures that the digital twin as a whole system continues to function properly. It provides insight into whether data, calculation models, and visualisations are working together correctly and on time. Monitoring or 'observability' makes it possible to see if data flows are running smoothly—for example, between measuring, calculating, and visualising. When components malfunction, data is missing, or results are unexpected, this can be signaled in time to prevent disruptions and safeguard reliability.

---


<img src="./respec/media/DT_Capabilities-en.png" alt="DT Capabilities" width="900">

<aside class="note">
    The image still needs to be updated with the 4 new capabilities.
</aside>

The online Archimate view of the Capabilities can be found [here](https://geonovum.github.io/nldt-architectuur/Archimate/html/index.html?view=id-decf311e5f5b4e169cf844aa5c909d0d).