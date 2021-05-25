# Rapporteren op de kubus: Power BI als rapportageschil

Power BI kan als volledige "self-service" tool gebruikt worden, maar ook inprikken op bestaande "kubussen".

> ### Wat is een kubus
>
> Een kubus is een analytische database (ook wel een *OLAP*-database genoemd), waarin een datamodel klaar staat voor analyse. Allerlei logica kan vooraf ingebouwd worden, zodat je door een paar klikken nieuwe vragen kunt stellen. Een paar termen die hier veel bij voorkomen:
>
> * **Measures** (ook wel metingen of meetwaarden) zijn de cijfers die je wilt analyseren.
>   * Vaak zijn dit eenvoudige, logisch optelbare waarden (zoals "aantal verkochte schroefjes")
>   * Een kubus maakt het echter ook mogelijk om meer geavanceerde measures vorm te geven, bijvoorbeeld:
>     * Percentage van budget
>     * Aantal schroefjes in magazijn
>     * Aantal verkochte schroefjes in het jaar, opgeteld tot aan de weergegeven datum
>   * Door een kubus goed te definiëren, kun je ervoor zorgen dat ook ingewikkelde measures correct te berekenen langs allerlei *dimensies*.
> * **Dimensies** zijn de "assen" waarlangs je de metingen uitsplitst
>   * In de vraagstelling hoor je vaak *per*:
>     * Aantal verkopen *per jaar*
>     * Aantal geweldsdelicten *per stadsdeel* *per maand*
>     * Hoeveelheid huisvuil *per straat*
>   * Deze *per* definities zijn meestal dimensies:
>     * Stadsdeel
>     * Periode (maand/jaar/datum)
>     * Productcategorie
>     * etc.
>
> Vaak zijn kubussen alleen voorgedefinieerd voor veelgebruikte rapportages en analyses. Je kunt echter ook Power BI zélf zo'n analytisch datamodel vormgeven. Het heet dan officieel geen kubus, maar kan wel dezelfde functionaliteiten bevatten

In deze module gebruiken we een Power BI dataset: dit werkt hetzelfde als de eerder benoemde "kubus", en bevat alle logica om slim mee te kkunnen rapporteren.

## Voorbereiding

Voordat we met deze dataset van start kunnen, moet je de dataset op jouw eigen Power BI-omgeving klaarzetten. Neem daarvoor de volgende stappen:

1. Open het bestand [AdventureWorks.pbix](https://github.com/vstrien/powerbi-training/raw/leertraject-powerbi/02-reporting-on-cube-data/AdventureWorks.pbix)
1. Klik op de knop **Publish**  
   ![Klik op de Publish-knop](img/00-prep-publishdataset.png)  
   Het venster **Publish to Power BI** opent zich nu, en vraagt je om een *workspace* te selecteren om je publicatie in te doen.
1. Kies hier voor **My workspace**, en klik op **Select**:  
   ![Kies voor My Workspace](img/00-01-select-my-workspace.png)  
   Als het goed is verschijnt er een groen vinkje en de tekst **Success!**
1. Sluit het venster door op de knop **Got it** te klikken
1. Sluit het Power BI venster

## Verbinding maken met de Power BI Dataset

Je hebt zojuist een Power BI dataset voor jezelf klaargezet. Dit was een stukje voorbereiding dat we nu zelf moesten doen, maar normaal gesproken kan dit ook door iemand anders gebeuren. Bijvoorbeeld door iemand uit een Business Intelligence- of Data Engineering-team, die data heeft klaargezet die breed gebruikt wordt op diverse plekken in de organisatie.

6. Open **Power BI Desktop**
6. Maak verbinding met een **Power BI Dataset**:
   * Klik op het pijltje onder "Get Data"
   * Kies **Power BI Datasets**
   * Kies het model **AdventureWorks**
   * Klik op **Create**

![Selecteer dataset AdventureWorks](img/SelectModelFromPBI.png)

> ## De casus
>
> In deze cursus kijken we naar een fictief bedrijf dat Microsoft vaak gebruikt als voorbeeld in haar cursussen: **AdventureWorks**.
>
> AdventureWorks verkoopt fietsen en fietsonderdelen - zowel direct aan klanten als via distributeurs. Ze hebben een kantoor in Nederland, en verkopen fietsen in de V.S., Duitsland en Spanje - zowel via de diverse distributeurs als direct via de website aan klanten.

## Eerste visualisatie

Doordat we ingeprikt hebben op een bestaande dataset, kunnen we gebruikmaken van kwalitatief hoogstaande data. Deze is al gecontroleerd op missende waarden, inconsistentie en andere zaken waar we vaak tegenaan lopen wanneer we zelf data inladen. Ook is in het datamodel aangegeven hoe de verschillende relaties tussen de tabellen liggen, en zijn er meestal *measures* aangemaakt waarin berekeningen "klaarstaan" die voor onszelf vaak lastiger zijn. We kunnen dus eenvoudig data uit meerdere tabellen combineren - de dataset zorgt voor de juiste interacties.

In deze eerste verkenning gaan we data van AdventureWorks bekijken. Specifiek kijken we naar de **Internet Total Sales** (het totaalbedrag aan verkopen via internet) en de **Internet Total Tax amt** (de hoeveelheid belasting die ze afdragen via internetverkopen). Om een gevoel te krijgen hoe de data eruit ziet, maken we hier enkele doorsnijdingen mee.

We gaan nu twee Power BI visualisaties maken:

* Internet Total Sales per Country Region Name
* Internet Total Tax amt per Total Children

### Internet Total Sales per Country Region Name

Deze is redelijk eenvoudig:

8. Zoek in het **Fields** pane via de zoekbox de *measure* **Internet Total Sales**. Klik deze aan.  
   ![Search box for fields in Power BI](img/internet-total-sales-searchbox.png)
9. Zoek nu naar "Country", en vink **Country Region Name** aan.

Zoals je ziet, gaat deze grafiek eigenlijk automatisch goed. En hoewel de kubus erg groot kan zijn, kun je eenvoudig zoeken in de lijst met velden.

### Internet Total Tax per Total Children

10. Probeer nu stappen 8 en 9 opnieuw uit te voeren, maar maak deze keer de grafiek te maken voor **Internet Total Tax Amt** en **Total Children** (de laatste is een eigenschap van een klant)

![Total Children verkeerd weergegeven](img/01-total-children-wrong.png)

Omdat *Total Children* een numerieke waarde is, maakt Power BI hier automatisch een zogenaamde *measure* van: een meetwaarde die optelbaar is. Je ziet dus de som van alle kinderen van alle klanten nu weergegeven naast de betaalde belasting. Wanneer je het sigma-teken &Sigma; ziet staan voor een veld, is dit een indicatie dat Power BI het als *measure* kan gebruiken (hoewel de kubus het niet expliciet als *measure* heeft aangeboden!)

![Het sigma-teken duidt een *measure* aan](img/01b-measure-sign.png)

11. Zorg er nu voor dat de grafiek die je zojuist gemaakt hebt geselecteerd is.
12. Verplaats nu in de **Eigenschappen** van de grafiek (onder de **visualizations** pane) het veld **Total Children** van het kopje **Value** naar **Axis**.

![Total Children veld naar juiste plek brengen](img/02-total-children-to-axis.png)

Hiermee geven we aan dat "Total Children" niet een veld is dat we willen optellen, maar dat we op de as willen zetten, om erlangs uit te splitsen. Het resultaat is nu als volgt:

![Total Children correct weergegeven](img/03-total-children-correct.png)

Stel dat we nu een extra uitsplitsing zouden willen doen naar het aantal kinderen dat nog thuis is (*Number of Children at Home*), dan zien we in de fields-lijst ook hier een sigma-teken voor staan. 

![Implicit Measure voor children at home](img/04-sigma-children-at-home.png)
We kunnen er echter ook expliciet aangeven hoe Power BI dit veld toevoegt aan een grafiek:

13. Zorg er nu voor dat de grafiek die je zojuist gemaakt hebt geselecteerd is.
14. Sleep het veld **Number of Children at Home** vanuit de **Fields** lijst naar het kopje **Legend**

![Sleep Number of Children at Home direct naar Legend](img/05-sleep-children-at-home.png)

15. *Resize* de grafiek zodat deze netjes wordt weergegeven:

![Children at Home - resultaat](img/06-children-at-home-correct.png)

## Interactie tussen grafieken

Klik op één van de landen in de eerste grafiek. Zoals je ziet verandert de andere grafiek mee.

![Interactie tussen grafieken](img/07-interactie-tussen-grafieken.png)

## Hands-on: rapportage maken

Aangezien Power BI nieuw is binnen Adventure Works, is je leidinggevende bijzonder benieuwd wat er allemaal mee mogelijk is. Hij heeft onder andere veel gehoord over de geografische weergaves die er standaard in aanwezig zijn, en heeft jou gevraagd eens één en ander mee uit te proberen.

Hieronder staan op een iets hoger niveau de stappen om een rapport te maken. Dit is bewust (zodat je ervaring met de tool vergroot wordt) - maar tegelijkertijd is het heel normaal dat je ergens niet uitkomt. Dan helpt het niet om lang te zitten tobben - vraag gerust om hulp!

16. Maak een nieuwe pagina, genaamd 'Product Sales'
16. Schakel naar deze nieuwe pagina
16. Maak een grafiek waarin je de **Internet Total Sales** uitzet tegenover *Product Subcategory Name** (*neem deze uit de dimensie Product Subcategory*!)
16. Selecteer deze grafiek.
16. Verander de **Filter on this visual** voor **Product Subcategory Name** in een **Top N** filter

![Top N filtering](img/08-top-n-filter.png)

21. Filter deze op de top 6, sleep het veld "**Internet Total Sales** naar het kopje **by value**.
21. Klik **Apply filter**
21. Probeer nu zelf een **map visual** toe te voegen (dit is het "witte" wereldbolletje onder **Visualizations**). Zet hierin de **Country Region Name** uit tegen **Internet Total Sales**. Maak de grafiek vervolgens breed genoeg zodat alle landen waar verkocht wordt duidelijk zichtbaar zijn.
21. Voeg nu een tabel toe met de volgende daarin de volgende velden:
    * **Country Region Name**
    * **State Province Name**
    * **City**
    * **Internet Total Sales**
    * **Internet Total Margin**
21. Plaats de tabel en kaart direct onder elkaar, en maak ze exact even breed.
21. Voeg nu een titel toe aan de pagina, door een **Text box** te kiezen uit de **Home** ribbon. Maak deze tekst groter (bijv. 32), en vul de tekst **Product Sales** in. Plaats deze volledig linksbovenin het rapport
21. Voeg drie **Card** visuals toe, voor de volgende velden:
    * **Internet Total Sales**
    * **Internet Total Margin**
    * **Internet Total Units**

> Om te ontdekken wat een **Card** visual is, zul je de namen van de tooltips moeten verkennen. De naam van een visual wordt weergegeven als *tooltip* wanneer je de cursor er enige tijd op laat rusten:
> 
> ![Voorbeeld van een tooltip](img/08b-tooltip.png)

28. Zet de drie **Card** visuals strak naast elkaar direct onder de titel. Verklein de tekst indien nodig.
28. Maak de pagina af met een willekeurig bedrijfslogo rechtsbovenin (je kunt hier bijvoorbeeld het AdventureWorks-logo opzoeken, of je eigen bedrijfslogo)

Het eindresultaat kan er bijvoorbeeld als volgt uit zien:

![Eindresultaat eerste rapport](img/09-eindresultaat-eerste-rapport.png)

## Volgende modules

De volgende module is [Module 3: Visuals en interactie](../03-visuals-and-interaction/03-visuals-and-interaction.md). Hieronder vind je een overzicht van alle modules:

### Week 1

1. [Introductie Power BI Desktop](../01-introduction/01-introduction-powerbi-desktop.md)
2. [Rapporteren op kubus-data en eerste visualisatie](../02-reporting-on-cube-data/02-reporting-on-cube-data.md) (huidige module)
3. [Visuals en interactie](../03-visuals-and-interaction/03-visuals-and-interaction.md)
4. [Drillthrough](../04-drillthrough/04-drillthrough.md)

### Week 2

5. Self-service reporting
   * [CSV-bestanden inladen](../06-self-service-reporting/06-csv-inladen.md)
   * [SQL data inladen](../06-self-service-reporting/07-sql-inladen.md)
6. Data Modeling 101
   * [Relaties](../07-data-modeling-101/08-relaties.md)
   * [Opschonen van je datamodel](../07-data-modeling-101/09-opschonen.md)
7. [Introductie Power Query (GUI)](../08-power-query-gui/11-power-query.md)

### Week 3

8. [Publiceren en samenwerken in workspaces](../09-publishing-and-collaboration-in-workspaces/05-publishing-and-collaboration-in-workspaces.md)
