# Publiceren en samenwerken in workspaces

## Publiceren van rapporten

Wanneer je een rapport *publiceert*, komt deze in de online Power BI portal te staan. Deze kun je vinden op [https://app.powerbi.com](https://app.powerbi.com).

* Open het Power BI template-rapport [**startpunt-module-8.pbit**](https://github.com/vstrien/powerbi-training/raw/master/08-publishing-and-collaboration-in-workspaces/startpunt-module-8.pbit)


De dataset die oorspronkelijk bij het rapport hoorde kun je niet direct benaderen. Daarom krijg je de foutmelding **Unable to connect**

![Unable to connect](https://github.com/vstrien/powerbi-training/raw/master/08-publishing-and-collaboration-in-workspaces/img/00-unable-to-connect.png)

* Klik op **Edit**
* Selecteer de **AdventureWorks** dataset uit je eigen workspace, en klik op **Create**

![Kies AdventureWorks](https://github.com/vstrien/powerbi-training/raw/master/08-publishing-and-collaboration-in-workspaces/img/SelectModelFromPBI.png)

* Sla je rapport op in de map waar je de cursusbestanden bewaart. Geef het de naam "Module 8"
* Onder de **Home** ribbon, klik op **Publish**
* In het venster **Publish to Power BI**, selecteer je **My workspace**. Dit is je eigen privé-omgeving binnen de Power BI-portal, en de plek waar we initieel een rapport gaan plaatsen.

![Select My Workspace](img/00-01-select-my-workspace.png)

Nadat het rapport geüploadet is, krijg je van Power BI een directe link naar het rapport. Klik op de link *Open 'Module 8.pbix' in Power BI* om het rapport weer te geven.

Zoals je ziet, kun je het rapport nu vanuit een webbrowser bekijken en gebruiken.

## Dashboards

In de online omgeving van Power BI heb je naast rapporten ook *dashboards* tot je beschikking. Dit zijn door jou samengestelde verzamelingen van diverse *visuals* uit de rapporten die je gepubliceerd hebt. Volg de volgende stappen om een dashboard samen te stellen:

* Met het rapport **Module 8** geopend op de tab **Page 2**, wijs je met de muis naar **Internet Total Sales by Year**
* Klik op het icoontje van een pin dat onder of boven de grafiek verschijnt (dit is afhankelijk van je browser en schermresolutie):

![Pin visual icon](img/01-pin-visual.png)

Power BI vraagt je vervolgens om een dashboard waar hij deze visual kan "vastpinnen". Wanneer je nog geen dashboards hebt, kun je hier enkel *Nieuw dashboard* kiezen.

* Kies **New dashboard**, geef deze de naam **Mijn Dashboard**
* Klik op **Pin**


![Pin visual to new dashboard](img/02-pin-to-new-dashboard.png)

* Schakel nu naar het tabblad **Product Sales**. Selecteer hier op de kaart de regio Australië.
* **Pin** nu de grafiek **Internet Total Sales per Product Subcategory Name** aan het zojuist aangemaakte dashboard.

![Pin visual to existing dashboard](img/02-pin-to-existing-dashboard.png)

* Open nu **My Workspace** (*Mijn werkruimte*)
* In je lijst met inhoud staat **Mijn Dashboard**. Klik hierop.

Zoals je ziet, worden de visuals weergegeven op de manier waarop je ze in het rapport zag op het moment dat je ze vastpinde. De **Internet Total Sales per product subcategory name** heeft dus een gefilterde weergave. De inhoud wordt echter wel bijgewerkt wanneer de achterliggende data wijzigt.

Het dashboard bestaat uit zogenaamde "tiles" of "tegels". Dit zijn niet alleen de visuals, maar ook andere tegels die je kunt toevoegen. Bijvoorbeeld via de knop "Tegel toevoegen"in het menu "Bewerken":

![Tiles](img/03-tiles.png)

* Probeer nu het dashboard af te maken zodat het er als volgt uitziet.
* De URL van het plaatje dat hier gebruikt is, is [http://www.slate.com/content/dam/slate/blogs/future_tense/2015/09/01/google_s_new_animated_logo_is_the_future_of_mobile_branding/google_logo.gif.CROP.original-original.gif](http://www.slate.com/content/dam/slate/blogs/future_tense/2015/09/01/google_s_new_animated_logo_is_the_future_of_mobile_branding/google_logo.gif.CROP.original-original.gif).

![Dashboard finish](img/04-dashboard-finish.gif)

## Aanmaken van workspaces

Om samen aan rapporten te kunnen werken, kun je in de Power BI portal zogenaamde "workspaces" of "werkruimten" maken.

* Klik op "Workspaces"
* Klik "Create a workspace"

> Wanneer je gebruik maakt van de gratis versie van Power BI, krijg je hier waarschijnlijk een venster **Upgrade to Power BI Pro**. Kies hier voor **Try Pro for free** - je kunt dan 60 dagen lang gebruik maken van de features van Power BI Pro.

* Geef de werkruimte een creatieve naam

In de werkruimte kun je ook collega's toevoegen om je werk te delen. Dit is enigszins vergelijkbaar met hoe Office 365-groepen werken. In het verleden was elke Power BI-groep ook automatisch een Office 365-groep - sinds april 2019 is dit echter verleden tijd en worden Power BI groepen apart beheerd binnen de Power BI portal.

## Uploaden en downloaden binnen een workspace

We gaan nu Power BI-rapporten uploaden en delen. Wanneer je geen collega's hebt die Power BI gebruiken of deze Power BI training volgen, kun je ook zelf collega "spelen". Om het doeleinde (en de herkomst) van deze rapporten overduidelijk te maken, geven we ze eerst een andere naam. Dit hoef je in je dagelijks werk uiteraard niet te doen, maar is voor de training wel zo handig:

* Open Power BI Desktop
* Sla het bestand 'Module 8' op onder een andere naam (bijvoorbeeld iets "Power BI training Wortell Smart" en je eigen naam erin).
* Publiceer het bestand naar de werkruimte die je zojuist hebt aangemaakt  
![Publiceer naar de werkruimte](img/04b-publish-to-workspace.png)
* Probeer of je enkele collega's kunt toevoegen aan je werkruimte, en kijk of jij in een werkruimte van een collega kunt meekijken.
  * Het zou kunnen dat je Power BI opnieuw moet opstarten, voordat Power BI je (zojuist aangemaakte) Pro-trial herkent. Deze licentie heb je nodig om te mogen publiceren naar een *workspace*.
* Vraag een collega om een rapport van jou te downloaden, wat mooie aanpassingen te doen, en het opnieuw te publiceren naar jouw werkruimte. Kijk zelf mee wat er gebeurt.

> Wat je zojuist gedaan hebt, is het **samenwerken** - dit is voor de "achterkant" van Power BI: de mensen die je rechten wilt geven om jouw rapporten te bewerken, voeg je hier toe. Samen met hen ben je dan verantwoordelijk voor het *bouwen* van rapporten.

## Publiceren van een "App"

De samenwerkingsmogelijkheden in workspaces zijn gericht op rapport-ontwikkelaars. Het is echter niet handig om deze direct met alle eindgebruikers te delen:

* Workspaces zijn niet al te (eind)gebruiksvriendelijk: je moet eerst naar een "workspace", om daar het juiste rapport aan te klikken.
* Workspaces zijn ook niet heel handig wanneer je (als eindgebruiker) veel rapporten afneemt van diverse teams: dan zou je alle workspaces van die teams door moeten op zoek naar de rapporten die je nodig hebt
* Delen met een eindgebruiker via een workspace beperkt je als rapport-eigenaar / -ontwikkelaar in je mogelijkheden: als je een nieuwe pagina aan het ontwikkelen bent (waarvan de data wellicht nog niet 100% correct is), ziet de eindgebruiker direct alle wijzigingen.

Om op een nette, eenvoudige en stabiele manier rapporten met eindgebruikers te delen heeft Microsoft de zogenaamde "Power BI Apps" gemaakt. Dit houdt in dat je als rapport-eigenaar een rapport kunt *publiceren* als ware het een "app", waarna de eindgebruiker *binnen de Power BI portal* deze weer kan "ophalen". Globaal ziet dat er als volgt uit:

1. Je werkt met collega's aan een rapport in een werkruimte
2. Je bereikt een "stabiele versie" die je wilt gaan delen met je eindgebruikers
3. *Je publiceert nu de werkruimte als een "app"*
4. Je kunt nu doorgaan met ontwikkelen in de werkruimte: dit heeft geen invloed op de "gepubliceerde" app.
5. De eindgebruiker haalt de app op, en doet analyses
6. Zodra je een nieuwe(re) versie van een rapport wilt publiceren, publiceer je de app opnieuw. De eindgebruiker krijgt nu automatisch de nieuwste versie van het rapport.

* Open nu de werkruimte die je eerder hebt aangemaakt
* Rechtsklik bovenin op de knop "App maken"

![Publish app button](img/05-publish-app.png)

* Voer een beschrijving in van de app
* Schakel naar het tabblad **Navigation**
  * Zoals je ziet, staat er momenteel slechts één rapport in deze workspace. Wanneer dit er meer waren zijn, kun je hier een eenvoudige navigatie toevoegen.
* Schakel naar het tabblad **Permissions**
* Wijs één of meer collega's binnen de cursus aan die jouw "app" mogen gaan gebruiken.
* Publiceer de app

### Gebruikmaken van een gepubliceerde app

* Schakel nu naar het onderdeel **Apps** in het menu aan de linkerzijde van de Power BI Portal

Dit is de weergave voor de gebruikers van Power BI apps. Als je een app publiceert, ben je zelf automatisch ook gebruiker, zodat je goed kunt zien hoe de app er voor je eindgebruikers uit zou zien.

* Selecteer de gele knop "Get apps" (in het Nederlands is deze knop een beetje gek vertaald met "Apps downloaden")

![Get apps NL](img/06-get-apps.png)

* Selecteer in het venster de app die je zojuist hebt toegevoegd door op de blauwe tekst "Get it now" / "Nu downloaden" te klikken.
* Je app is nu toegevoegd aan het menu met Apps.
* Klik op een app om het achterliggende rapport automatisch te openen
* Probeer ook enkele apps van collega's te openen

Zoals hierboven verteld, zijn de wijzigingen die je in de workspace maakt niet zichtbaar voor eindgebruikers zolang je de app niet publiceert.

Test dit:

* Maak wat wijzigingen in je rapport
* Publiceer het opnieuw naar je eigen workspace
* Kijk bij jezelf en/of bij een collega die de app gebruikt of de wijzigingen inderdaad verborgen blijven
* Publiceer de app workspace
* Controleer of de wijzigingen inderdaad doorkomen

## Oplossing

Deze opdracht is volledig in Power BI Service en beschikt daarom niet over een oplossing bestand.

## Video

Hier vind je de [Walkthrough video](https://vimeo.com/584747443/076f2c2845)

## Volgende modules

De volgende module is [Module 9: Calculated Columns met DAX](../09-dax/11-calc-columns.md).

Hieronder vind je een overzicht van alle modules:

1. [Introductie Power BI Desktop](../01-introduction/01-introduction-powerbi-desktop.md)
2. [Rapporteren op Power BI Datasets en eerste visualisatie](../02-reporting-on-dataset/02-reporting-on-dataset.md)
3. [Visuals en interactie](../03-visuals-and-interaction/03-visuals-and-interaction.md)
4. [Drillthrough](../04-drillthrough/04-drillthrough.md)
5. Self-service reporting
   * [CSV-bestanden inladen](../05-self-service-reporting/05-csv-inladen.md)
   * [SQL data inladen](../05-self-service-reporting/06-sql-inladen.md)
6. Data Modeling 101
   * [Relaties](../06-data-modeling-101/07-relaties.md)
   * [Opschonen van je datamodel](../06-data-modeling-101/08-opschonen.md)
7. [Introductie Power Query (GUI)](../07-power-query-gui/09-power-query.md)
8. [Publiceren en samenwerken in workspaces](../08-publishing-and-collaboration-in-workspaces/10-publishing-and-collaboration-in-workspaces.md) (huidige module)
9. [Calculated Columns met DAX](../09-dax/11-calc-columns.md)
