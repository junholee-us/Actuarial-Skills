DATA HOSPITALS;
	INPUT PatientID $ HospitalBill Age Diagnosis $ Gender $ State $; 
	DATALINES;
	1 500 5 SoreThroat 1 NY
	2 1500 68 Fall 2 CA
	3 2000 94 Parkinsons 1 CA
	4 250 15 Checkup 1 NY
	5 25000 9 Cancer 2 CA
	6 900 64 Diabetes 1 CA
	;
RUN;

DATA ORER_HOSP;
RETAIN State PatientID Gender Age Diagnosis HospitalBill; /*Reorder as stated in RETAIN statement */
SET WORK.HOSPITALS;
RUN;

DATA ORER_HOSP (KEEP=AGE STATE HospitalBill); /* Only selecting certain columns */
SET WORK.HOSPITALS;
RUN;

DATA ORER_HOSP (DROP=AGE STATE HospitalBill); /* Only deselecting certain columns */
SET WORK.HOSPITALS;
RUN;

DATA ORER_HOSP (RENAME=HospitalBill = CLM_AMT); /* Renaming the column names */
SET WORK.HOSPITALS;
RUN;