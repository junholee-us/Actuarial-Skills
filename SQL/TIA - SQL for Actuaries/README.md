## Technical Skills Course – SQL Project
*Completed by Junho Lee, assigned by TIA*

"Welcome to the SQL for Actuaries assignment page. We will be using earthquake data for the United States from USGS (https://earthquake.usgs.gov/). Pretend you are a General Insurance actuary and you deal with property insurance due to earthquakes."

##### Task #1:  Download the scrubbed earthquake data excel workbook under “Actuarial Project – Earthquakes” and study it

The “Original” tab contains raw data from the website. The “Work” tab is the main earthquake data where you have the year, month, day, state, and magnitude of each earthquake since 1900. The “Mapping” tab maps each state to its state abbreviation and region.

##### Task #2: Write SQL code to merge your Earthquake data with the State Abbreviation/Region data to create a new table.


##### Task #3: Write SQL code to get the average magnitude of all the Earthquakes.

##### Task #4: Write SQL code to get the count of earthquakes by State.

##### Task #5: Analyze the data

Bring your final Access table into Excel which should include all the fields from your original data with State Abbreviation and Region attached. First determine the 90th Percentile of the Magnitudes of the quakes by using mathematics. Determine what the average is of these earthquakes above the 90th percentile in magnitude. This is known as the CTE90% or Conditional Tail
Expectation. We often look for outliers in the data to get a sense of how risky things really
are. Make a frequency plot of the magnitudes of the earthquakes (or probability
distribution). Explore the data and decide which states are most risky to insure against earthquakes.
