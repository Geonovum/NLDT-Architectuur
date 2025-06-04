# Bouwblokken

Het basispatroon van de NLDT referentiearchitectuur bestaat uit 4 bouwblokken:

<img src="./respec/media/architectuur_driehoek.png" alt="Basis bouwblokken NLDT Architectuur" width="900">
Basis bouwblokken NLDT Architectuur

De bouwblokken zou je ook als groepering van Applicatiefuncties kunnen beschouwen. Deze indeling helpt om te onderstrepen dat ook vanuit een applicatie- of systeemperspectief een Digitale Tweeling opgebouwd is uit losse, samenwerkende componenten. De diensten van een rekenmodel moeten bijvoorbeeld afgenomen kunnen worden door verschillende visualisatie oplossingen. 

Het moet mogelijk zijn om datadiensten met informatie van verschillende vraagstukken bij elkaar te brengen. Het anti-patroon wat nog te vaak voorkomt is dat er voor verschillende vraagstukken (opgaven als woningbouw of mobiliteit) losse niet interoperabele systemen ingezet worden waardoor de integrale analyse niet mogelijk is. Bijvoorbeeld een webviewer van leverancier A voor het ene onderzoek en een digitaal platform van leverancier B voor de andere opgave, waarbij deze systemen allebei hun eigen standaarden gebruiken. Door functies te scheiden en interoperabel te maken moet de integrale benadering wel mogelijk worden.

Deze opdeling in functies betekent expliciet niet dat bijvoorbeeld Data en Rekenmodellen noodzakelijk fysiek gescheiden zijn. Logisch gezien beschouwen we het echter wel als losse componenten die op een interoperabele wijze met elkaar kunnen communiceren.

## LDT Bouwblokken en Dataspaces

De ontwikkelingen van Digitale Tweelingen en Dataspaces zijn nauw met elkaar verbonden.
Aan de ene kant zijn Digitale Tweelingen afnemers van diensten van Dataspaces, aan de andere kant moet een Digitale Tweeling ook andere databronnen en functionaliteiten kunnen aanspreken.

Dit leidt tot patronen die zowel specifieke dataspace standaarden ondersteunen, als generieke standaarden.

## Fundament

Het fundament bestaat uit de benodigde basis infrastructuur en catalogus functionaliteit.

<img src="./respec/media/bouwblok_fundament.png" alt="Bouwblok fundament" width="900">

###  Zelfservice data-infrastructuur componenten op basis van Dataspace protocollen
De genoemde componenten zorgen voor een ordentelijke afhandeling van het uitwisselen van
dataproducten, met garanties voor identificatie van deelnemende organisaties en een hoge mate van
vindbaarheid van dataproducten. Deze componenten kunnen worden gehuisvest in een rekencentrum van
een publieke of private serviceprovider, met uitstekende netwerkverbindingen, die onder beheer van
publieke of private organisaties staan.
Op federatief niveau zijn enkele voorzieningen of componenten nodig die de uitwisseling van dataproducten
faciliteren. Aanvankelijk zal het gaan over de volgende componenten:

- Een federatieve catalogus of index voor het kunnen vinden van dataproducten
- Een identificatie, authenticatie en autorisatievoorziening
- Een voorziening voor het systematisch registreren en vinden van zaken als datadefinities
(semantiek), datamodellen en binnen het stelsel toegepaste ontologieën.
- Een voorziening waardoor verschillende gegevensmodellen onderling gelinked kunnen worden.

### data-infrastructuur componenten op basis van open standaarden

## Data

Het Data bouwblok bevat die zaken die rondom data en datadiensten georganiseerd moet worden in een interoperable systeem.

<img src="./respec/media/bouwblok_data.png" alt="Bouwblok data" width="900">

## Rekenmodellen

Het Rekenmodellen bouwblok bevat de specifieke zaken die nodig zijn voor het beschikbaar maken van Rekenmodellen (of Algoritmen) in een federatief, gedistribueerd systeem. 

<img src="./respec/media/bouwblok_rekenmodules.png" alt="Bouwblok rekenmodellen" width="900">

## Visualisatie

Het visualisatie bouwblok bevat de verschillende componenten om een Visualisatie te kunnen verzorgen. Dit kunnen 2D of 3D viewers zijn, maar ook Dasboards of andere visualisatie toepassingen. 

<img src="./respec/media/bouwblok_visualisatie.png" alt="Bouwblok visualisatie" width="900">

--- 




