# 09 Calculated Columns in DAX

With *calculated columns* you can have a calculation performed in a column for each row of a table. We saw an example of this in the previous module, where in each row in the product table the corresponding subcategory and category was looked up via the `RELATED` function.

In this module we look at other possibilities of _calculated columns_.

##  Preparation

Let's continue with the report we built on a CSV file.

Alternatively if you didn't complete the previous assignment correctly:

**Open** [08-Start](../08-publishing-and-collaboration-in-workspaces/08-Start.pbit)

You cannot directly access the dataset that originally belonged to the report. That's why you get the error message **Unable to connect**

![Unable to connect](../08-publishing-and-collaboration-in-workspaces/img/00-unable-to-connect.png)

* Click on **Edit**
* Select the **AdventureWorks** dataset from your own workspace, and click on **Create**

![Kies AdventureWorks](../08-publishing-and-collaboration-in-workspaces/img/SelectModelFromPBI.png)
 
## Calculations

When defining _calculated columns_ you can use a whole arsenal of DAX functions. From very advanced (which actually run a new query for every row in the table) to basic functions such as addition and subtraction.

Below are a few commands - see how far you can solve them with a _calculated column_:

* In the table "Sales" we want a new column with subtotal including taxes
* In the table "Product" we want a new column with an indicator if a product is red in color
* In the "Product" table we want a grouping of _listprice_.
  * Column name: "price_segment_code"
  * _listprice_ = 0 -> _Blank_
  * _listprice_ between 0 and 1000 -> 1
  * _listprice_ between 1000 and 2000 -> 2
  * _listprice_ between 2000 and 3000 -> 3
  * _listprice_ between 3000 and 4000 -> 4
  * Try to get the display to show as an integer in the data model
* In the table "Product" we also want to label the price segment
  * Column name: "price segment"
  * 0: "No money"
  * 1: "Cheap"
  * 2: "Less Cheap"
  * 3: "Duration"
  * 4: "Exorbitant"
* Now when you group the sales by price segment in a visualization, you will see that it is sorted alphabetically:

![Foute sortering](img/prijssegment-sortering-fout.png)

* Make sure this sort is based on the price_segment_code. *No need to use or modify DAX expressions here!*
* Then hide the column "price_segment_code"

![Correcte sortering](img/prijssegment-sortering-goed.png)

## Visual adjustments

After adjusting these definitions and codes, it is time to adjust some things in your report.

* Go back to the *Report* view of Power BI, and add a new page here
* Make sure it will look like this.
   * Tip: you will also have to make some adjustments to the settings of your data model here ...
   * ... but you don't need to add extra DAX expressions, measues or calculated columns

![Doelopmaak rapport](img/screenshot-pbi-doel.png)

## Solution

Here's the endpoint of this lab: [09-Solution](09-Solution.pbix)

## Video

Here is the [Walkthrough video](https://vimeo.com/586426505/dffdaeb522)

## Last module

This was the last module in this course. Want more? [Wortell Smart Learning](https://www.wortellsmartlearning.nl/) also offers various in-depth training courses in the field of Power BI. For more information, visit [https://www.wortellsmartlearning.nl/](https://www.wortellsmartlearning.nl/).

 Below is a complete overview of all available modules:

1. [Introduction Power BI Desktop](../01-introduction/01-introduction-powerbi-desktop.md)
2. [Reporting on a Dataset](../02-reporting-on-dataset/02-reporting-on-dataset.md)
3. [Visuals and interaction](../03-visuals-and-interaction/03-visuals-and-interaction.md)
4. [Drillthrough](../04-drillthrough/04-drillthrough.md)
5. Self-service reporting
   * [Loading CSV files](../05-self-service-reporting/05-csv-inladen.md)
   * [Loading data from SQL Databases](../05-self-service-reporting/06-sql-inladen.md)
6. Data Modeling 101
   * [Relations](../06-data-modeling-101/07-relaties.md)
   * [Cleaning up your Data Model](../06-data-modeling-101/08-opschonen.md)
7. [Introduction to Power Query (GUI)](../07-power-query-gui/09-power-query.md)
8. [Publishing and Collaboration in Workspaces](../08-publishing-and-collaboration-in-workspaces/10-publishing-and-collaboration-in-workspaces.md)
9. [Calculated Columns in DAX](../09-dax/11-calc-columns.md) (current module)
