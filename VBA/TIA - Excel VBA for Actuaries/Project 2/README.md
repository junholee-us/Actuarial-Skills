## Technical Skills Course – Excel VBA Financial Modeling Project

Completed by Junho Lee, assigned by TIA

##### Introduction
This project is a continuation from the Beginners Excel for Actuaries project titled A.5 Actuarial Project #2 Financial Modeling. If you have not completed that project, please do so before completing this VBA project.

Sarah Chan, at age 22, was hired into an entry-level actuarial position in 2012 with a starting salary of $50,000. She has been successful at passing actuarial exams and she expects to earn $100,000 by 2017 when she’ll get her fellowship. Her salary is expected to increase by 3% per year starting in 2018, all the way until she retires at age 65.

Outside of work, she as a 30 year fixed mortgage that she pays $18,000 per year. She started paying her mortgage in 2012. She also has student loan debt that she will pay off in 2021. Both the mortgage and the student loan debt payments are steady through the life of the loan. She does save $100 per month into her retirement fund; Sarah does not expect to increase her contribution (i.e. steady $100 per month until she retires). Sarah has other expenses like various insurance, living expenses, and other expenses. Whatever money she has left over annual, she puts into her Personal Savings Account that earns 1% interest and that rate is not expected to change until she retires.

VBA Task: The Excel financial model has already been created to project Sarah Chan’s Net Income and Personal Savings Account when she retires at age 65. We are going to use VBA to make the user inputs easier.

##### Task #1: Create a new VBA macro and store user inputs.

Go to the Inputs tab. Create a new VBA macro that stores the user inputs for salary growth, insurance costs as % of annual salary, living expenses as % of annual salary, other expenses as % of annual salary, income tax rate as % of annual salary, and interest of savings account.

##### Task #2: Put the user inputs values into the Model tab.

Use VBA to put the user inputs values for the various assumptions into the appropriate cells in the Model tab.
Hint: use Worksheets(“Model”).Range(“N31”).Value = SalaryGrowth for example.

##### Task #3: Use VBA to put the Age 65 Personal Savings Account balance on the model tab back to the user inputs tab (green cell, H12).

##### Task #4: Create a chart of the Personal Savings Account balance over time and put on the Inputs tab.

Record a macro that creates a line chart of the Personal Account balance over time. The x-axis is the “Year” (model tab, row 3) and the y-axis will be the Personal Savings Account (Model tab, row 26). Put the chart on the Inputs tab.

##### Task #5: Create a variety of buttons to complete your tool

Create the following buttons:

* Calculate button on the Inputs tab:

  Assign your User Inputs macro to this button to take a user’s inputs and calculate the Personal Savings Account balance at age 65. The button will also paste the Personal Savings Account balance line chart onto the Inputs tab.
* Clear button on the Inputs tab:

  Make all the user inputs zero and clear out the green box that shows the Personal Savings Account balance at Age 65. This button will also delete the line chart from the Inputs tab.
* Go to Model button on the Inputs tab:

  When this button is pressed, it will take the user to the Model tab.
* Go to Inputs button on the Model tab:

  When this button is pressed, it will take the user back to the Inputs tab.

When you are done creating the buttons, hide all your tabs so your user can navigate through your
Financial Modeling tool by just pressing the buttons.
