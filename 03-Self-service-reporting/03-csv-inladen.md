# CSV-data inladen, introductie Power Query en eerste visualisatie

In deze module laden we CSV-data in. Omdat CSV-data niet bijzonder scherp gedefinieerd is qua inhoud, kun je hier soms tegen uitdagingen aanlopen. We kijken daarom alvast een klein beetje naar Power Query om deze uitdagingen het hoofd te bieden. Ten slotte maken we een eerste visualisatie

## Voorbereiding

Start Power BI Desktop met een nieuw, leeg rapport zonder verbinding naar een kubus.

## CSV-Data inladen

Importeer een CSV-bestand via "Get Data" -> "Text/CSV"

![Get data](img/importeer-csv.png)

Importeer het bestand ["2014-01.csv"](csv/2014-01.csv) uit de map "csv".

## Culture van een CSV-berstand

Afhankelijk van de regio-instellingen van je Windows-installatie (de _culture_) gaat Power BI (net als bijv. Excel) anders met punten en komma's om:

* In Nederland gebruiken we een decimale komma, en een punt als duizendtalscheiding (dus hebben we het over € 1.000,00)
* In de V.S. (waar AdventureWorks zit) wordt een decimale punt gebruikt, en een komma als duizendtalscheiding (dus schrijf je $ 1,000.00)

In het screenshot hieronder zie je een dergelijke "misinterpretatie": de TotalDue van een bepaalde verkoop staat op "263243267":

![Preview import 2014-01](img/2014-01.png)

Wanneer je de inhoud van ["2014-01.csv"](csv/2014-01.csv) bekijkt, zie je dat dit eigenlijk kommagetal had moeten zijn:

![Werkelijke waarde regel 1 2014-01](img/2014-01-csv.png)

Klik in het preview-venster daarom niet op *Load* maar op *Edit*. Er opent zich nu een nieuw venster - de Power Query Editor.

## Power Query Editor

Power Query is de "ETL" van Power BI: hierin kun je allerhande bestandstypen inladen, en volgens een dataflow inladen.

> Aan de achterzijde van Power Query zit een functionele programmeertaal ("Power Query Language, informally known as M") waarmee je bijzonder krachtig dataflows kunt inrichten om data te laden in je Power BI model. **Je hoeft deze programmeertaal zelden te gebruiken**. Veruit de meeste bewerkingen op je data kun je heel goed via de Ribbon doen (of via een rechtsklik op een kolom, waarmee je ook acties te zien krijgt). Eén van de uitzonderingen waar je wél de query taal nodig hebt is bij het inladen van data met een andere *culture*.

Later gaan we dieper in op Power Query - voor nu behandelen we alleen wat er nodig is om Power Query te kunnen gebruiken:

![Power Query venster - de basics](img/power-query-venster-basics.png)

1. Aan de linkerzijde zie je alle *queries*. Elke tabel die in het datamodel van Power BI opgeslagen staat heeft minimaal één query aan de achterzijde. Momenteel zie je dus één query met de naam '2014-01'.
2. Van de geselecteerde query zie je aan de rechterzijde de *query settings*. Hier zie je twee componenten
   * De naam (dus "2014-01")
   * De *Applied steps*. Dit is vergelijkbaar met een dataflow, en heeft een één-op-één relatie met een achterliggend stuk code
3. De *Advanced Editor* geeft toegang tot de code die de dataflow definieert.

* Klik op onder "Applied Steps" achtereenvolgens op "Source", "Promoted Headers" en "Changed Type". In welke stap verdwijnt de decimale punt?
* Open de "Advanced Editor" en bekijk de code. Herken je de stappen uit de dataflow?

![Advanced Power Query Editor](img/advanced-editor.png)

De stap waarin de decimale punt verloren gaat, is de stap met de naam `Changed Type`. Omdat hier een spatie in staat wordt deze in Power Query-taal weergegeven als `#"Changed Type"`. De uitvoer van deze stap is als volgt gedefinieerd:

```OCaml
#"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"TotalDue", type number}, {"SubTotal", type number}, {"TaxAmt", type number}, {"Freight", type number}, {"ProductID", Int64.Type}, {"StoreID", Int64.Type}, {"TerritoryID", Int64.Type}, {"OrderDate", type datetime}})
```

* In [de documentatie van Power Query language over Table.TransformColumnType](https://docs.microsoft.com/en-us/powerquery-m/table-transformcolumntypes) staat beschreven hoe je de culture aanpast. Doe dit om ervoor te zorgen dat de decimale punten correct worden geïmplementeerd.
* Als de cijfers in TotalDue, SubTotal, TaxAmt en Freight correct worden weergegeven (dus inclusief cijfers achter de komma), klik je op "Close & Apply" linksbovenin het Power Query venster

![Close and Apply Power Query venster](img/power-query-close.png)

## Volgende modules

Binnen deze module over Self-service reporting is de volgende les [SQL data inladen](../03-Self-service-reporting/04-sql-inladen.md). Hieronder vind je een overzicht van alle modules:

1. [Introductie Power BI Desktop](../01-Introduction/01-introductie-powerbi-desktop.md)
2. [Rapporteren op kubus-data en eerste visualisatie](../02-Reporting-on-Cube-Data/02-reporting-on-cube-data.md)
3. Self-service reporting
   * [CSV-bestanden inladen](../03-Self-service-reporting/03-csv-inladen.md) (huidige module)
   * [SQL data inladen](../03-Self-service-reporting/04-sql-inladen.md)
4. Data Modeling 101
   * [Relaties](../04-Data-Modeling-101/04-relaties.md)
   * [Opschonen van je datamodel](../04-Data-Modeling-101/05-opschonen.md)
   * [Verrijken met Calculated Columns](../04-Data-Modeling-101/06-calc-columns.md)
5. [Introductie Power Query (GUI)](../05-Power-Query-GUI/07-power-query.md)