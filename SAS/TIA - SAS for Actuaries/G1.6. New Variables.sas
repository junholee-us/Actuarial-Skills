DATA HOSPITALS;
	INPUT PatientID $ HospitalBill Age Diagnosis $ Gender $; 
	DATALINES;
	1 500 5 SoreThroat 1
	2 1500 68 Fall 2
	3 2000 94 Parkinsons 1
	4 250 15 Checkup 1
	5 25000 9 Cancer 2
	6 900 64 Diabetes 1
	;
RUN;

/* Creating a macro type of variable */
%LET COINS = 0.8;

/*Making a duplicate copy of the dataset*/
DATA HEALTH; 
SET WORK.HOSPITALS;

/* Set a new variable to store net payment after considering coinsurance */
NETINSAMT = HospitalBill * &COINS;
Run;