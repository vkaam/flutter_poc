import 'dart:ui';

import 'package:random_color/random_color.dart';

class Session {
  Session(this.id, this.teamMembers, this.title, this.description, this.image) {
    this.teamColor = RandomColor().randomColor(
        colorSaturation: ColorSaturation.lowSaturation,
        colorBrightness: ColorBrightness.light);
  }

  int id;
  List<String> teamMembers;
  String title;
  String description;
  String image;
  Color teamColor;
}

List<Session> sessions = [
  new Session(
      15,
      ["Emre Arslan", "Turab Bugöl", "Lennert Moorthamer", "Griet Vermeesch"],
      "De veerkracht van microservices",
      "Microservices hebben het laatste decennium opgang gemaakt binnen software architectuur omwille van hun uitstekende schaalbaarheid en flexibiliteit. Opdat deze voordelen daadwerkelijk zouden kunnen worden uitgespeeld, dient echter een cruciale zwakte te worden ondervangen: het falen van een enkele service mag het hele systeem niet doet ineenstuiken. Onze presentatie gaat in op de vraag hoe de robuustheid van microservices kan worden bevorderd door keuze van framework, het gebruik van patterns, testing, monitoring en chaos engineering. Zo komen we tot enkele inzichten en aanbevelingen om de kracht van microservices in de toekomst te verhogen.",
      "15.png"),
  new Session(
      19,
      ["Ruben Frans", "Jonas Marien", "Niels Palinckx", "Joni Van Roost"],
      "Hybride webapplicaties",
      "Cross-Platform Mobile Development stelt ontwikkelaars in staat om een unieke codebase te schrijven en dezelfde applicatie te maken voor meerdere mobiele platformen (bijv. Android en iOS). Het belangrijkste doel van dit onderzoek is om hun huidige staat van volwassenheid te analyseren. In die richting is een applicatie ontwikkeld in React Native, een Progressive Web App in Vue en zijn er native versies voor Android en iOS geïmplementeerd. Een dergelijke mobiele applicatie verkrijgt informatie van sensoren, gebruikt de persoonlijke contactenlijst, ontvangt notificaties en gebruikt de GPS om locaties te bepalen. We analyseerden de haalbaarheid van het bouwen van dit soort mobiele applicaties, de prestaties van elke versie en de ontwikkelingsinspanning. Met onze resultaten willen we een overzicht geven van de kwaliteiten en beperkingen van deze frameworks.",
      "19.png"),
  new Session(
      23,
      ["Vincent Boden", "Ward Driesen", "Glenn Schrooyen", "Brent Vermolen"],
      "Microservice architectuur met Micronaut",
      "Een benadering van microservices met Micronaut waarin we de verschillen tussen platformen weergeven en hierbij ook laten zien hoe er met testing, security en deployment moet omgegaan worden. Ook technologieën om de verschillende microservices te analyseren worden besproken.",
      "23.png"),
  new Session(
      27,
      ["Quinten Mortier", "Senne Verhaegen"],
      "Reactive vs non-reactive spring applicaties",
      "De groei van devices en data is enorm. Dit heeft gevolgen voor onze applicaties. Grote datastromen moeten kunnen verwerkt worden in een vlotte en efficiënte manier om snelle responstijd te bereiken.  Reactive systems kunnen ons hier enorm bij helpen. Daarom nemen wij jullie mee in de wereld van java, meer specifiek het Spring framework. We kijken naar de verschillen tussen reactive en non-reactive Spring applications. Wat zijn de voordelen of nadelen? Wanneer kiezen we voor een reactive stack? Hoe werken we met streams en databases? Etc.",
      "27.png"),
  new Session(
      16,
      ["Swaelen Jelle", "Van Laer Seppe", "Bax Ryan", "Van Steenacker Axl"],
      "Het Kotlin Ecosysteem",
      "Door de stijgende populariteit en uitgebreide ondersteuning op vlak van documentatie, leek het ons interessant om te onderzoeken wat het Kotlin ecosysteem te bieden heeft. In onze presentatie zullen we verschillende onderdelen bespreken, zoals onder andere Kotlin JS en Kotlin Native. We zullen het hebben over de huidige staat van deze twee componenten en enkele manieren waarop ze gebruikt kunnen worden. Verder bekijken we wat de verschillen zijn tussen Kotlin en Java en waar de voor- en nadelen liggen. Vervolgens gaan we in op wat Kotlin te bieden heeft bij Android development en ten slotte zullen we ook de impact van Kotlin op het bedrijfsleven bespreken.",
      "16.png"),
  new Session(
      20,
      ["Assayag Joseph", "Jakubek Ian", "Wouters Jana", "Buts Kristof"],
      "GraphQL in microservicearchitecturen",
      "Ons onderzoek focust op de ervaringen met het implementeren en onderhouden van GraphQL met de nadruk op microarchitectuur omgevingen. Hierbij bekijken we de verschillende aspecten van het inzetten van GraphQL als gateway voor de functionaliteiten van welbepaalde diensten.We bestuderen het ontstaan van GraphQL en vergelijken het met REST. Hierbij ontsluieren we de tekortkomingen van REST en de daaruit volgende bestaansreden van GraphQL. We onderzoeken de voor- en nadelen van een migratie en de uitdagingen en afwegingen die daarbij horen. We bekijken waar de technologie vandaag staat, wat er voor de toekomst te verwachten is en de uitdagingen die hierbij gepaard zullen gaan.In onze conclusie trachten we de vraag te beantwoorden of de voordelen van GraphQL opwegen tegen de nadelen en of het de moeite is om de sprong te wagen.",
      "20.png"),
  new Session(
      24,
      ["Scheers Nicolas", "Maes Oliver", "Verhelst Yari", "Zielinski Artur"],
      "Dieptezicht, technologie en de toekomst.",
      "In deze moderne tijden gebruiken we technologie steeds meer en meer. We maken ons leven gemakkelijker en proberen de mensen die hulp nodig hebben te helpen met al de nieuwe innovaties die voortdurend op de markt komen. Wij willen ons in dit deel richten op spatial programming. Men begint nu meer en meer de technologie en de ruimte rondom samen te gebruiken. We gaan bekijken welke technologieën er bestaan en of we deze kunnen gebruiken om een dieptezicht te kunnen creëren. We zullen de verschillende technologieën vergelijken en een antwoord zoeken op de vraag of dit vandaag de dag al mogelijk is.",
      "24.png"),
  new Session(
      28,
      ["Van Loock Jessé", "Jacobs Daan", "Ooms Glenn", "de Hoon Jeroen"],
      "Hybrid Apps",
      "Het maken van mobiele applicaties is nog gemakkelijker geworden sinds het onstaan van hybride apps. Een groot voordeel van hybride apps ten opzichte van native apps is dat een hybride app slechts eenmalig ontwikkeld hoeft te worden en vervolgens gedistribueerd kan worden over verschillende grote platformen zoals iOS, Android en Windows. Dankzij grote hybride mobiele app frameworks zoals Ionic en React Native kunnen dergelijke applicaties eenvoudig geschreven worden met HTML, CSS en Javascript. Deze frameworks bieden allemaal robuuste UI-componenten die eruit zien en aanvoelen als hun native tegenhangers. Tijdens deze sessie gaan we dieper ingaan in hoe deze frameworks achterliggend werken en wat hun verschillen zijn op zowel het Android als het iOS platform.",
      "28.png"),
  new Session(
      17,
      ["Brent Boderé", "Niels Van Reeth", "Mees Van Kaam", "Massimo Prencipe"],
      "Flutter: de beste UI toolkit?",
      "Het afgelopen decennium was dat van de opkomst van mobile apps. Mobiele banking en shopping apps hebben ons dagelijks leven een stuk makkelijker gemaakt. Ook zijn sociale media apps niet meer weg te denken uit ons dagelijkse leven.",
      "17.png"),
  new Session(
      21,
      [
        "Anton Thomas",
        "Alexander Versweyveld",
        "Mattias Goossens",
        "Benjamin Janssens"
      ],
      "Progressive Web Applications",
      "Progressive Web Applications; een term die in de wereld van web development de laatste tijd enorm aan populariteit wint. Maar wat zijn PWA’s nu precies? Van waar komt die plotse stijging in populariteit? We bespreken onze bevindingen en vergelijken de technologie van PWA met alternatieven zoals React Native en native Android apps.",
      "21.png"),
  new Session(
      25,
      ["Jeroen Claessens", "Arne Cools", "Dries Rascar"],
      "Analyse van kristallen met Deep Learning",
      "Het analyseren van kristallisatieprocessen bij Janssen Pharmaceutica verloopt tot op vandaag nog volledig handmatig. Dit heeft als gevolg dat er pas laat in het proces kan worden ingegrepen wanneer er iets fout loopt en ook dat de resultaten lang op zich laten wachten.In een speciaal project “Crysco” hebben we met drie studenten onderzocht in welke mate we dit proces makkelijker kunnen maken met behulp van Deep Learning.In deze presentatie bespreken we het voorlopige eindresultaat en de hindernissen die we hebben ondervonden om tot dit resultaat te komen en wat de eventuele volgende stappen zijn.",
      "25.png"),
  new Session(
      18,
      [
        "Cédric Van den Bogaert",
        "Pieter Joos",
        "Jasper Van Herbruggen",
        "Loïc Vermeire"
      ],
      "Wat zijn de meest gangbare protocollen voor home automation?",
      "Home automation is overal en net zoals bij andere populaire technologieën zijn de mogelijkheden slechts beperkt door de verbeelding van de mensen die in dit veld werken. Om automation in een huis te kunnen implementeren, moet er data snel verstuurd te kunnen worden. Privacy is tegenwoordig ook zeer belangrijk geworden in elke overdracht van data. Dit zijn 2 belangrijke onderwerpen waarmee men rekening moet houden wanneer home automation geïmplementeerd wordt. In deze sessie gaan we een aantal mogelijke protocollen vergelijken en kijken wat de voordelen en nadelen zijn bij het gebruik ervan. Zo proberen we zo objectief mogelijk een “beste protocol” te bepalen. We gaan na of er altijd custom protocollen gebruikt moeten worden of het beter is om data voor home automation over traditionele protocollen te sturen.",
      "18.png"),
  new Session(
      22,
      ["Stijn De Keyser", "Arne De Wilde", "Warre Pessers"],
      "AI en verloren talen",
      "Mensen houden zich al eeuwen bezig met het bestuderen en ontcijferen van (oude) verloren talen. Dit is essentieel om meer te weten te komen over de geschiedenis van de mensheid. Toch zijn er nog steeds verloren talen die slechts gedeeltelijk of helemaal niet ontcijferd zijn. Nog heel wat stukjes geschiedenis te ontdekken dus!Tijdens deze sessie gaan we na of Artificiële Intelligentie misschien een handje kan helpen bij het ontcijferen van verloren talen. We besteden aandacht aan wat verloren talen zijn en op welke manier mensen te werk gaan om ze te ontcijferen. Daarnaast trekken we ook op onderzoek uit om een antwoord te kunnen formuleren op dé ultieme vraag: “Kan Artificiële Intelligentie de geheimen van verloren talen onthullen?”.",
      "22.png"),
  new Session(
      26,
      ["Cedric Claes", "Cedric Bracke", "Thomas Pieters"],
      "De examentool van de toekomst",
      "Veel examens op hogescholen en universiteiten worden via de computer afgelegd. Hiervoor kan ofwel gewerkt worden met PC-klassen en computers van de hogeschool ofwel met de laptops van de studenten zelf. Deze laptops dienen dan wel beveiligd te worden. In deze sessie zullen we bespreken wat de voor- en nadelen zijn van verschillende manieren om een examen te controleren op de laptop. De manieren die we zullen testen zijn:, Software, Custom usb's, Kant en klare usb's, Van het netwerk booten Het doel van onze paper is een eventueel betere optie vinden voor de huidige examentool.",
      "26.png"),
];
