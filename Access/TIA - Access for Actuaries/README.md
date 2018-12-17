## Technical Skills Course – MS Access Project
*Completed by Junho Lee, Assigned by TIA*

“Imagine you work as an Actuary for an electronics company. You have been asked to analyze the company’s data and help make sound business decisions. Specifically, your employer sells warranties on a variety of their products such as phones, microwaves, computers, cameras, etc. If a customer buys a warranty for their purchase and it actually break down in the future, this results in a warranty claim where your company will need to provide reimbursement back to the customer.”

*The goal here is to try to arrive at the same answers as you did in the Basic Excel course, but using Microsoft Access really in an effort to reconcile your work.*

##### Task #1: Import tables in MS Access

Within the Excel File, the goal is to make three text files so you can import the files into MS Access. Make a tab delimited text file for each of the three tabs: WarrantySales,
WarrantyClaims, and Sales5Years. When importing into MS Access, make sure “tbl” is at the front of the name. For example, tblWarrantySales.
Next you want to create a new MS Access database to store your data. Alternatively to the tab delimited text file method, you can import the Excel tabs by selecting External Data-> Click the Excel tab -> then import each Excel tab.

Next, you need a Warranty Price table. It is your job to create a table that makes sense that includes the item, brand, and 1 year warranty sales price from the tab Warranty Sales Range G1:I17. Create your table in Excel then bring it over as a tab delimited text file namedtblPrice.

##### Task #2: Merge Pricing Data to the Warranty Sales Data
Create a query that merges the tblWarrantySales with tblPrice. Think about what the merge would look like. Hint: you can create a join on two variables.

##### Task #3: Create a query to describe the Warranty Claims Table
Create a query against the tblWarrantyClaims table. Use your techniques of grouping and different functions within an MS Access query. Answer the following questions:
1. Sum up WarrantyClaims ($) by Brand
2. Sum up WarrantyClaims ($) by Item
3. Sum up total WarrantyClaims ($) for the year
4. Count how many Warranties Sold by Brand
5. Count number of Warranty Claims by Brand
6. If you had a warranty claim, what was the average claim amount?

##### Task #4: Generate various MS Access query Pivot Table views off the Warranty Sales 5 Years data
Go to the Microsoft Excel workbook and look at the Warranty Sales 5 YR tab. Fill in each of the following tables but using Microsoft Access. The goal of this task is to create pivot table views off of the table tblSales5Years within Microsoft Access.

Answer the following questions.
1. What is the total warranty revenue by brand and by year.
2. What is the count of warranties sold by brand and by year.
3. What is the total Warranty revenue by item and by year.
4. What is the count of warranties sold by item and by year.

##### Task #5: Run a Pivot Table in MS Excel off of the MS Access Warranty Sales 5 Years data table

The goal of this task is the run a MS Excel Pivot Table off of the tblSales5Years table that lives in MS Access. Open up a new Excel workbook and answer the following questions based on your
Excel Pivot Table.

1. For every Sales year, what percentage of the warranties sold was from the Generic vs. the Plus brand in terms of revenue dollars.
2. For every Sales year, what percentage of the warranties sold was from the Generic vs. the Plus brand in terms of warranty counts.
3. For every Sales year, what percentage of the warranties sold was from each of the different Items in terms of revenue dollars.
4. For every Sales year, what percentage of the warranties sold was from each of the different Items in terms of warranty counts.


##### Task #6: Create a User Form for another employee to enter in Claims Data for 2013
The goal of this task is to create a User Form for Claims that come in for 2013. Make a copy of the table tblWarrantyClaims and name it tblWarrantyClaims2013. Copy over the structure only which means just the column headers. Now create a User Form so someone can enter data into this 2013 table.
