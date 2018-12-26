## Technical Skills Course – Excel VBA Project

Completed by Junho Lee, assigned by TIA

“Imagine you work as an Actuary for an electronics company. You have been asked to analyze the company’s data and help make sound business decisions. Specifically, your employer sells warranties on a variety of their products such as phones, microwaves, computers, cameras, etc. If a customer buys a warranty for their purchase and it actually break down in the future, this results in a warranty claim where your company will need to provide reimbursement back to the customer.”


##### Task #1: Simulate Monthly Sales for 20 Regions
Go to the tab Summary tab. Your company has sold warranties to 20 different regions. The goal is to simulate the monthly warranty sales for each of the 20 regions. Follow the data format exactly from the tab Region1. You want the tabs Region2 to Region20 to follow this data structure. To simulate a claim for a month, use "=RAND() * 1000". Reconcile with theSummary tab to make sure your macro worked correctly. Row 14 should match Row 15.


##### Task #2: Simulate Sales 50 Times

Go to the tab Distribution. For 2013, you expect to sell 100 warranties. For each item, the probability of Generic is 60% vs. Plus 40%. Likewise, the probability of the different warranty items sold is given in the table starting at A5. Write a macro that simulates 100 items sold where for each item, you lookup the value from the Warranty Price table. Then do this 100 item simulation 50
times. Hint: to determine if an item is generic or plus, first generate a random number (WorksheetFunction.RandBetween(0,100)/100). If the random number is less than or equal to 0.6, the the item simulated is generic, else the random number is above 0.6, so the brand is plus. This is because if a random number falls between 0.6 and 1, that is a 40% probability. Apply this same method to the distribution of sales for the items. Make a graph of your total sales ($) from the 50 simulations run. Calculate the average and standard deviation by using the formula: sqrt(var.p(50 total sales simulations)).

##### Task #3: Function that attaches Price
Go to the tab Warranty Sales – Function. Create a function that takes in two arguments: 1) Item and 2) Brand. Then it spits out the 1-Year Warranty Price Revenue for the item from the table. Call the function WarrantyPrice. Check that your total revenue for 2012 is $28,944.

##### Task #4: Checkout Counter Application

Go to the tab Checkout. An Excel VBA application has been created where the user enters in the quantity of each item by brand (cells B4:C17). Then the total revenue is calculated. Problem is, the macro is not working. Debug the code and fix it!

Sub checkout()

Dim items As String

Dim rowcounter As Integer 

rowcounter = 1

Dim genquant As Integer 

Dim plusquant As Integer

Dim revenue As Double 

revenue = 0

For rowcounter = 1 To 10

item = Range("A" & rowcounter).Value

genquant = Range("B" & rowcounter).Value

revenue = revenue + genquant * WarrantyPrice(item, "Generic")

plusquant = Range("C" & rowcounter).Value

revenue = revenue + plusquant * WarrantyPrice(item, "Plus")


Next rowcounter

Range("B20").Value = revenues

End Sub
