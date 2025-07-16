# Building Blocks

The basic pattern of the NLDT reference architecture consists of 4 building blocks: 

@TODO 

The building blocks could also be considered as groupings of Application Functions. This classification helps to emphasize that a Digital Twin is also constructed from separate, collaborating components from an application or system perspective. For example, the services of a computational model must be able to be consumed by various visualization solutions. 

It must be possible to combine data services with information from different issues. The anti-pattern that occurs too often is that separate, non-interoperable systems are used for different issues (tasks such as housing construction or mobility), making integrated analysis impossible. For instance, a web viewer from supplier A for one study and a digital platform from supplier B for another task, where these systems both use their own standards. By separating functions and making them interoperable, an integrated approach should become possible.

This division into functions explicitly does not mean that, for example, Data and Computational Models are necessarily physically separated. Logically, however, we consider them as separate components that can communicate with each other in an interoperable manner.

## NLDT Building Blocks and Dataspaces

The developments of Digital Twins and Dataspaces are closely linked. On the one hand, Digital Twins are consumers of services from Dataspaces, and on the other hand, a Digital Twin must also be able to access other data sources and functionalities.

This leads to patterns that support both specific dataspace standards and generic standards.

## Foundation

The foundation consists of the necessary basic infrastructure and catalog functionality.

@TODO

#### Self-service data infrastructure components based on Dataspace protocols

The aforementioned components ensure an orderly handling of the exchange of data products, with guarantees for identification of participating organizations and a high degree of discoverability of data products. These components can be housed in a data center of a public or private service provider, with excellent network connections, that are under the management of public or private organizations. At a federated level, some facilities or components are needed that facilitate the exchange of data products. Initially, this will involve the following components:

- A federated catalog or index for finding data products
- An identification, authentication, and authorization facility
- A facility for systematically registering and finding things like data definitions (semantics), data models, and ontologies applied within the system
- A facility that allows different data models to be linked to each other

### data infrastructure components based on open standards

## Data

The Data building block contains those matters that need to be organized around data and data services in an interoperable system.

@TODO

## Computational Models

The Computational Models building block contains the specific matters that are necessary for making Computational Models (or Algorithms) available in a federative, distributed system.

@TODO

## Visualization

The Visualization building block contains the various components to provide a Visualization. These can be 2D or 3D viewers, but also Dashboards or other visualization applications.

@TODO

--------------------------------------------------------------------------------