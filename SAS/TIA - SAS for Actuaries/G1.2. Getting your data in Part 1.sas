DATA HOSPITALS;
	INPUT PatientID $ HospitalBill Age Diagnosis $; 
	/* $ sign represents character instead of numbers */
	DATALINES;
	1 500 5 SoreThroat
	2 1500 68 Fall
	3 2000 94 Parkinsons
	4 250 15 Checkup
	5 25000 9 Cancer
	6 900 64 Diabetes
	;
RUN;

PROC PRINT;
RUN;