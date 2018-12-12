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

DATA HOSPITALS_MALES HOSPITALS_FEMALES; /* SAS can create more than 1 dataset in one line */
SET WORK.HOSPITALS;
IF Gender = "1" THEN OUTPUT HOSPITALS_MALES;
IF Gender = "2" THEN OUTPUT HOSPITALS_FEMALES;
RUN