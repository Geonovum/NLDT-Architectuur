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

Archimate metamodel for the nLDT architecture. [online viewer](https://geonovum.github.io/NLDT-Architectuur/Archimate/html/index.html?view=id-a08c59e3541043cba2f2f63e81f08c2f)

The above image visualises the Archimate metamodel for the nLDT architecture. This is built from motivational elements of Archimate to express frameworks and guidelines. Furthermore, it is built from capabilities and value streams to describe the service provision. The capabilities are then elaborated into patterns based on elements from the business and application layers of Archimate. Chapter 5 discusses the value streams and capabilities, Chapter 6 discusses the patterns of business and application objects.

## Value Streams

The deployment of a Digital Twin as an instrument serves a certain goal. This can be a scenario analysis, the substantiation of conducted policy, or the operational control of a system. There are countless possibilities. In all cases, a translation must be made from the intended goal to a model-based representation in the Digital Twin. This translation can be represented in a value stream that realizes a certain goal and thereby needs a number of capabilities.

### Use case to Indicators

In the report 'Policy processes and building blocks for Digital Twins' [[BBDT]], it is described how Digital Twins connect the world of policy with the world of technology. Indicators act as the linking pin from policy to the Digital Twin to enable data- and model-driven work within the policy process. The Innovation Learning Cycle can be used to connect these worlds. In architectural terms, you can refer to this as Value Streams.

## Capabilities

There are internationally diverse frameworks that describe capabilities or components of digital twins. Based on the ['Capabilities periodic table' of the Digital Twin Consortium](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table), a simplified set of Capabilities has been defined that serves as the basis for the nLDT [[BBDT]].

<img src="./respec/media/capabilities-en.png" alt="DT Capabilities op basis van Digital Twin Consortium Periodic Table" width="900">

[Digital Twin Capabilities Periodic Table](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table)


### Data services

#### Access

To visualise the physical living environment, data is layered on top of each other in a graphical environment. The data from the layers come from various registers and often represent policy choices or legal standards, and the sliders are the different policy ambitions in relation to the standards for, for example, noise or public green spaces. The layers can be controlled with sliders, so that interests can be balanced and fairly proportional to each other.

#### Manage

A Digital Twin is interactive and dynamic (measured data from the environment – including measurements done by citizens, also known as Citizen Science, so that the citizen is involved in initiatives). The user of it will be able to do more than simply observe data and models. The user will be able to modify data.

#### Find and Bind

In a Digital Twin, various types of data are brought together to create as accurate a representation as possible of the policy choices. Digital Twins must speak the language and use images that policy makers recognize – including normalizing and standardizing the indicators used. A Digital Twin also provides contextual information that helps users understand what the data represents, where it comes from, how it was collected and how it should be interpreted. This is especially important because Digital Twins often contain complex and diverse data sources. It is essential for the successful use of Digital Twins in various domains.

#### Time travel

The concept of time travel in a digital twin offers the possibility to study a situation in time. This concerns going back in time to give a reflection of how something was in the past. Digital Twins also make it possible to look ahead in time. This allows you to perform historical analyses, explore what-if scenarios, imagine or predict future situations.

### Integration

#### Reproduction

Every policy decision (at a specific time) that is made using a digital twin must be reproducible at a later time. So the state that the Digital Twin has at a certain moment must be recallable, including the value of the indicators on which the decision was made. The reproducibility of the circumstances in which a policy decision is made, by means of a Digital Twin, is very important:
1. In a constitutional state, decisions are made based on a legal framework and linked indicators, and
2. The Digital Twin is truly seen as a policy instrument and that it can be trusted and helps in efficiency.

#### Sense & Actuate

Some Digital Twins are capable of processing (measurement) data in real-time, monitoring (to see if policy also has the desired effect in the policy cycle), and optionally reacting to changes. This requires computational rules (algorithms) that can quickly analyse data and take action based on results. Measurements are stored, so that in the future they can be used to make a statement about a series from the past to possibly observe a trend in indicators.

#### Integration

A Digital Twin makes it possible to define different policy perspectives and thus gain a holistic view of a policy area or policy project. This combination helps to gain deeper insights, make better decisions, and generate value in various domains. This is an important instrument for integrating all layers into 1 situational picture.

### Intelligence

#### Analytics

Analysing is the process of examining and interpreting the data in the digital twin. This includes applying different analysis techniques, models, and algorithms to gain insights into the behavior, performance, and trends within the Digital Twin. The purpose of analysing is to see if control has the desired effect and can be adjusted for more or less effects where needed.

#### Prediction

Digital twins make it possible to anticipate future events, trends, or behaviors based on current and historical data of the simulated object or system. Using advanced analyses, models, and algorithms, a digital twin can simulate potential outcomes and scenarios, allowing users to react proactively to possible changes or challenges.

#### Orchestration

Orchestration ensures that the different components or services within the Digital Twin work together to perform a specific task or workflow.

#### Simulation

A Digital Twin makes it possible to bring together and combine different types of data into a holistic view of a system, process, or entity. This combination helps to gain deeper insights, make better decisions, and generate value in various domains. This is an important instrument for data-driven work. With simulation, AI can also be used for ‘opportunity finding’. The opportunity maps and what-can-go-where maps indicate areas with potential for solutions in case of conflicting interests in that area!

#### Calculation

Digital Twins can use computational models (e.g., heat stress, waterlogging, noise zones). These computational models can analyse data using techniques and algorithms. This makes patterns and trends visible. These computational analyses can be used to gain insight into behavior and make predictions about future situations. The outcome of Computational Models translates into indicators. Indicators are the link between the Digital Twin and Policy. Calculating is therefore an essential part of both policy and a Digital Twin.

### User experience

#### Visualisation

The power of visualisation in a digital twin lies in its ability to transform data into understandable, interactive, and usable images that provide insight, detect problems, improve communication, and contribute to better decision-making and performance. Visualisation can be done in many ways: 2D (flat top view), 3D (to better visualise and analyse complex spatial data in a way that traditional 2D maps cannot). Glasses that project images overlapping with reality can also be used. Images can be static (current view of a situation) or very dynamic (interactive map where you can turn knobs to change indicators and immediately see the associated policy effects), contain many details and be realistic or not. The choice of visualisations depends on the nature of the data and the purpose of the digital twin. By combining different visualisation techniques, users can get a more complete picture of a system, understand processes, and make better decisions.

#### (User) Experience

A great strength of a Digital Twin is the experience aspect. These experiences go beyond simply observing data and models; they enable people to virtually experiment, learn, and understand how something looks or functions. This is achieved by users interacting with a virtual copy. The interaction can take place in different ways. User-friendliness and an intuitive interface that makes it easy for users to navigate and perform the necessary actions are also important.

### Reliability

#### Trust

A Digital Twin stands (or falls) with the accurate representation (according to agreements and rules) of reality. All data and information that feed the digital twin are tested against agreed quality requirements. Errors are not to be avoided and user expectations are set accordingly. Trust is also obtained through formal agreements and frameworks. For example, the user must identify themselves in the system (Identity & Access Management), confidential data is exchanged (data spaces), logging is performed, and APIs are managed (via gateway functionality).

#### Identification & Authorization

Identification is a foundation of modern software systems that ensure efficient and secure functioning within digital infrastructures. These are supporting components that can provide access control and access rights, thereby preventing unsecured access. Identification also makes it possible to personalize systems for individual users or groups, so that the user interface or tailored content can be offered and that preferences and settings can be stored.

---


<img src="./respec/media/DT_Capabilities-en.png" alt="DT Capabilities" width="900">

The online Archimate view of the Capabilities can be found [here](https://geonovum.github.io/NLDT-Architectuur/Archimate/html/index.html?view=id-decf311e5f5b4e169cf844aa5c909d0d).