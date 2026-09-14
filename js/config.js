let respecConfig = {
  useLogo: true,
  useLabel: true,

  // TODO: title is verplicht! Neem hieronder de titel van het document op
  title: "NLDT Architectuur",
  //-- specStatus is verplicht! (activeer 1 van de volgende)
  // specStatus: "wv",                 // Werkversie
  //specStatus: "cv",               // Consultatieversie
  specStatus: "vv",               // Versie ter vaststelling
  //specStatus: "def",              // Vastgestelde versie
  // specStatus: "basis",            // Basis Document

  //-- specType is verplicht bij alle andere dan BASIS
  //specType: "NO",                 // Norm
  //specType: "ST",                 // Standaard
  //specType: "IM",                 // Informatie Model
  //specType: "PR",                 // Praktijkrichtlijn
  specType: "HR",                   // HandReiking
  //specType: "WA",                 // Werkafspraak
  //specType: "BD",                 // Beheer Documentatie
  //specType: "AL",                 // Algemeen document
  //specType: "BP",                 // Best Practice

  //-- pubDomain is verplicht! (komt in de URL)
  //-- zie: https://geonovum.github.io/handleiding-tooling/ReSpec/#pubdomain
  //-- TODO: vul pubDomain in
  pubDomain: "nldt",

  //-- license: voor de geldende gebruiksvoorwaarden. Default is cc-by.
  //license: "cc-by-nd",            // bronvermelding, geen afgeleide werken (default)
  //license: "cc0",                 // Public Domain Dedication
  license: "cc-by",                 // Attribution, met bronvermelding

  //-- TODO shortName is verplicht! (komt in de URL: kies logische afkorting)
  //-- Regel: shortName mag geen hoofdletters bevatten.
  shortName: "nldt-ra",
  
  //edDraftURI = De URI van de draft version. Deze wordt automatisch afgeleid van de github URI; maar kan hier overschreven worden. 
	//edDraftURI: ["https://geonovum.github.io", "/", "shortName"],

  //-- publishDate is verplicht. Als je werkversie gekozen hebt  dan pakt Respec
  //-- de pushdate maar de publishDate is nog steeds verplicht.
  publishDate: "2026-02-09",
  
  //-- publishVersion is verplicht. Hij mag wel leeg zijn [], maar niet de lege string zijn "".
  publishVersion: "0.8.3",
 
  //-- Voor dit blok geldt: alleen als er eerdere versies zijn en altijd beide aan/uit! 
  //previousPublishDate: "2014-05-01",
  //previousMaturity: "CV",

  //-- Deze gebruiken we niet binnen Geonovum
  //prevVersion: "0.0.1",

  //-- TODO: de namen van de Editor(s) / Redacteur(en)
  //-- vul in: per Editor: name:, company:, companyURL:
  editors:
    [
      {
      name: "Bart De Lathouwer",
      company: "Geonovum",
      companyURL: "https://www.geonovum.nl/"
    },
    {
      name: "Niels Hoffmann",
      company: "Geonovum",
      companyURL: "https://www.geonovum.nl/"
    },
    {
      name: "Michel Grothe",
      company: "Geonovum",
      companyURL: "https://www.geonovum.nl/"
    }
    ],

  //-- de namen van de auteur(s) 
  //-- vul in: per auteur: name:, company:, companyURL: 
  authors:
    [
      {
      name: "Bart De Lathouwer",
      company: "Geonovum",
      companyURL: "https://www.geonovum.nl/"
    },
    {
      name: "Niels Hoffmann",
      company: "Geonovum",
      companyURL: "https://www.geonovum.nl/"
    },
    {
      name: "Michel Grothe",
      company: "Geonovum",
      companyURL: "https://www.geonovum.nl/"
    }
    ],

  // TODO: Vul de github URL in.
  // neem hier de URL van de github repository op waar het respec document in staat
  // dit zorgt voor het 'Doe mee:' onderdeel in het voorblad van de publicatie.
  github: "https://github.com/geonovum/NLDT-Architectuur",

  postProcess: [
    ...(organisationConfig.postProcess ?? []),
    localizeGitHubHeaderLinks
  ],

  // Create PDF and link to file in header (optional):
  // TODO: Change the filename as preferred.
  //alternateFormats: [
  //    {
  //        label: "pdf",
  //        uri: "static/template.pdf",
  //    },
  //],

  //
  // Lokale lijst voor bibliografie
  // - Kijk eerst naar de beschikbare www.specref.org .
  // - Kijk daarna in de organisatieconfig op: https://tools.geostandaarden.nl/specref/
  // - Voeg dan pas hieronder toe.
  // - Zie handleiding: https://geonovum.github.io/handleiding-tooling/ReSpec/ReSpec-onderdelen/#bibliografie
  //
  localBiblio: 
  {
    BBDT: {
        title: "Beleidsprocessen en bouwblokken voor Digitale Tweelingen",
        href: "https://www.geonovum.nl/uploads/documents/Eindrapport%20Advies%20Beleid%20en%20Digital%20Twins%20-%20provincie%20Utrecht%20v1.3d.pdf",
        publisher: "Geonovum"
    },
    NDTFL: {
      title: "Referentie Architectuur Stelsel Digitale Tweeling Fysieke Leefomgeving",
      href: "https://www.geonovum.nl/uploads/documents/20220211%20Referentiearchitectuur%20Stelsel%20DTFL%20versie%200.9.pdf",
      publisher: "Geonovum",
      status:     "V0.9",
      date: "11 februari 2022"
    },
    DMI_ecosysteem_volwassenheidsniveaus: {
      title: "De type volwassenheidsniveaus zijn gebaseerd op een analyse over zes bronnen, te weten Geospatial World (2023), Digital Twin Consortium (2024a), Digital Urban Brabant (2023), International Data Group (2019), Stichting Toekomstbeeld der Techniek (2022) en TNO."
    },
    VRO_2024: {
      title: "Aanbieding meerjarenvisie Zicht op Nederland: samen datagedreven werken aan de fysieke leefomgeving",
      href: "https://www.rijksoverheid.nl/documenten/rapporten/2024/02/12/meerjarenvisie-zicht-op-nederland",
      date: "12-02-2024"
    },
    Gebora: {
      title: "Wat is gebora",
      href: "https://www.digigo.nu/wat-is-gebora/",
      date: "30-04-2025"
    },
    FDS: {
      title: "Scope van FDS",
      href: "https://federatief.datastelsel.nl/kennisbank/scope-van-fds/",
      date: "30-04-2025"
    },
    LDT: {
            title: "Public report on the LDT toolbox detailed specifications requirements – D05.02",
            href: "https://data.europa.eu/doi/10.2759/384198",
            publisher: "European Commission",
            },
    DUET: {
              title: "L. Raes et al., DUET: A Framework for Building Interoperable and Trusted Digital Twins of Smart Cities",
              href: "https://ieeexplore.ieee.org/document/9362182",
              publisher: "IEEE Internet Computing, vol. 26, no. 3, pp. 43-50, 1 May-June 2022"
          },
    eGovERA: {
      title: "eGovERA Business Agnostic Reference Architecture 6.1.0",
      href: "https://interoperable-europe.ec.europa.eu/collection/european-interoperability-reference-architecture-eira/solution/egovera-business-agnostic-0/release/610",
      date: "07-11-2024"
    }
  }
};

function localizeGitHubHeaderLinks(_config, document) {
  if (document.documentElement.lang !== "nl") {
    return;
  }

  const issueLink = document.querySelector(
    '.head dl a[href$="/issues/"], .head dl a[href$="/issues"]'
  );
  if (issueLink) {
    issueLink.textContent = "Alle issues";
  }
}
