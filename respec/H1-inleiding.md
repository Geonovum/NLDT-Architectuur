# Inleiding

Deze referentie architectuur bevat afspraken en principes voor een stelsel van digitale tweelingen voor de fysieke leefomgeving. Deze referentie architectuur is bedoeld voor iedereen die een rol speelt bij het tot stand brengen van een digital twin of digitale tweeling voor de fysieke leefomgeving. De afspraken, uitgangspunten , principes en standaarden die in dit document worden gepresenteerd, dragen bij aan het tot stand brengen van een stelsel dat bestaat uit vele toepassingen van het idee van digitale tweelingen.

Dit document bevat een "open" architectuur. Dat wil zeggen: de architectuur kan door iedereen, overheid en bedrijfsleven, toegepast worden. Toepassing van de afspraken, principes en standaarden uit dit document draagt bij aan het tot stand brengen van een "ecosysteem", dat bestaat uit veel te verbinden databronnen en rekenmodellen. Hierdoor wordt het mogelijk om data en modellen uit uiteenlopende sectoren en kennisgebieden met elkaar te verbinden en daarmee twee- of driedimensionale beelden samen te stellen van de fysieke leefomgeving, beleidsvorming te ondersteunen met beslismodellen en simulaties of real time besturingsmogelijkheden voor operationele processen mogelijk te maken.

Het onderwerp Digitale Tweelingen staat volop in de belangstelling, op allerlei vlakken volgen de ontwikkelingen elkaar snel op. Tegen deze achtergrond is deze referentie architectuur opgesteld; zoekend naar zo breed mogelijk gedragen uitgangspunten, principes en standaarden voor het ontwikkelen van digital twins. Zoekend naar een samenhangend pakket van principes en standaarden en daarmee soms ook bepaalde principes en standaarden uitsluitend. De keuzes die in dit document gemaakt worden, kunnen dan ook discussie uitlokken. Dat past bij de fase waarin deze ontwikkeling zich bevindt. Na deze versie zullen dan ook nieuwe versies volgen, die ons weer een stap dichterbij een compleet stelsel voor digital twinning van de fysieke leefomgeving zullen brengen.

### Toepassingsgebied

Deze referentie architectuur beperkt zich tot de fysieke leefomgeving. Daarbij wordt onder meer gedacht aan de gebouwde omgeving, ruimtelijke ordening, verkeersstromen, luchtsamenstelling, geluid, temperatuur, openbaar vervoer, watersystemen en infrastructuren voor energie, data, water, riolering en datacommunicatie.

Binnen dit domein kan digital twinning bijdragen aan het in kaart brengen van de actuele situatie, zoals de plaats en afmetingen van gebouwen, bruggen, tunnels en dergelijke. Of het bijeen brengen van gegevens op basis van metingen van verkeersstromen, fijnstof, geluid of temperatuur. Het kan gaan over statische of dynamische gegevens. Inzet van een digital twin kan onderzoekers en beleidsmakers ondersteunen bij het maken van afwegingen in het ontwerp van aspecten van de fysieke leefomgeving, zoals het ontwerp van nieuwe woonwijken, infrastructuur of het doorrekenen van effecten van maatregelen in het kader van de energietransitie. Digital twinning kan ook een krachtig hulpmiddel zijn bij het dagelijks sturen van processen, zoals verkeersstromen of het opvangen van negatieve gevolgen van voor ons land exeptionele regenval.

Binnen de genoemde domeinen zijn vaak al uitgebreide databestanden en meetgegevens voorhanden. Om gegevens inzichtelijk te maken zijn modellen ontwikkeld. Modellen zijn ook noodzakelijk om "what if" analyses te kunnen doen of simulaties uit te kunnen voeren waarmee betrouwbare voorspellingen kunnen worden gedaan. Er is al veel en er liggen vaak verchillende disciplines en uitgangspunten aan ten grondslag. Digital twinning is te zien als een volgende stap in deze ontwikkeling. Het gaat om het bij elkaar brengen van data en resultaten van modellen om op die wijze een multidimensionaal model van (een deel van) de werkelijkheid samen te stellen. Een voorbeeld: Wat is het effect op de verkeersdoorstroming van een tijdelijke wegafsluiting en wat betekent dit voor de milieubelasting (CO2-uitstoot, geluid) van de alternatieve routes waarvan het verkeer gebruik zal gaan maken en welke aanpassingen in het verkeersbegeleidingssysteem zullen hierbij nodig zijn om een verkeersinfarct te voorkomen? De gecombineerde inzet van rekenmodellen biedt inzicht in dergelijke complexe vraagstukken.

Deze referentie architectuur bevat daarom afspraken, principes en standaarden die relevant zijn voor digital twinning binnen het genoemde gebied. 

In dit document volgen we de definitie zoals vermeld in de Kamerbrief van het Ministerie van Volkshuisvesting en Ruimtelijk Ordening:

_Een digitale tweeling van de fysieke leefomgeving is een digitale representatie van de stedelijke en landelijke omgeving op basis van data, modellen en visualisaties. Deze kunnen worden gebruikt om verschillende aspecten van de fysieke leefomgeving te simuleren en analyseren._ [[VRO_2024]]

### Doelgroep

Dit document is gericht op iedereen die betrokken is bij het ontwikkelen van vormen van digital twinning binnen het fysieke domein. Dit betreft uiteraard bedrijfs-, informatie-, data- en infrastructuur-architecten, maar ook model- en dataspecialisten, ontwikkelaars, user interface- en beveiligingsexperts en beheerders. Voor personen die iets verder van de techniek afstaan is het hoofdstuk over de kernwaarde in ieder geval van belang en mogelijk delen van de andere hoofdstukken ook. De opbouw van het document gaat van algemeen naar steeds specifieker.


### Opbouw van deze Architectuur

De architectuur beschrijft een aantal kernwaarden waar een Digitale Tweeling voor de fysieke leefomgeving aan zou moeten voldoen in hoofdstuk 2.

Hoofdstuk 3 behandelt de Architectuurprincipes van de NLDT.

Hoofdstuk 4 introduceert waardestromen en werkt een aantal Capabilities uit die vanuit een functioneel oogpunt beschrijven waar een Digitale Tweeling invulling aan moet geven. Deze Capabilities komen voort uit een eerdere publicatie _Beleidsprocessen en bouwblokken voor Digitale Tweelingen_ [[BBDT]]

In hoofdstuk 5 worden deze Capabilities vervolgens verder in meer technische bouwblokken uitgewerkt, waarbij vooral naar standaarden en richtlijnen gekeken wordt. De referentie architectuur zal geen specifieke (software) oplossingen voorschrijven, maar zich richten op patronen die interoperabiliteit mogelijk maken.

Hoofdstuk 6 schetst vervolgens nog hoe deze architectuur zich verhoudt tot ontwikkelingen in het bredere speelveld.