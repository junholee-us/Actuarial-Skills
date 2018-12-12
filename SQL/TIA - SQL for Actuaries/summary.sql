#D1.2 Create a new table from existing table
SELECT MyTable.COL1, MyTable.COL2
INTO MyNewTable
FROM MyTable;

#D1.3 Deleting Tables
DELETE MyNewTable.*
FROM MyNewTable;

#D1.4 Selecting distinct rows
SELECT DISTINCT MyTable.COL1
FROM MyTable;

#D1.5 Filtering data
SELECT MyTable.*
FROM MyTable
WHERE MyTable.COL1 = "MyString1";

#D1.6 Logical operators
SELECT MyTable.*
FROM MyTable
WHERE MyTable.COL1 = "MyString1"
OR MyTable.COL1 = "MyString2";

SELECT MyTable.*
FROM MyTable
WHERE MyTable.COL2 = 1
AND MyTable.COL3 = "MALE";

#D1.7 Sorting data
SELECT MyTable.*
FROM MyTable
ORDER BY MyTable.COL1;

SELECT MyTable.*
FROM MyTable
ORDER BY MyTable.COL1 ASC; #Order by ascending order

SELECT MyTable.*
FROM MyTable
ORDER BY MyTable.COL1 DESC; #Order by descending order

#D1.8 Handling empty values
SELECT MyTable.*
FROM MyTable
WHERE MyTable.COL1 IS NULL;

SELECT MyTable.*
FROM MyTable
WHERE MyTable.COL1 IS NOT NULL;

#D1.9 Updating values
UPDATE MyTable
SET MyTable.COL1 = "MyString1"
WHERE MyTable.COL1 IS NULL;

#D1.10 Using wildcards
SELECT MyTable.*
FROM MyTable
WHERE MyTable.COL2 LIKE "name*";

#D1.11 Viewing data
SELECT TOP 10 MyTable.*
FROM MyTable;

SELECT TOP 10 PERCENT MyTable.*
FROM MyTable
ORDER BY MyTable.COL1 DESC;

#D1.12 Simple query - grouping, count
SELECT MyTable.COL1, Count(MyTable.COL2) AS CountOfID
FROM MyTable
GROUP BY MyTable.COL1;

#D1.13 Conditional query
SELECT MyTable.COL1, Count(MyTable.COL2) AS CountOfID
FROM MyTable
WHERE(((MyNewTable.COL2)>=100))
GROUP BY MyTable.COL1;

#D1.14 SQL Joins Part 1 - Inner Join
SELECT MyTable1.*, MyTable2.*
FROM MyTable1
INNER JOIN MyTable2
ON MyTable1.COL1 = MyTable2.COL1;

#D1.15 SQL Joins Part 2 - Left Join
SELECT MyTable1.*, MyTable2.*
FROM MyTable1
LEFT JOIN MyTable2
ON MyTable1.COL1 = MyTable2.COL1;

#D1.16 SQL Joins Part 3 - Right Join
SELECT MyTable1.*, MyTable2.*
FROM MyTable2
RIGHT JOIN MyTable1
ON MyTable1.COL1 = MyTable2.COL1;

#D1.17 Numerical functions
SELECT MyTable.COL1, AVG(MyTable.COL2) AS AvgCol2 #COUNT, MAX, MIN, SUM
FROM MyTable
GROUP BY MyTable.COL1;

#D1.18 Text functions
SELECT MyTable.COL1, MyTable.COL2, UCASE(MyTable.COL3) AS NowUppercase
FROM MyTable

SELECT MyTable.COL1, MyTable.COL2, MID(LCASE(MyTable.COL3),1,1) AS FirstLowercaseLetter
FROM MyTable

SELECT MyTable.COL1, MyTable.COL2, LEN(MyTable.COL3) AS Length
FROM MyTable

#D1.19 Expressions
SELECT MyTable.* IIF(MyTable.COL1 = 1 AND MyTable.COL2 = "MyString1", "NewName1", "") AS NewGroup
FROM MyTable;
