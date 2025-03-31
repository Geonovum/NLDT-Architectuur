# Implicaties

<aside class="note">
NH: Dit is een eerste aanzet tot implicaties volgend uit de principes in Hoofdstuk 3.
Deze lijst is nog niet gevalideerd of goed bevonden!
</aside>

## Self descriptions

__Beschrijving:__
Een dataproduct binnen het stelsel van digitale tweelingen moet zichzelf kunnen beschrijven. Dit betekent dat alle relevante informatie over het dataproduct direct beschikbaar is, inclusief de context, bruikbaarheid, kwaliteitsaspecten, houdbaarheid, herkomst (lineage) en semantische duiding van de geleverde data. 

__Rationale:__
Zelfbeschrijvingen zijn cruciaal voor het realiseren van het architectuurprincipe 'Data als product'. Door dataproducten van duidelijke metadata te voorzien, wordt hergebruik gefaciliteerd en de vindbaarheid binnen de zelfservice data-infrastructuur verbeterd. Dit draagt bij aan een open en transparant stelsel (kernwaarde) waarin gebruikers de betrouwbaarheid van data kunnen beoordelen (kernwaarde: eerlijk, kwalitatief en inclusief). De expliciete vermelding van gebruiksvoorwaarden borgt data soevereiniteit. Bovendien versterkt het inzicht in de eigenschappen van data het vertrouwen in het gehele stelsel (kernwaarde).

__Implicatie bij:__
- [Data als product](#data-als-product)
- [Datasoevereiniteit is geborgd](#data-soevereiniteit-is-geborgd)
- [Het stelsel is betrouwbaar](#het-stelsel-is-betrouwbaar)
- [Kwaliteit van data is gekend](./../respec/H3-architectuurprincipes.md#kwaliteit-van-data-is-gekend)
- [Zelfservice data-infrastructuur](./../respec/H3-architectuurprincipes.md#zelfservice-data-infrastructuur)


## Lineage

__Beschrijving:__
De herkomst en de reis van data binnen het stelsel van digitale tweelingen moet traceerbaar zijn. Dit betekent dat de data lineage of data provenance van een dataproduct bekend moet zijn, inclusief het tijdstip van verwerving en eventuele bewerkingen die de data heeft ondergaan. 

__Rationale:__
 Inzicht in de data lineage is essentieel om de verantwoording over de kwaliteit van data te kunnen afleggen (architectuurprincipe: kwaliteit van data is gekend) en het vertrouwen in de betrouwbaarheid van het stelsel te waarborgen (architectuurprincipe: het stelsel is betrouwbaar). Door de herkomst te kennen, kunnen gebruikers de context van de data beter begrijpen en de geschiktheid voor hun specifieke toepassing beoordelen. Dit ondersteunt de kernwaarde van eerlijk, kwalitatief en inclusief door transparantie te bieden over de totstandkoming van data.

__Implicatie bij:__
- [Data als product](#data-als-product)
- [Het stelsel is betrouwbaar](#het-stelsel-is-betrouwbaar)
- [Kwaliteit van data is gekend](./../respec/H3-architectuurprincipes.md#kwaliteit-van-data-is-gekend)

## Kwaliteitsraamwerk

__Beschrijving:__
Er dient een kwaliteitsraamwerk aanwezig te zijn binnen het stelsel van digitale tweelingen dat normen en niveaus voor de kwaliteit van data en modellen definieert en beheert. Dit raamwerk is noodzakelijk om betrouwbare dataproducten te kunnen uitwisselen en om ervoor te zorgen dat gebruikers de kwaliteit van de data kunnen beoordelen op aspecten als relevantie, tijdigheid, nauwkeurigheid, samenhang, consistentie, interpreteerbaarheid en toegankelijkheid. 

__Rationale:__
Dit raamwerk is noodzakelijk om betrouwbare dataproducten uit te wisselen (architectuurprincipe: het stelsel is betrouwbaar) en om ervoor te zorgen dat gebruikers de kwaliteit van de data kunnen beoordelen op aspecten als relevantie, tijdigheid, nauwkeurigheid, samenhang, consistentie, interpreteerbaarheid en toegankelijkheid (architectuurprincipe: kwaliteit van data is gekend). Het draagt bij aan de kernwaarde van eerlijk, kwalitatief en inclusief door duidelijke criteria te bieden voor de beoordeling van data en modellen, wat essentieel is voor verantwoord gebruik van digitale tweelingen (kernwaarde: onder controle en toezicht van mensen).

__Implicatie bij:__
- [Data als product](#data-als-product)
- [Het stelsel is betrouwbaar](#het-stelsel-is-betrouwbaar)
- [Kwaliteit van data is gekend](./../respec/H3-architectuurprincipes.md#kwaliteit-van-data-is-gekend)

## Hergebruik

__Beschrijving:__
Binnen de architectuur van het digitale tweeling stelsel dient hergebruik van (stelsel)functies en definities te worden gemaximaliseerd. Dit betekent dat er gedacht moet worden vanuit wat er al is in plaats van direct nieuwe oplossingen te ontwikkelen. 

__Rationale:__
Dit bevordert efficiëntie en reduceert kosten door te bouwen op bestaande architecturale kaders (architectuurprincipe: aansluiten op omliggende kaders), open standaarden (architectuurprincipe: open standaarden) en bewezen concepten. Het waarborgt interoperabiliteit en is een direct gevolg van het domein georiënteerd en gedecentraliseerd zijn van het stelsel, waardoor componenten vaker ingezet kunnen worden binnen verschillende domeinen.

__Implicatie bij:__
- [Aansluiten op omliggende kaders](#aansluiten-op-omliggende-kaders)
- [Domein georienteerd, gedecentraliseerd stelsel](#domein-georiënteerd-gedecentraliseerd-stelsel)
- [Open standaarden](#open-standaarden)

## specifieke domein context beschrijven

__Beschrijving:__
Bij de ontwikkeling en het aanbieden van dataproducten is het cruciaal om de specifieke context van het domein expliciet te beschrijven. Dit helpt om misverstanden en ambiguïteit te voorkomen, bijvoorbeeld door duidelijk het verschil aan te geven tussen een steiger (vaarweg) en een steiger (bouw).

__Rationale:__
Dit voorkomt misverstanden en ambiguïteit in een domein georiënteerd, gedecentraliseerd stelsel waarin verschillende vakgebieden samenwerken. Het is van belang bij het architectuurprincipe van data als product om de begrijpelijkheid van dataproducten te waarborgen, zodat afnemers de data correct kunnen interpreteren en gebruiken in hun specifieke context. Dit draagt bij aan de effectiviteit van het stelsel (kernwaarde: effectief bestuurd).

__Implicatie bij:__
- [Data als product](#data-als-product)
- [Domein georienteerd, gedecentraliseerd stelsel](#domein-georiënteerd-gedecentraliseerd-stelsel)

## zorg voor vindbaarheid

__Beschrijving:__
Om hergebruik te stimuleren en de waarde van het stelsel te maximaliseren, is het essentieel dat dataproducten gemakkelijk gevonden kunnen worden door andere deelnemers. Alleen wanneer producten vindbaar zijn via bijvoorbeeld federatieve catalogi of indexen kunnen partijen ervoor kiezen om bestaande oplossingen te hergebruiken in plaats van zelf iets nieuws te ontwikkelen. 

__Rationale:__
Dit stimuleert hergebruik en maximaliseert de waarde van het gedecentraliseerde stelsel door het potentieel voor data-integratie te vergroten (capability: integreren). Het is een directe implicatie van een domein georiënteerd, gedecentraliseerd stelsel waarin data en modellen over verschillende organisaties verspreid kunnen zijn en wordt gefaciliteerd door de zelfservice data-infrastructuur componenten. Vindbaarheid is essentieel voor de ontwikkeling van een ecosysteem van digitale tweelingen.

__Implicatie bij:__
- [Domein georienteerd, gedecentraliseerd stelsel](#domein-georiënteerd-gedecentraliseerd-stelsel)


## keuzes maken in automatisering

__Beschrijving:__
De ontwikkeling en het beheer van het digitale tweeling stelsel vereist bewuste keuzes op het gebied van automatisering. Dit omvat overwegingen over wel of geen inzet van AI, maar ook het voldoende op de hoogte zijn van de gebruikte technologie stack, zoals bijvoorbeeld de 'Infrastructure as Code' benadering. 

__Rationale:__
Dit is cruciaal voor het realiseren van gefederdeerde en geautomatiseerde governance wat de schaalbaarheid en betrouwbaarheid van het stelsel ten goede komt (architectuurprincipe: het stelsel is betrouwbaar). Automatisering van auditing, logging, authenticatie en autorisatie is noodzakelijk gezien de omvang en complexiteit van het beoogde digitale ecosysteem. Het draagt bij aan een robuust en veilig stelsel (kernwaarde).

__Implicatie bij:__
- [Gefedereerde en geautomatiseerde governance](#gefedereerde-en-geautomatiseerde-governance)
- [Het stelsel is betrouwbaar](#het-stelsel-is-betrouwbaar)

## API Designrules

__Beschrijving:__
De architectuur van het digital twin stelsel is gebaseerd op service oriëntatie, waarbij data en modellen worden uitgewisseld via gestandaardiseerde vragen en antwoorden (API's). Om een optimale integratie en samenwerking binnen het stelsel te waarborgen, is het noodzakelijk om de API Designrules te volgen.  Het Kennisplatform API's brengt deze API Designrules uit.

__Rationale:__
Dit is essentieel om interoperabiliteit te garanderen (architectuurprincipe: open standaarden) en een betrouwbaar stelsel te creëren (architectuurprincipe: het stelsel is betrouwbaar) in een service georiënteerde architectuur (architectuurprincipe: gebaseerd op service oriëntatie). Het faciliteert een flexibele en responsieve manier van verbinden en delen van data, modellen en tools (kernwaarde: federatief) en ondersteunt de uitwisseling van dataproducten binnen de zelfservice data-infrastructuur.

__Implicatie bij:__
- [Gebaseerd op service orientatie](#gebaseerd-op-service-oriëntatie)
- [Het stelsel is betrouwbaar](#het-stelsel-is-betrouwbaar)