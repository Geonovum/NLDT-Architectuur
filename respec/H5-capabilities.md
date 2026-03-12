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

<img src="./respec/media/NLDT_archimate_metamodel.png" alt="ArchiMate metamodel" width="900">

ArchiMate metamodel voor de NLDT architectuur. [online viewer](https://geonovum.github.io/nldt-architectuur/Archimate/html/index.html?view=id-68f0ee0b9d824121b8a04dc58af3d3ab)

Bovenstaande afbeelding visualiseert het ArchiMate metamodel voor de NLDT architectuur. Deze is opgebouwd uit motivational elements van ArchiMate om de Kaders en richtlijnen uit te drukken. Verder is deze opgebouwd uit [capabilities](https://nora-begrippen.wikixl.nl/index.php/Id-24a3c495-0b7c-737a-187e-f2da6a318eb5) en [waardestromen](https://nora-begrippen.wikixl.nl/index.php/Id-2462fbbe-503b-0805-a587-fa013f9814d7) om de dienstverlening te beschrijven. De capabilities worden vervolgens in patronen uitgewerkt op basis van elementen uit de bedrijfs- en applicatielaag van ArchiMate. Hoofdstuk 5 behandelt de waardestromen en capabilities, Hoofdstuk 6 behandelt de patronen van bedrijfs- en applicatieobjecten. 

## nLDT - eGovERA mapping

<img src="./respec/media/nLDT-eGovERA-mapping.png" alt="nLDT - eGovERA mapping" width="900">

Overzicht aansluiting van de nLDT architectuur op eGovERA

De verschillende onderdelen van de nLDT-referentiearchitectuur kunnen worden gemapt op de eGovERA-bouwstenen. Een globale mapping staat in de bovenstaande weergave. Een meer gedetailleerde mapping is te vinden in het ArchiMate-model.
- De motivatie en richtlijnen van de nLDT zijn afgestemd op de Shared Legal Content (Gedeelde Juridische Content).
- De organisatorische invalshoek is afgestemd op de Shared Organisational Content (Gedeelde Organisatorische Content).
- De nLDT-bouwblokken bevatten elementen die de Shared Knowledge Content (Gedeelde Kenniscontent) realiseren, terwijl alle bouwblokken aansluiten bij de Shared Application Content (Gedeelde Applicatiecontent).

Deze mapping is gedaan op version 6.1.0 van de 'eGovERA Business Agnostic Reference Architecture' [[eGovERA]]

## Waardestromen

Het inzetten van een Digitale Tweeling als instrument dient een bepaald doel. Dit kan een scenario analyse zijn, de onderbouwing van gevoerd beleid of de operationele aansturing van een systeem. Er zijn talloze mogelijkheden. In alle gevallen dient er een vertaling gemaakt te worden van het beoogde doel naar een modelmatige weergave in de Digitale Tweeling. Deze vertaling is weer te geven in een waardestroom die een bepaald doel realiseert en daarbij een aantal capabilities nodig heeft. 

### Use case naar Indicatoren

In het rapport 'Beleidsprocessen en bouwblokken voor Digitale Tweelingen' [[BBDT]] wordt beschreven hoe Digitale Tweelingen de beleidswereld en de techniekwereld met elkaar verbinden. Indicatoren vormen daarbij de linking pin van beleid naar de Digitale Tweeling om data en model gedreven werken mogelijk te maken binnen het beleidsproces. De [Innovatieleercyclus](https://www.geonovum.nl/themas/digital-twins/innovatieleercyclus) kan gebruikt worden om deze werelden met elkaar te verbinden. In architectuurtermen kun je dit aanduiden met Waardestromen.

### Resultaten/inzichten omzetten naar praktijk

Hoe de resultaten of inzichten uit DT's omgezet kunnen worden naar de praktijk is vooralsnog buiten scope van deze architectuur. Dit hangt onder andere af van het maturiteitsniveau van de DT (beschrijven, analyserend, voorspellend).

## Capabilities

Er bestaan internationaal diverse raamwerken die capabilities of onderdelen van digitale tweelingen beschrijven.
Op basis van de ['Capabilities periodic table' van het Digital Twin Consortium](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table) is er een versimpelde set van Capabilities gedefinieerd die als basis voor de NLDT gehanteerd worden. [[BBDT]]

<img src="./respec/media/capabilities.png" alt="DT Capabilities op basis van Digital Twin Consortium Periodic Table" width="900">

<aside class="note">
    Het plaatje moet nog geactualiseerd worden. De 4 nieuwe capabilities missen nog.
</aside>

[Digital Twin Capabilities Periodic Table](https://www.digitaltwinconsortium.org/initiatives/capabilities-periodic-table)


### Data

#### Ontsluiten

> Het gecontroleerd beschikbaar stellen van data en rekenmodellen voor andere systemen en toepassingen via gestandaardiseerde koppelingen.

De functie ontsluiten   zorgt ervoor dat data en rekenmodellen in de digitale tweeling beschikbaar zijn voor gebruik door andere systemen, toepassingen en gebruikers. Dit gebeurt via duidelijke en gestandaardiseerde digitale koppelingen, de API’s. Hierdoor kunnen data en modelresultaten veilig en gecontroleerd worden opgevraagd en hergebruikt.
Door data en rekenmodellen te ontsluiten, hoeven informatie en berekeningen niet telkens opnieuw te worden gemaakt. In plaats daarvan worden ze bij de bron beheerd en actueel gehouden, terwijl verschillende toepassingen er gebruik van kunnen maken. Dit bevordert samenwerking, consistentie en efficiënt gebruik van informatie.

#### Bewerken

> Het actief aanpassen, toevoegen of verwijderen van objecten, eigenschappen en ontwerpen binnen de digitale tweeling.

De functie bewerken maakt het mogelijk om actief veranderingen aan te brengen aan de data in de digitale tweeling. Gebruikers kunnen niet alleen data bewerken, maar ook objecten en nieuwe elementen aanpassen of toevoegen. Dit kan bijvoorbeeld gaan om het verplaatsen van objecten, het wijzigen van eigenschappen of het aanpassen van instellingen binnen de digitale omgeving. Daarnaast kunnen ontwerpen, zoals 2D- of 3D-modellen en (parametrische) ontwerpen, in de digitale tweeling worden ingepast. Zo kan worden verkend hoe nieuwe plannen of ingrepen passen binnen een bestaande situatie. Alle bewerkingen worden vastgelegd, zodat zichtbaar blijft wat is aangepast, wanneer dat is gebeurd en door wie. Bewerken ondersteunt daarmee het verkennen, uitwerken en het berekenen van effecten van ontwerpen in een digitale tweeling, voordat veranderingen in de echte wereld worden doorgevoerd. 

#### Zoeken/Vinden

> Het gericht kunnen ontdekken, filteren en opvragen van relevante data, rekenmodellen en visualisaties binnen de digitale tweeling.

De functie zoeken/vinden zorgt ervoor dat gebruikers snel en eenvoudig de juiste data, rekenmodellen en visualisaties binnen de digitale tweeling kunnen vinden. Omdat een digitale tweeling vaak bestaat uit veel verschillende datasets, rekenmodellen en visualisaties, is het belangrijk dat de digitale tweeling goed doorzoekbaar is.


#### Tijdreizen

> Tijdreizen maakt het mogelijk om situaties uit het verleden en vastgelegde toekomstige scenario’s terug te kijken, vooruit te bekijken en met elkaar te vergelijken. 

De functie tijdreizen in een digitale tweeling maakt het mogelijk om een situatie te bekijken zoals die op een bepaald moment in de tijd was, is of wordt weergegeven. Dit betekent dat je kunt teruggaan naar het verleden om te zien hoe een situatie er toen uitzag, welke data beschikbaar waren en welke keuzes zijn gemaakt.
Tijdreizen helpt gebruikers om situaties in hun context te begrijpen, verschillen tussen momenten in de tijd te zien en inzicht te krijgen in hoe een situatie zich ontwikkelt. Het ondersteunt historische analyses, zonder daarbij zelf nieuwe voorspellingen te doen. Tijdreizen geeft bestaande of vastgelegde toestanden in de tijd weer, terwijl simuleren nieuwe varianten doorrekent op basis van gekozen aannames en voorspellen gericht is op toekomstige situaties.

#### Beschrijven

> Het vastleggen van betekenis, herkomst, actualiteit en gebruik van data en modellen, zodat ze correct begrepen en toegepast kunnen worden.

De functie beschrijven  zorgt ervoor dat data en rekenmodellen in de digitale tweeling duidelijk en begrijpelijk zijn. Door data te voorzien van beschrijvingen (metadata) wordt vastgelegd wat de data betekenen, waar ze vandaan komen, hoe actueel ze zijn en hoe ze gebruikt mogen worden. Dit maakt het makkelijker om data te vinden, correct te interpreteren en betrouwbaar toe te passen, zowel voor mensen als voor systemen. Dit helpt ook het correct gebruiken en voorkomt misinterpretatie.

### Integratie

#### Reproduceren

> Het exact opnieuw kunnen oproepen van eerdere toestanden van de digitale tweeling, inclusief data, resultaten en de bijbehorende modelinstellingen.

De functie reproduceren maakt het mogelijk om een eerdere situatie in de digitale tweeling opnieuw op te roepen, precies zoals die op een bepaald moment was. Dit betekent dat niet alleen de data zelf, maar ook de bijbehorende indicatoren, en instellingen voor rekenmodellen en context beschikbaar blijven voor later gebruik.
Reproduceren maakt het mogelijk om een specifieke toestand van de digitale tweeling exact opnieuw op te roepen, inclusief de bijbehorende data, instellingen, rekenregels en modelconfiguraties zoals die op dat moment golden. 
Reproduceren is essentieel wanneer moet kunnen worden aangetoond waarom een bepaalde uitkomst of beslissing tot stand is gekomen en onder welke omstandigheden dat gebeurde. 
Door situaties reproduceerbaar te maken, wordt de digitale tweeling betrouwbaar en uitlegbaar: analyses en beslissingen kunnen worden nagegaan, besproken en, indien nodig, opnieuw uitgevoerd op basis van dezelfde uitgangspunten.

Tijdreizen ondersteunt inzicht, analyse en context, maar legt zelf geen nieuwe toestanden vast en garandeert geen volledige herhaalbaarheid van een specifieke besluitcontext. Reproduceren is essentieel wanneer moet kunnen worden aangetoond waarom een bepaalde uitkomst of beslissing tot stand is gekomen en onder welke omstandigheden dat gebeurde.

#### Meten/Aansturen

> Het verbinden van de digitale tweeling met de echte wereld door het ontvangen van metingen en het (optioneel) aansturen van systemen of objecten.

De functie meten en aansturen maakt het mogelijk om informatie uit de echte wereld te gebruiken in de digitale tweeling én om vanuit de digitale tweeling acties uit te voeren in de werkelijkheid. Gegevens zoals temperatuur, beweging of status worden gemeten en op vaste of realtime momenten doorgegeven aan de digitale tweeling, zodat deze een actueel beeld van de situatie kan tonen. De gemeten meetdata worden opgeslagen, waardoor veranderingen in de tijd zichtbaar blijven en eerdere toestanden kunnen worden teruggehaald. Dit maakt het mogelijk om ontwikkelingen te volgen en de werking van systemen te begrijpen.
Naast meten kan een digitale tweeling ook worden gebruikt om onderdelen in de echte wereld aan te sturen. Via digitale signalen kunnen instellingen of statussen worden aangepast, bijvoorbeeld door een apparaat in of uit te schakelen zoals een brug of sluis. Zowel metingen als aansturingsacties worden vastgelegd, zodat altijd zichtbaar is wat er is gemeten en welke acties zijn uitgevoerd. 

#### Integreren

> Het samenbrengen van data uit verschillende bronnen, systemen en domeinen tot één samenhangend en herkenbaar beeld van de werkelijkheid.

De functie integreren zorgt ervoor dat data uit verschillende bronnen samenkomt  in één samenhangend geheel binnen de digitale tweeling. Data uit uiteenlopende systemen, domeinen en perspectieven worden met elkaar verbonden en op elkaar afgestemd, zodat ze samen één duidelijk en herkenbaar beeld vormen van een gebied, project of situatie.
Om data te kunnen integreren is altijd een koppelpunt nodig. Dit koppelpunt zorgt ervoor dat data over hetzelfde object, gebied of onderwerp aan elkaar kunnen worden verbonden. Zo kan een locatie als koppelpunt dienen, maar ook een gedeelde administratieve sleutel, zoals een gemeentecode, of een geometrisch of geografisch referentiepunt. Door gebruik te maken van zulke koppelingen kan data uit verschillende bronnen worden geïntegreerd en samengebracht. 
Door deze data te combineren ontstaat een compleet en actueel overzicht, waarin verbanden zichtbaar worden die in losse data niet te zien zijn. Dit gezamenlijke beeld vormt de basis voor verdere analyse, afweging en besluitvorming, en maakt het mogelijk om vanuit verschillende invalshoeken naar dezelfde werkelijkheid te kijken. 

### Analyse

#### Analyseren

> Het duiden en interpreteren van data en resultaten door patronen, trends en afwijkingen te herkennen en te verklaren.

De functie analyseren helpt om betekenis te geven aan de gegevens en resultaten die in de digitale tweeling beschikbaar zijn. Waar rekenen cijfers en indicatoren oplevert, richt analyseren zich op het begrijpen van wat deze uitkomsten betekenen voor een situatie, een proces of een ontwikkeling in de tijd.  
Door informatie te combineren en te bekijken vanuit verschillende invalshoeken, kunnen  patronen, trends en opvallende veranderingen worden  ontdekt. Analyseren maakt het mogelijk om te beoordelen of een situatie zich ontwikkelt zoals verwacht en waar mogelijke aandachtspunten of knelpunten ontstaan.
De resultaten van analyses kunnen op verschillende manieren worden gepresenteerd, bijvoorbeeld in grafieken, kaarten, dashboards of tekstuele samenvattingen. Zo ondersteunt analyseren het verkrijgen van inzicht en vormt het een belangrijke basis voor verdere afweging en besluitvorming binnen de digitale tweeling. 

#### Voorspellen

> Het inschatten van waarschijnlijke toekomstige ontwikkelingen op basis van historische en actuele data en rekenmodellen.

De functie voorspellen maakt het mogelijk om een onderbouwde uitspraak te doen over hoe een situatie zich waarschijnlijk zal ontwikkelen in de toekomst. Een digitale tweeling gebruikt hiervoor actuele en historische gegevens in combinatie met modellen en rekenregels om mogelijke toekomstige toestanden te berekenen.
Voorspellen verschilt van simuleren doordat het gericht is op het inschatten van waarschijnlijke uitkomsten, in plaats van het verkennen van vrije wat-als-varianten. Het verschilt ook van tijdreizen, dat bestaande of vastgelegde scenario’s in de tijd weergeeft , terwijl voorspellen juist nieuwe toekomstige waarden berekent.
De resultaten van voorspellingen kunnen worden getoond in dezelfde omgeving als het huidige en eerdere beeld van de werkelijkheid, zodat gebruikers ontwikkelingen in de tijd kunnen volgen en beter voorbereid zijn op mogelijke veranderingen .


#### Orkestratie

> Het coördineren van de samenhang en volgorde waarin functies (zoals meten, rekenen, analyseren en visualiseren) worden uitgevoerd.

De functie orkestreren zorgt ervoor dat de verschillende bouwstenen van de digitale tweeling op het juiste moment en in de juiste volgorde samenwerken. Orkestreren bepaalt welke functie wanneer wordt gebruikt en hoe de uitkomsten van de ene functie worden doorgegeven aan de volgende. Bijvoorbeeld: eerst worden data opgehaald, daarna berekeningen uitgevoerd, vervolgens analyses gemaakt en tenslotte resultaten getoond of vastgelegd. Deze stappen kunnen automatisch achter elkaar plaatsvinden, tegelijk worden uitgevoerd of alleen worden gestart wanneer aan bepaalde voorwaarden is voldaan.
Orkestreren voert zelf geen berekeningen, voorspellingen of simulaties uit, maar regelt het proces eromheen. Het zorgt ervoor dat tijdreizen, simuleren en voorspellen gecontroleerd en samenhangend kunnen worden ingezet binnen één digitale tweeling.  

#### Simuleren

> Simuleren verkent mogelijke wat-gebeurt-er-als situaties door parameters te wijzigen en de effecten daarvan door te rekenen. 

De functie simuleren maakt het mogelijk om in de digitale tweeling te onderzoeken wat er kan gebeuren als bepaalde keuzes of omstandigheden veranderen. Gebruikers kunnen een beginsituatie kiezen en één of meerdere parameters aanpassen, waarna het model laat zien welke effecten dit kan hebben op het systeem, proces of gebied.
Simuleren verschilt van voorspellen doordat het niet gaat om wat het meest waarschijnlijk is, maar om het verkennen van verschillende wat-als-situaties. Het verschilt ook van tijdreizen, dat bestaande of vastgelegde toestanden in de tijd weergeeft, terwijl simuleren nieuwe varianten doorrekent op basis van gekozen aannames.  
Door verschillende simulaties te vergelijken, kunnen kansen, risico’s en mogelijke oplossingen inzichtelijk worden gemaakt. Simuleren ondersteunt daarmee het verkennen van opties en het voorbereiden van afwegingen, zonder dat er al een definitieve uitspraak over de toekomst wordt gedaan

#### Rekenen

> Het toepassen van rekenregels en modellen op data om resultaten te genereren die inzicht geven in processen, effecten en samenhangen.

De functie rekenen maakt het mogelijk om data in de digitale tweeling te verwerken met behulp van rekenmodellen. Met behulp van data geven rekenmodellen inzicht in de effecten van processen en verschijnselen, zoals hittestress, wateroverlast en geluidsbelasting. Door berekeningen uit te voeren worden effecten zichtbaar en kunnen verbanden en patronen in de data worden ontdekt. Rekenmodellen zetten (ruwe) data om in indicatoren, die inzicht geven in de toestand of het gedrag van een systeem. Deze indicatoren vormen een belangrijke basis voor verdere analyse en beleidsmatige afwegingen binnen de digitale tweeling. 
Omdat veel processen elkaar beïnvloeden en tegelijk plaatsvinden, is rekenen een essentieel onderdeel van het nabootsen van de werkelijkheid. De gebruikte rekenmodellen zijn vastgelegd en transparant beschreven, zodat duidelijk is welke aannames worden gebruikt en hoe de berekeningen tot stand komen.

#### Besluiten

> Besluiten omvat het zorgvuldig afwegen van effecten en belangen en het vervolgens vastleggen van een keuze op basis van de inzichten die de digitale tweeling biedt.

De functie besluiten omvat het zorgvuldig afwegen van verschillende belangen, doelen en effecten en het vervolgens vastleggen    van een keuze op basis van inzichten uit de digitale tweeling. Door gevolgen van opties zichtbaar te maken, wordt duidelijk wat de impact is op bijvoorbeeld leefbaarheid, kosten, veiligheid of duurzaamheid, en ontstaat ruimte voor een goed onderbouwd gesprek over wat belangrijk is.
Het besluit bestaat uit het kiezen van een richting of optie, inclusief het moment waarop en de context waarin die keuze is genomen. Door besluiten te koppelen aan de onderliggende data en inzichten blijft inzichtelijk waarom een besluit is genomen en kan dit later worden uitgelegd, herzien of verantwoord.

### Visualisatie

#### Visualiseren

> Het inzichtelijk maken van data en resultaten via kaarten, grafieken, dashboards of 2D/3D-beelden, zodat informatie snel begrepen wordt.

De functie visualiseren helpt gebruikers om gegevens in de digitale tweeling sneller te interpreteren  , herkennen en begrijpen door ze zichtbaar te maken in overzichtelijke beelden. In plaats van te zoeken in lijsten of tabellen, kunnen gebruikers data ontdekken door te kijken naar kaarten, grafieken of andere visuele weergaven.
Visualisaties maken het mogelijk om grote hoeveelheden gegevens te ordenen en te filteren, bijvoorbeeld door in te zoomen op een gebied, een periode te kiezen of specifieke thema’s aan of uit te zetten. Zo wordt direct duidelijk waar bepaalde informatie zich bevindt en welke gegevens bij elkaar horen.
Door data visueel te presenteren in 2D, 3D of interactieve omgevingen met een Level-of-Detail die voldoet aan de vereisten, ondersteunt de functie visualiseren helpt het gebruikers om relevante informatie snel te kunnen interpreteren en in de juiste context te plaatsen. Eén prentje zegt meer dan 1000 woorden. De beelden kunnen statisch of dynamisch zijn, heel realistisch (qua kleuren en effecten) of net niet (valse kleuren). Ook kan het gebruik van AR/VR/xR meer inzicht en interactie bieden met de werkelijkheid, zonder dat we die kunnen aanschouwen. 

#### Beleven

> Beleven biedt gebruikers een interactieve en intuïtieve ervaring waarmee zij de digitale tweeling actief kunnen verkennen en begrijpen. 

De functie beleven gaat over hoe gebruikers de digitale tweeling ervaren en ermee omgaan. Het belevingsaspect maakt het mogelijk om niet alleen informatie te bekijken, maar om actief te verkennen, te experimenteren en te leren binnen een digitale omgeving. Gebruikers kunnen zich verplaatsen in een situatie en ervaren hoe een systeem, gebied of proces functioneert.
Beleven gaat verder dan visualisatie. Waar visualisatie informatie zichtbaar maakt, draait beleven om interactie, betrokkenheid en gebruiksgemak. Dit kan op verschillende manieren worden vormgegeven. Zo kan met XR (Extended Reality) een omgeving volledig virtueel worden beleefd, bijvoorbeeld door rond te lopen in een toekomstige wijk. Met AR (Augmented Reality) kunnen digitale elementen worden toegevoegd aan de echte wereld, zoals het projecteren van een nieuw gebouw of een geluidszone in de bestaande omgeving.
Ook gamificatie kan bijdragen aan de beleving, bijvoorbeeld door gebruikers opdrachten te laten uitvoeren, scenario’s te verkennen of feedback te krijgen in de vorm van scores, voortgang of beloningen. Dit maakt het gebruik van de digitale tweeling laagdrempelig en stimuleert actieve deelname.

#### Verklaren

> Verklaren geeft inzicht in de betekenis van resultaten uit de digitale tweeling, door uitkomsten, patronen en aannames begrijpelijk en in hun context toe te lichten. 

De functie verklaren ondersteunt gebruikers bij het begrijpen van wat uitkomsten betekenen, waarom bepaalde patronen of effecten zichtbaar zijn en welke aannames daarbij een rol spelen. Interpreteren is met name van belang omdat de gebruikersgroep van een digitale tweeling divers is en niet iedere gebruiker rekenresultaten of analyses zelfstandig kan duiden. Technisch raakt deze functie aan ‘explainability’ van rekenmodellen, het gebruik van metadata en semantiek, en aan AI-modellen met ondersteunde samenvattingen en uitleg aanpassen aan de rol, kennis en context van de gebruikers.

### Betrouwbaarheid

#### Vertrouwen

> Vertrouwen zorgt ervoor dat data in de digitale tweeling veilig, betrouwbaar en volgens duidelijke afspraken kan worden gedeeld. 

De functie vertrouwen zorgt ervoor dat data binnen de digitale tweeling op een veilige, betrouwbare en verantwoorde manier kunnen worden gedeeld. Gebruikers moeten erop kunnen vertrouwen dat de informatie klopt, zorgvuldig wordt beheerd en alleen toegankelijk is voor wie daar recht op heeft.
Dit vertrouwen ontstaat doordat duidelijke afspraken zijn gemaakt over de kwaliteit, herkomst en het gebruik van data. Door gebruikers te identificeren en toegangsrechten toe te passen, kan worden bepaald wie welke gegevens mag inzien of gebruiken. Zo wordt voorkomen dat gevoelige informatie onbedoeld wordt gedeeld.
Daarnaast draagt transparantie bij aan vertrouwen. Het is inzichtelijk hoe data worden verwerkt, waar ze vandaan komen en hoe ze worden beveiligd. Door te voldoen aan geldende regels en standaarden, en door zorgvuldig om te gaan met privacy en beveiliging, ontstaat een digitale tweeling waarin data veilig kan worden gedeeld en gebruikt.
Validatie op basis van juridische-, ethische- of technische kaders geeft ook invulling aan vertrouwen.

#### Identificeren

> Identificeren stelt vast wie de gebruiker is, zodat toegang, rechten en verantwoordelijkheden veilig kunnen worden geregeld. 

De functie identificeren zorgt ervoor dat gebruikers van een digitale tweeling zich kenbaar maken voordat zij bepaalde functies kunnen gebruiken. Door vast te stellen wie iemand is, kan worden bepaald welke data en rekenmodellen en functies voor die gebruiker beschikbaar zijn. Dit helpt om de digitale tweeling veilig en verantwoord te gebruiken.
In sommige gevallen is een beperkte, anonieme verkenning mogelijk. Voor het uitvoeren van uitgebreidere handelingen, zoals analyseren, bewerken of aansturen, is identificatie noodzakelijk. Dit maakt het mogelijk om gebruikersrechten toe te kennen en activiteiten te herleiden naar een gebruiker of rol.
Identificeren draagt bij aan vertrouwen in de digitale tweeling. Door gebruikersactiviteiten zorgvuldig vast te leggen en te beschermen volgens geldende privacy- en veiligheidsregels, ontstaat een betrouwbare en transparante omgeving waarin mensen veilig met de digitale tweeling kunnen werken. 

### Beheer

#### Bewaken

> Bewaken geeft inzicht in of de digitale tweeling als systeem goed werkt, door te volgen of data, rekenmodellen en visualisaties correct en tijdig samenwerken. 

De functie bewaken zorgt ervoor dat het digitale tweeling als geheel systeem goed blijft functioneren. Het geeft inzicht in of data, rekenmodellen en visualisaties correct en tijdig met elkaar samenwerken. Zo wordt zichtbaar of de digitale tweeling doet wat ervan wordt verwacht.
Bewaken of ‘observability’ maakt het mogelijk om te zien of datastromen goed verlopen, bijvoorbeeld tussen meten, rekenen en visualiseren. Wanneer onderdelen niet goed werken, data ontbreken of resultaten onverwacht zijn, kan dit tijdig worden gesignaleerd. Dit helpt om verstoringen te voorkomen en de betrouwbaarheid van de digitale tweeling te bewaken.

---


<img src="./respec/media/DT_Capabilities.png" alt="DT Capabilities" width="900">

<aside class="note">
    Het plaatje moet nog geactualiseerd worden. De 4 nieuwe capabilities missen nog.
</aside>

De online ArchiMate view van de capabilities kan [hier](https://geonovum.github.io/nldt-architectuur/Archimate/html/index.html?view=id-eb1073502d06497cbfe4ed9ce6c3e98b) gevonden worden.