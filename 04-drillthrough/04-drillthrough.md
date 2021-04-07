# Drillthrough

Binnen **Adventure Works** is je leidinggevende bijzonder te spreken over de geografische mogelijkheden van Power BI. Het is echter niet heel handig om alle geografische achtergrondinformatie over een regio in elk rapport te herhalen. Het liefst zou ze bij bijvoorbeeld een uitschieter in verkopen in een bepaald land willen kunnen "doorklikken" naar alle informatie van dat land. Bijvoorbeeld de trend in verkopen de afgelopen jaren, het aantal vestigingen in dat land, etc..

Dit "doorklikken" wordt in een BI tool **drillthrough** genoemd. In [module 3](../03-visuals-and-interaction/03-visuals-and-interaction.md) hebben we al gekeken naar de *drilldown*. De *drillthrough* houdt in de basis in dat je een getal onder de loep neemt op een andere pagina of in een ander rapport. Op deze manier kun je eenvoudig de context bekijken - bijvoorbeeld van de verkopen binnen een bepaald land. Hieronder staat een voorbeeld **zoals het aan het einde van de module gaat werken** (zodat je ziet hoe een drillthrough werkt).

![Bewegend voorbeeld van drillthrough](img/01-drillthrough-sample.gif)

![Voorbeeld van een drillthrough - gebruiker rechtsklikt op tabblad "Page 2"  op het land " Germany](img/01a-drillthrough-sample-step1.png)
![Voorbeeld van een drillthrough - gebruiker kiest in context menu voor de optie "Drill through", daarna "Country Details"](img/01a-drillthrough-sample-step2.png)
![Voorbeeld van een drillthrough - Het tabblad "Country Details" opent, nu gefilterd op basis van Germany](img/01a-drillthrough-sample-step3.png)

## Drillthrough binnen een rapport

Wanneer je een drillthrough binnen een rapport mogelijk wilt maken, moet je de volgende zaken regelen:

1. Er moet een pagina zijn wat het *doel* van je drillthrough is.
   * In het voorbeeld hierboven: de pagina "Country Details"
2. Op deze *doel*pagina moet je een "drillthrough filter" instellen. In het voorbeeld hierboven is dit de naam van het land: wanneer je die ergens in het rapport tegenkomt, kun je in twee klikken naar de drillthrough-pagina navigeren, wat dan automatisch gefilterd is op de betreffende categorie.
   * In het voorbeeld hierboven is het *drillthrough* filter `Country Region Name`.

### Drillthrough instellen in je rapport

* Open het rapport 'startpunt-module-4.pbix'
* Voeg een pagina toe met de naam "Country Details"
* Voeg hierop een *map visual* toe (![Icon of map visual](img/02-map-visual.png)). Configureer deze als volgt:
  * **Location**: **State Province Name** (tabel *Geography*)
  * **Size**: **Internet Total Sales** (tabel *Internet Sales*)
* Voeg nu ook een zgn. "Treemap" toe voor *Internet Total Sales by Product Category Name*:
  * Gebruik hier het veld **Product Category Name** uit de tabel **Product Category**
![Voorbeeld treemap](img/03-treemap.png)
* Klik ergens op het canvas zodat er geen *visual* meer geselecteerd is.
* Onder het kopje **Drillthrough** vind je nu een vakje "Add drillthrough filters here". Sleep hier het veld **Country Region Name** heen (tabel *Geography*)
* Ga terug naar de pagina *Page 2*, en rechtsklik op één van de landen in de grafiek. Als het goed is heb je nu een submenu *Drillthrough* naar de *Country Details*-pagina

Om het af te maken, kun je nu de **Country Details** pagina verbergen (rechtsklik op de tab, kies **Hide Page**). Publiceer de pagina naar een workspace, publiceer deze als app, en bekijk het resultaten in de app.

Probeer nu zelf een tweede drillthrough-pagina "Product Category Details" aan te maken waarbij je alle gegevens binnen een productcategorie op een rij zet. Filter op basis van het veld **Product Subcategory Name** (tabel *Product Subcategory*). Geef de volgende zaken weer:

*Bij elk punt staat wat extra uitdaging - deze hoef je niet uit te voeren. Mocht alles je echter gemakkelijk afgaan en je wilt wat meer de grenzen van Power BI opzoeken, dan kun je je hier even in vastbijten*

1. Verkopen per man / vrouw / getrouwd / ongetrouwd
   * Extra uitdaging: voeg bijbehorende titels toe binnen de visual ("Married men", "Single men", etc.)
2. Verkopen per productkleur
   * Eerste extra uitdaging: geef alleen de 5 bestverkopende kleuren weer
   * Tweede extra uitdaging: laat de kleur bepaald worden door de productkleur
3. Internet Total Sales per jaar
4. Internet Total Units per jaar

![Voorbeeld resultaat opdracht](img/05-drillthrough-within-report-final.png)

Wanneer je drillthrough pagina correct werkt, zou je vanaf pagina "Product Sales" nu een drillthrough moeten kunnen maken naar "Product Category Details"

## Drillthrough tussen meerdere rapporten

*Drillthrough* is ook mogelijk tussen meerdere rapporten. Op deze manier kun meerdere rapporten binnen je workspace gebruik maken van de drillthrough-functionaliteit in jouw rapport.

In de video [http://bit.ly/pbi-drillthrough](http://bit.ly/pbi-drillthrough) legt Patrick LeBlanc uit hoe dit werkt. Bekijk de video, en probeer vervolgens een drillthrough tussen meerdere rapporten als volgt werkend te krijgen. (Het bekijken van de video is niet strikt noodzakelijk - alle stappen staan hieronder - maar helpt je wel om het concept helder te krijgen)

* Het rapport waar we tot nu toe mee werkten is de *source* (deze heeft het overzicht, hier moet alles vandaan komen).
* Maak een nieuw rapport dat verbinding maakt met de dataset AdventureWorks in je eigen workspace

Maak in dit rapport een drillthrough filter per **Year** (tabel *Date*, in de hierarchy *Calendar*). Let erop dat je hier instelt dat je **Year** gebruiken moet als *categorie*:

![Use calendar year as drillthrough per category](img/04-calendar-year-drillthrough-as-category.png)

Je kunt vervolgens in het lijstje onder deze instelling een jaar kiezen dat je *nu* wilt weergeven (feitelijk filter je de data op "alleen de data van jaar X"). Zodra je via een *drillthrough* op dit rapport belandt, wordt dit filter vervangen door het jaartal waarmee je de drillthrough uitvoert. Het toevoegen van dit filter geeft je echter een beter gevoel over hoe de cijfers eruit zou zien bij een drillthrough van (bijvoorbeeld) 2012.

Vul vervolgens het rapport met inzichten over een jaar:

1. Het verloop van verkopen door het jaar heen (let op dat deze correct gesorteerd is)
2. De verhouding tussen de verkopen t.o.v. een kwartaal geleden

Stel vervolgens de drillthrough reporting in:

* In het **bron-rapport** (waar de drillthrough vandaan komt)
  * **File** -> **Options and settings** -> **Options**
  * Onder **Current file**, open **Report settings**
  * Zet het vinkje bij **Allow visuals in this report to use drillthrough targets from other reports**  
![Enable cross report drillthrough in source report](img/06-enable-cross-report-drillthrough-source.png)
* In het **doel-rapport** (waar de drillthrough naartoe gaat):
  * Zet het vinkje **Cross-report** bij je **Drillthrough filter**  
![Enable cross report drillthrough in target report](img/07-enable-cross-report-drillthrough-target.png)

Publiceer het rapport, en test of de drillthrough over rapporten heen werkt in de Power BI Portal.

## Bonus-opgaven

### Aanpassen drillthrough-naam

Standaard heeft de drillthrough de naam `Page1 [naam-van-oorspong-rapport]`. Zorg ervoor dat hier een zinnige naam komt te staan, die de lading dekt.

![Deze beschrijving kan beter...](img/09-onzinnige-naam.png)

## Volgende modules

Dit was de laatste module van deze week! Volgende week gaan we verder met het zelf inladen en modelleren van data.

1. [Introductie Power BI Desktop](../01-introduction/01-introduction-powerbi-desktop.md) (huidige module)
2. [Rapporteren op kubus-data en eerste visualisatie](../02-reporting-on-cube-data/02-reporting-on-cube-data.md)
3. [Visuals en interactie](../03-visuals-and-interaction/03-visuals-and-interaction.md)
4. [Drillthrough](../04-drillthrough/04-drillthrough.md)
