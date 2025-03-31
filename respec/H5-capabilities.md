# Waardestromen en Capabilities

Zoals in de inleiding al beschreven staat volgen we deze definitie van een digitale tweeling:

_Een digitale tweeling van de fysieke leefomgeving is een digitale representatie van de stedelijke en landelijke omgeving op basis van data, modellen en visualisaties. Deze kunnen worden gebruikt om verschillende aspecten van de fysieke leefomgeving te simuleren en analyseren._ [[VRO_2024]]

De toepassing van een Digitale Tweeling in de fysieke leefomgeving kan zeer uitlopend zijn. Om enig houvast te geven in de verschillende soorten toepassingen hanteren we de volgende type niveaus van automatisering:

|Niveau |	Toelichting|
|---|---|
|Beschrijvend |	Verspreidde, statische data in systemen zonder integratie, communicatie of automatisering.| 
|Diagnostisch |	Operationele data en sensordata. Dashboard met operationele inzichten.|
|Voorspellend |	Contextuele data, machine learning, gedeeltelijke automatisering, verbonden data en systemen.|
|Voorschrijvend |	Real-time data uit geïntegreerde systemen, situational awareness, aanbevelingen.|
|Autonoom |	Continue intelligentie voor besluitvorming, adaptieve en generatieve AI, zelfverzorgend.|

 [[DMI_ecosysteem_volwassenheidsniveaus]]

Behalve deze automatiseringsniveaus onderkennen we ook de beleidscyclus, waarbij in de verschillende fases een verschillende soort toepassing ingezet kan worden.
In dit hoofdstuk worden op hoofdlijnen de waardestromen en capabilities beschreven die in verschillende combinaties ingezet kunnen worden, afhankelijk van niveau van automatisering en fase in de beleidscyclus. De keuze welke capabilities ingezet kunnen worden voor een specifieke toepassing is geen onderdeel van deze referentiearchitectuur.

## Metamodel

<img src="./respec/media/NLDT_archimate_metamodel.png" alt="archimate metamodel" width="900">
archimate metamodel voor de NLDT architectuur

Bovenstaande afbeelding visualiseert het archimate metamodel voor de NLDT architectuur. Deze is opgebouwd uit [capabilities](https://nora-begrippen.wikixl.nl/index.php/Id-24a3c495-0b7c-737a-187e-f2da6a318eb5) en [waardestromen](https://nora-begrippen.wikixl.nl/index.php/Id-2462fbbe-503b-0805-a587-fa013f9814d7) om de dienstverlening te beschrijven. De capabilities worden vervolgens in patronen uitgewerkt op basis van elementen uit de bedrijfs- en applicatielaag van archimate. Hoofdstuk 4 behandelt de waardestromen en capabilities, Hoofdstuk 5 behandelt de patronen van bedrijfs- en applicatieobjecten. 


## Waardestromen

Het inzetten van een Digitale Tweeling als instrument dient een bepaald doel. Dit kan een scenario analyse zijn, de onderbouwing van gevoerd beleid of de operationele aansturing van een systeem. Er zijn talloze mogelijkheden. In alle gevallen dient er een vertaling gemaakt te worden van het beoogde doel naar een modelmatige weergave in de Digitale Tweeling. Deze vertaling is weer te geven in een waardestroom die een bepaald doel realiseert en daarbij een aantal capabilities nodig heeft. 

### Use case naar Indicatoren

\<placeholder\> Iets over de vertaling van vraagstukken uit de praktijk naar de digitale representatie ervan in een DT...

### Resultaten/inzichten omzetten naar praktijk

\<placeholder\> Iets over de wijze waarop inzichten uit DT's omgezet kunnen worden naar de praktijk. Hangt af van het maturiteitsniveau van de DT (beschrijven, analyserend, voorspellend)

## Capabilities

Er bestaan internationaal diverse raamwerken die capabilities of onderdelen van digitale tweelingen beschrijven.
Op basis van de ['Capabilities periodic table' van het Digital Twin Consortium](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table) hebben 
we een versimpelde set van Capabilities gedefinieerd die we als basis voor de NLDT hanteren.

<img src="./respec/media/capabilities.png" alt="DT Capabilities op basis van Digital Twin Consortium Periodic Table" width="900">

[Digital Twin Capabilities Periodic Table](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table)


### Data

#### Ontsluiten

Om de fysieke leefomgeving in beeld te brengen worden gegevens in lagen op elkaar gelegd in een grafisch omgeving. De gegevens van de lagen komen uit uitlopende registers en stellen vaak beleidskeuzes of wettelijke normen voor en de schuifjes zijn de verschillende beleidsambities in relatie tot de normen voor bijvoorbeeld geluid of openbaar groen. De lagen kunnen aangestuurd worden met schuifjes, zodat belangen in balans kunnen gebracht worden en op een eerlijke manier in verhouding staan tot elkaar.

#### Bewerken

Een Digitale Tweeling is interactief en dynamisch (gemeten gegevens uit de omgeving – inclusief de metingen gedaan door de burger, ook gekend als Citizen Science, zodat de burger betrokken is bij initiatieven). De gebruiker ervan zal er verder mee kunnen gaan dan simpelweg observeren van data en  modellen. De gebruiker zal gegevens kunnen gaan aanpassen.  

#### Zoeken/Vinden

In een Digitale Tweeling zijn verschillende soorten gegevens samengebracht en een zo nauwkeurig mogelijke afbeelding maken van de beleidskeuzes. Digitale Tweeling moeten de taal en beelden spreken die beleidsmedewerkers (h)erkennen – inclusief het normaliseren en standaardiseren van de gebruikte indicatoren. Een Digitale Tweeling biedt ook contextuele informatie die helpt gebruikers te begrijpen wat de gegevens vertegenwoordigen, waar ze vandaan komen, hoe ze zijn verzameld en hoe ze moeten worden geïnterpreteerd. Dit is vooral belangrijk omdat Digitale Tweelingen vaak complexe en diverse gegevensbronnen bevatten. Het is essentieel voor het succesvol gebruiken van Digitale Tweelingen in verschillende domeinen. 


#### Tijdreizen

Het concept van tijdreizen in een digitale tweeling biedt de mogelijkheid om een situatie in de tijd te kunnen bestuderen.  
Dat betreft het teruggaan in de tijd om zo een weerspiegeling te geven van hoe iets was in het verleden. Digitale Tweelingen maken ook mogelijk om vooruit te kijken in de tijd.  
Hierdoor kun je er historische analyses mee uitvoeren, wat-als scenario's mee verkennen, toekomstige situaties verbeelden of voorspellen. 

### Integratie

#### Reproduceren

Elke beleidsbeslissing (op tijdstip) die genomen wordt aan de hand van een digitale tweeling moet reproduceerbaar zijn op een later tijdstip. Dus de toestand die de Digitale Tweeling op een bepaald moment heeft moet men terug kunnen oproepen, inclusief de waarde van de indicatoren waarop de beslissing werd genomen.    De reproduceerbaarheid van de omstandigheden waarin een beleidsbeslissing wordt genomen, middels een Digitale Tweeling, is erg belangrijk:
1. In een rechtstaat worden beslissing genomen gebaseerd op een juridisch kader en gekoppelde indicatoren en 
2. De Digitale Tweeling werkelijk als een beleidsinstrument wordt gezien en dat deze te vertrouwen is en helpt in de efficiëntie.

#### Meten/Aansturen

Sommige Digitale Tweelingen zijn in staat om (meet)gegevens in real-time te verwerken, te monitoren (te bezien of beleid ook het gewenste effect heeft in de beleidscyclus), en optioneel te reageren op veranderingen. Dit vereist rekenregels (algoritmen) die gegevens snel kunnen analyseren en actie kunnen ondernemen op basis van resultaten. Metingen worden bewaard, zodat in het deze kunnen gebruikt worden om een uitspraak te doen over een reeks uit het verleden om zo mogelijk trend in indicatoren kunnen gezien worden) 

#### Integreren

Een Digitale Tweeling maakt het mogelijk om verschillende beleidsperspectieven te definiëren en zo een holistisch beeld te krijgen van beleidsgebied of beleidsproject.  
Deze combinatie helpt om een dieper inzicht te krijgen, betere beslissingen te nemen en waarde te genereren in diverse domeinen. Dit is een belangrijk instrument om alle lagen te integreren tot 1 situationeel beeld. 

### Analyse

#### Analyseren

Analyseren is het proces van het onderzoeken en interpreteren van de gegevens in de digitale tweeling. Dit omvat het toepassen van verschillende analysetechnieken, modellen en algoritmen om inzichten te verkrijgen over het gedrag, de prestaties, en de trends binnen de Digitale Tweeling. Het doel van het analyseren is om te zien of sturing het gewenste effect heeft en daar waar nodig kan aangepast worden voor meer of minder effecten. 

#### Voorspellen

Digitale tweeling maken het mogelijk om op toekomstige gebeurtenissen, trends of gedragingen te anticiperen op basis van de huidige en historische gegevens van het gesimuleerde object of systeem. Met behulp van geavanceerde analyses, modellen en algoritmen kan een digitale tweeling potentiële uitkomsten en scenario's simuleren, waardoor gebruikers proactief kunnen reageren op mogelijke veranderingen of uitdagingen. 

#### Orkestratie

Orkestratie zorgt ervoor dat de verschillende onderdelen of services binnen de Digitale Tweeling samenwerken om een bepaalde taak of workflow uit te voeren.  

#### Simuleren

Een Digitale Tweeling maakt het mogelijk om verschillende soorten gegevens samen te brengen en te combineren tot een holistisch beeld vaneen systeem, proces of entiteit.  
Deze combinatie helpt om een dieper inzicht te krijgen, betere beslissingen te nemen en waarde te genereren in diverse domeinen. Dit is een belangrijk instrument voor data gedreven werken.  
Met simulatie kan ook gebruik gemaakt worden van AI om aan ‘opportunity finding’ te doen. De kanskaarten en wat-mag-waar kaarten geven gebieden aan met potentieel voor oplossingen bij conflicterende belangen in dat gebied!

#### Rekenen

Digitale Tweelingen kunnen gebruik maken van rekenmodellen (bv hittestress, wateroverlast, geluidszones). Deze rekenmodellen kunnen gegevens analyseren met behulp van technieken en algoritmes. Zo worden patronen en trends zichtbaar. Deze rekenanalyses kunnen worden gebruikt om inzicht te krijgen in gedrag en voorspellingen te doen over toekomstige situaties.
De uitkomst van Rekenmodellen vertalen zich in indicatoren. Indicatoren zijn de schakel tussen de Digitale Tweeling en Beleid. Rekenen is dus een essentieel onderdeel van zowel beleid als van een Digitale Tweeling.

### Visualisatie

#### Visualiseren

De kracht van visualisatie in een digitale tweeling ligt in het vermogen om gegevens om te zetten in begrijpelijke, interactieve en bruikbare beelden die inzicht bieden, problemen detecteren, communicatie verbeteren en bijdragen aan betere besluitvorming en prestaties. 
Visualisatie kan op veel manieren: 2D (plat bovenaanzicht), 3D (om beter complexe ruimtelijke data te visualiseren en te analyseren op een manier die traditionele 2D-kaarten niet kunnen) er kan ook gebruik gemaakt worden van brillen waarin beelden worden geprojecteerd die overlappen met de werkelijkheid. Beelden kunnen statisch (huidig beeld van een situatie) zijn of heel dynamisch (interactieve kaart waar je aan knoppen kan draaien om indicatoren kan wijzigen en de geassocieerde beleidseffecten meteen in beeld ziet), veel details bevatten en realistisch zijn of juist niet. De keuze van visualisaties hangt af van de aard van de gegevens en het doel van de digitale tweeling. Door verschillende visualisatietechnieken te combineren, kunnen gebruikers een vollediger beeld krijgen van een systeem, processen begrijpen, en betere beslissingen nemen. 

#### Beleven

Een grote kracht van een Digitale Tweeling is het belevingsaspect. Deze belevingen gaan verder dan het simpelweg observeren van data en modellen; ze stellen mensen in staat om virtueel te experimenteren, te leren en te begrijpen hoe iets eruitziet of functioneert. Dit wordt bereikt doordat gebruikers interactie hebben met een virtuele kopie. De interactie kan op verschillende manieren plaatsvinden. Gebruiksvriendelijkheid en intuïtieve interface die het voor gebruikers makkelijk maakt om te navigeren en de benodigde acties uit te voeren zijn ook van belang. 

### Betrouwbaarheid

#### Vertrouwen

Een Digitale Tweeling staat (of valt) met de accurate weergave (volgens afspraken en regels) van de werkelijkheid. Alle data en informatie die de digitale tweeling voeden zijn getest tegen afgesproken kwaliteitseisen. Fouten zijn niet te vermijden en de gebruikersverwachtingen worden dito gezet. Vertrouwen wordt ook verkregen door formele afspraken en kaders. Zo moet de gebruiker zich bekend maken in het systeem (Identity & Access Management), worden er vertrouwelijke gegevens uitgewisseld (data spaces), wordt er gelogged en worden API's beheerd (via gateway functionaliteit). 

#### Identificeren

Identificatie is een fundament van moderne softwaresystemen die zorgen voor het efficiënt en veilig functioneren binnen digitale infrastructuren. Het zijn ondersteunende componenten die kunnen zorgen voor toegangscontrole en toegangsrechten, zodat onbeveiligde toegang wordt voorkomen.  
Identificatie maakt het ook mogelijk om systemen te personaliseren voor individuele gebruikers of groepen, zodat de gebruikersinterface of op maat gemaakte inhoud aangeboden kan worden en dat voorkeuren en instellingen kunnen worden opgeslagen. 


---


<img src="./respec/media/DT_Capabilities.png" alt="DT Capabilities" width="900">

