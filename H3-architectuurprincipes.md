# Architectuurprincipes

## Aansluiten op omliggende kaders

__Beschrijving:__
De architectuur van het digitale tweeling stelsel is mede gebaseerd op architecturale kaders van de overheid 
en de facto kaders zoals gangbaar binnen bedrijven en organisaties.

__Rationale:__
Het stelsel van Digitale tweelingen bestaat niet in isolatie. Het moet zich verhouden tot de omgeving en de ontwikkelingen
die daar plaatsvinden. Te denken valt hierbij aan de Dataspace ontwikkelingen en de Europese Data- en AI Act.

__Implicaties:__
- [Hergebruik](#hergebruik)


## Domein georiënteerd, gedecentraliseerd stelsel

__Beschrijving:__
Uitgangspunt is dat organisaties die deelnemen aan het stelsel zelf zorgen voor het aanleggen van databestanden, 
dataverwerking en het ter beschikking stellen van data aan derden. Eigenaarschap en verantwoordelijkheid ligt daarmee bij de bron.
Concrete invulling kan eventueel via een service provider gerealiseerd worden.

__Rationale:__
Bij een federatief stelsel is het beleggen van eigenaarschap en verantwoordelijkheid op de plaats waar die hoort onontbeerlijk. 
Alleen als dit in het hele stelsel op een acceptabel niveau geregeld is kan het stelsel als geheel succesvol zijn.

__Implicaties:__
- [Hergebruik](#hergebruik)
- [specifieke domein context beschrijven](#specifieke-domein-context-beschrijven)
- [zorg voor vindbaarheid](#zorg-voor-vindbaarheid)

## Data als product

__Beschrijving:__
Organisaties ontwikkelen op basis van data waarover zij beschikken uitwisselbare dataproducten, die tegen
bepaalde condities (aansluitvoorwaarden) aan andere deelnemers van het stelsel ter beschikking worden
gesteld. Deze dataproducten kunnen de vorm aannemen van operationele data, analytische data, modellen
of een combinatie ervan. Een dataproduct wordt ontwikkeld zodat het vindbaar, begrijpelijk, betrouwbaar,
interoperabel, toegankelijk, beveiligd, adresseerbaar is en publieke waarde heeft. Dit zijn de voorwaarden
voor deelname aan het stelsel. Het dataproduct informeert afnemers ook over onder meer de relevante
context, bruikbaarheid, kwaliteitsaspecten, houdbaarheid en herkomst van de geleverde data. Al deze
informatie is bij het dataproduct zelf aanwezig.

__Rationale:__
Productdenken schept de voorwaarden voor het uitwisselen van diensten in het stelsel. Het biedt een raamwerk
om op een uniforme wijze te redeneren over niet enkel datasets, maar ook modellen en analytische- of andere diensten.
Dit schept de randvoorwaarden om binnen een stelsel samen te kunnen werken en afspraken met elkaar te kunnen maken.

__Implicaties:__
- [specifieke domein context beschrijven](#specifieke-domein-context-beschrijven)
- [self descriptions](#self-descriptions)
- [lineage](#lineage)
- [kwaliteitsraamwerk](#kwaliteitsraamwerk)

## Zelfservice data-infrastructuur

__Beschrijving:__
Het stelsel berust op federatieve componenten, waaronder publieke en private datanetwerken,
op cloudtechnologie gebaseerde datacenters, indexen voor het vindbaar maken van
dataproducten en voorzieningen voor identiteits- en toegangscontrole. Via federatieve indexen
kunnen vragende partijen geautomatiseerd door hen gewenste dataproducten vinden.
Het stelsel is zodanig ingericht dat partijen die aan de aansluitvoorwaarden voldoen met hun eigen 
componenten deel kunnen nemen.

__Rationale:__
Een federatief stelsel moet de voorwaarden scheppen voor een gelijk speelveld. Er is geen afhankelijkheid van slechts 
één infrastructuur leverancier, maar partijen moeten mee kunnen doen op basis van open standaarden en aansluitvoorwaarden.

__Implicaties:__
 - [self descriptions](#self-descriptions)
 - [API Designrules](#api-designrules)

## Gefedereerde en geautomatiseerde governance

__Beschrijving:__
Het stelsel is gebaseerd op een gefedereerde / gedistribueerde aanpak waar geautomatiseerde governance ingebouwd is.
Dit wil zeggen dat auditing, logging, authenticatie en authorisatie op geautomatiseerde systemen berust. 
(En dus niet op een handmatig audit proces dan wel handmatige certificering).
Hiermee kan schaalbaarheid en betrouwbaarheid van het stelsel gerealiseerd worden.

__Rationale:__
Het huidige digitale ecosysteem is zodanig groot, complex en met elkaar verweven dat handmatige controle niet toereikend is.
Het implementeren van gefedereerde en geautomatiseerde governance vraagt een digitale mindset die nog niet vanzelfsprekend is.

__Implicaties:__
- [keuzes maken in automatisering](#keuzes-maken-in-automatisering)

## Gebaseerd op service oriëntatie

__Beschrijving:__
De architectuur van het digital twin stelsel is gebaseerd op service oriëntatie.

Deelnemers aan het stelsel wisselen data en modellen uit via het beginsel van de service orientatie. 
Dat wil zeggen: Een samenspel van (gestandaardiseerde) vragen en antwoorden via een verbindende infrastructuur. 
In praktische zin wordt dit ingevuld met services of API’s.

__Rationale:__
Het ontkoppelen van de verschillende componenten in het stelsel lukt alleen als het stelsel gerealiseerd wordt met
goed beschreven open en interoperabele interfaces. Door goede gedefinieerde koppelvlakken ontstaat een ecosysteem waar
verschillende partijen interoperabel met elkaar kunnen samenwerken.

__Implicaties:__
- [API Designrules](#api-designrules)

## Open standaarden

__Beschrijving:__
De architectuur van het digital twin stelsel is maximaal gebaseerd op de toepassing van open standaarden.

Het stelsel staat open voor deelname vanuit overheid en private sector. Federatieve componenten van het stelsel worden via 
open standaarden vormgegeven. Daarnaast geldt een sterke aanbeveling voor deelnemende partijen om voor dataproducten eveneens 
gebruik te maken van open standaarden, teneinde de interoperabiliteit van het stelsel te maximaliseren. 

__Rationale:__
Open standaarden maken een gelijk speelveld voor de verschillende deelnemende partijen mogelijk. 

__Implicaties:__
- [Hergebruik](#hergebruik)

## Data soevereiniteit is geborgd

__Beschrijving:__
De data-eigenaar bepaalt de gebruiksvoorwaarden van de door hem ter beschikking gestelde data in de gehele keten.
Datasoevereiniteit behandelt hoe gegevens worden uitgewisseld en gedeeld tussen organisaties. Een
gegevenseigenaar bepaalt de gebruiksvoorwaarden van zijn gegevens. Met andere woorden: de dataeigenaar 
bepaalt wat de data-afnemer wel en niet mag doen met de geleverde data.

__Rationale:__
Om waardevolle oplossingen te realiseren zal niet altijd alleen maar open data gebruikt kunnen worden. Het stelsel 
moet 'data delen onder voorwaarden' ondersteunen zodat het mogelijk wordt om een rijk pallet aan oplossingen aan te kunnen bieden.

__Implicaties:__
- [self descriptions](#self-descriptions)

## Kwaliteit van data is gekend

__Beschrijving:__
Over de door deelnemers aan het stelsel aangeboden data (incl. in de vorm van modellen) kan te allen tijde verantwoording worden 
afgelegd over de herkomst, betekenis en kwaliteit van data.  

__Rationale:__
Een stelsel op basis van deze architectuurprincipes leidt tot ketens van combineerbare data.
Daarom is het essentieel dat afnemers van dataproducten nauwkeurige, op veldniveau, informatie krijgen 
over zaken als de herkomst van data (data lineage of data provenance), tijdstip van verwerving van data,
betrouwbaarheid van data, geldigheid van data, vertrouwelijkheid van data, gebruikscondities van data en
semantische duiding van data.

__Implicaties:__
- [self descriptions](#self-descriptions)
- [lineage](#lineage)
- [kwaliteitsraamwerk](#kwaliteitsraamwerk)

## Het stelsel is betrouwbaar

__Beschrijving:__
Het stelsel is gericht op het optimaal en vertrouwd kunnen delen van data. Hiervoor is een raamwerk nodig dat vertrouwen creëert en waarborgt.

__Rationale:__
In het stelsel zijn de rollen van de deelnemers bekend om te zorgen dat 'data delen onder voorwaarden' plaats kan vinden.

__Implicaties:__
- [API Designrules](#api-designrules)
- [keuzes maken in automatisering](#keuzes-maken-in-automatisering)
- [self descriptions](#self-descriptions)
- [lineage](#lineage)
- [kwaliteitsraamwerk](#kwaliteitsraamwerk)
