# Architectuurprincipes

<aside class="note">
NH: Dit is een eerste synthese van principes uit eerder werk.
Een goed gesprek over welke Architectuurprincipes hier uiteindelijk komen te staan moet nog gevoerd worden!
</aside>

## Aansluiten op omliggende kaders

De architectuur van het digitale tweeling stelsel is mede gebaseerd op architecturale kaders van de overheid 
en de facto kaders zoals gangbaar binnen bedrijven en organisaties.

## Domein georiënteerd, gedecentraliseerd stelsel

Uitgangspunt is dat organisaties die deelnemen aan het stelsel zelf zorgen voor het aanleggen van databestanden, 
dataverwerking en het ter beschikking stellen van data aan derden. Eigenaarschap en verantwoordelijkheid ligt daarmee bij de bron.
Concrete invulling kan eventueel via een service provider gerealiseerd worden.

## Data als product

Organisaties ontwikkelen op basis van data waarover zij beschikken uitwisselbare dataproducten, die tegen
bepaalde condities (aansluitvoorwaarden) aan andere deelnemers van het stelsel ter beschikking worden
gesteld. Deze dataproducten kunnen de vorm aannemen van operationele data, analytische data, modellen
of een combinatie ervan. Een dataproduct wordt ontwikkeld zodat het vindbaar, begrijpelijk, betrouwbaar,
interoperabel, toegankelijk, beveiligd, adresseerbaar is en publieke waarde heeft. Dit zijn de voorwaarden
voor deelname aan het stelsel. Het dataproduct informeert afnemers ook over onder meer de relevante
context, bruikbaarheid, kwaliteitsaspecten, houdbaarheid en herkomst van de geleverde data. Al deze
informatie is bij het dataproduct zelf aanwezig.

## Zelfservice data-infrastructuur

Het stelsel berust op federatieve componenten, waaronder publieke en private datanetwerken,
op cloudtechnologie gebaseerde datacenters, indexen voor het vindbaar maken van
dataproducten en voorzieningen voor identiteits- en toegangscontrole. Via federatieve indexen
kunnen vragende partijen geautomatiseerd door hen gewenste dataproducten vinden.
Het stelsel is zodanig ingericht dat partijen die aan de aansluitvoorwaarden voldoen met hun eingen 
componenten deel kunnen nemen.

## Gefedereerde en geautomatiseerde governance

Het stelsel is gebaseerd op een gefedereerde / gedistribueerde aanpak waar geautomatiseerde governance ingebouwd is.
Dit wil zeggen dat auditing, logging, authenticatie en authorisatie op geautomatiseerde systemen berust. 
(En dus niet op een handmatig audit proces dan wel handmatige certificering).
Hiermee kan schaalbaarheid en betrouwbaarheid van het stelsel gerealiseerd worden.

## De architectuur van het digital twin stelsel is gebaseerd op service oriëntatie.

Deelnemers aan het stelsel wisselen data en modellen uit via het beginsel van de service orientatie. 
Dat wil zeggen: Een samenspel van (gestandaardiseerde) vragen en antwoorden via een verbindende infrastructuur. 
In praktische zin wordt dit ingevuld met services of API’s.

## De architectuur van het digital twin stelsel is maximaal gebaseerd op de toepassing van open standaarden.

Het stelsel staat open voor deelname vanuit overheid en private sector. Federatieve componenten van het stelsel worden via 
open standaarden vormgegeven. Daarnaast geldt een sterke aanbeveling voor deelnemende partijen om voor dataproducten eveneens 
gebruik te maken van open standaarden, teneinde de interoperabiliteit van het stelsel te maximaliseren. 

## Data soevereiniteit is geborgd

De data-eigenaar bepaalt de gebruiksvoorwaarden van de door hem ter beschikking gestelde data in de gehele keten.
Datasoevereiniteit behandelt hoe gegevens worden uitgewisseld en gedeeld tussen organisaties. Een
gegevenseigenaar bepaalt de gebruiksvoorwaarden van zijn gegevens. Met andere woorden: de dataeigenaar 
bepaalt wat de data-afnemer wel en niet mag doen met de geleverde data.

## Kwaliteit van data is gekend

Door deelnemers aan het stelsel aangeboden data (incl. in de vorm van modellen) kan te allen
tijde verantwoording worden afgelegd over de herkomst en kwaliteit van data.

Een stelsel op basis van deze architectuurprincipes leidt tot ketens van combineerbare data.
Daarom is het essentieel dat afnemers van dataproducten nauwkeurige, op veldniveau, informatie krijgen
over zaken als de herkomst van data (data lineage of data provenance), tijdstip van verwerving van data,
betrouwbaarheid van data, geldigheid van data, vertrouwelijkheid van data, gebruikscondities van data en
semantische duiding van data.



