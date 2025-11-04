# Building Blocks

The basic pattern of the nLDT reference architecture consists of 4 building blocks: 

<img src="./respec/media/architectuur_driehoek-en.png" alt="Basic Building Blocks of the nLDT Architecture" width="900">
Basic Building Blocks of the nLDT Architecture

The building blocks can also be considered to be groupings of Application Functions. This classification helps to emphasize that a Digital Twin is constructed from separate, collaborating components from an application or system perspective. For example, the services of a computational model must be able to be consumed by various visualisation solutions. 

It must be possible to combine data services with information from different topics. The anti-pattern that occurs too often is that separate, non-interoperable systems are used for different topics (tasks such as housing construction or mobility), making integrated analysis impossible. For instance, a web viewer from supplier A for one study and a digital platform from supplier B for another task, where these systems both use their own standards. By separating functions and making them interoperable, an integrated approach should become possible.

This division into functions explicitly does not mean that, for example, Data and Computational Models are necessarily always physically separated. Logically, however, we consider them as separate components that can communicate with each other in an interoperable manner.

## nLDT Building Blocks and Dataspaces

The developments of Digital Twins and Dataspaces are closely linked. On the one hand, Digital Twins are consumers of services from Dataspaces. On the other hand, a Digital Twin must also be able to access other data sources and functionalities. The results of a Digital Twin might be considered as input for a Dataspace as well. 

This leads to patterns that support both specific dataspace standards and generic standards.

## Foundation

The foundation consists of the necessary basic infrastructure and catalog functionality.

<img src="./respec/media/buildingblock_foundation.png" alt="Building Block Foundation" width="900">

#### Data infrastructure components based on Dataspace protocols

The various components ensure an robust handling of the exchange of data products, with guarantees for identification of participating organizations and a high degree of discoverability of data products. These components can be housed in a data center of a public or private service provider, with excellent network connections, that are under the management of public or private organizations. At a federated level, some facilities or components are needed that facilitate the exchange of data products. Initially, this will involve the following components:

- A federated catalog or index for finding data products
- An identification, authentication, and authorization facility
- A facility for systematically registering and finding things like data definitions (semantics), data models, and ontologies applied within the system
- A facility that allows different data models to be linked to each other

See the International DataSpace Association (IDSA) documentation for more information on the Dataspace Connectors and Dataspace Protocols.

## Data

The Data building block contains those matters that need to be organized around data and data services in an interoperable system.

<img src="./respec/media/buildingblock_data.png" alt="Building Block Data" width="900">

## Computational Models

The Computational Models building block contains the specific matters that are necessary for making Computational Models (or Algorithms) available in a federated, distributed system.

<img src="./respec/media/buildingblock_processing.png" alt="Building Block Computation Models" width="900">

## Visualisation

The Visualisation building block contains the various components to provide a Visualisation. These can be 2D or 3D viewers, but also Dashboards or other visualisation applications.

<img src="./respec/media/buildingblock_visualisation.png" alt="Building Block Visualisation" width="900">

## AppStore

The services from the different building blocks can be shared and published in an App Store under specific conditions.

To ensure quality and trustworthiness, modules discoverable in the App Store undergo an objective assessment according to European guidelines, supplemented by more national guidelines where necessary.
Validation of these modules is made possible by clear assessment criteria in the areas of:

- Technical compatibility and reliability;
- Transparency and explainability of algorithms and logic;
- Legal and ethical compliance;
- Reproducibility and traceability of results;
- Management aspects of applications, such as lifecycle management and maintenance;
- User experience and feedback.

<img src="./respec/media/appstore-en.png" alt="appstore" width="900">



--------------------------------------------------------------------------------