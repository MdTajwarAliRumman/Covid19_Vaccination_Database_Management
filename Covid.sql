USE Covid19_Data_Management_System;

CREATE TABLE Covid19_Information
(
Year INT,
Months VARCHAR(20)NOT NULL,
Total_Case VARCHAR(20)NOT NULL,
Deaths VARCHAR(20)NOT NULL,
Recovered VARCHAR(20)NOT NULL
PRIMARY KEY
);

INSERT INTO Covid19_Information
(Year,Months, Total_Case,  Deaths, Recovered)
Values
(2020,'May',		'2,545',	'120',	'7')
(2020,'June',		'3,682',	'205',	'15')
(2020,'July',		'2,695',	'182',	'30')
(2020,'August',		'1,897',	'150',	'25')
(2020,'September',	'1,436',	'97',	'45')
(2020,'October',	'1,320',	'77',	'88')
(2020,'November',	'1,014',	'44',	'100')
(2020,'December',	'1,058',	'20',	'170')
(2021,'January',	'477',		'10',	'250')
(2021,'February',	'5,358',	'520',	'58')
(2021,'March',		'385',		'401',	'77')
(2021,'April',		'2,177',	'602',	'103')
(2021,'May',		'1,432',	'790',	'200')
(2021,'June',		'8,822',	'1,090','313')
(2021,'July',		'13,734',	'420',	'1100')
(2021,'August',		'847',		'70',	'2,543')
(2021,'September',	'211',		'22',	'5,413')
(2021,'October',	'103',		'10',	'8,794')
(2021,'November',	'83',		'12',	'11,203')
(2021,'December',	'50',		'5',	'15,467');


CREATE TABLE Vaccine_Registration
(
Registration_No INT,
Name VARCHAR(20)NOT NULL,
Date_Of_Birth DATE NOT NULL,
NID INT NOT NULL,
Address VARCHAR(20)NOT NULL,
Phone INT NOT NULL,
Occupation VARCHAR(20),
PRIMARY KEY(Registration_No)
);

INSERT INTO Vaccine_Registration
(Registration_No,Name,Date_Of_Birth,NID,	Address,	Phone,	Occupation) 
Values
(1001,'Tajwar',	'30-05-1999',	1234567890,	'Dhaka',	01715126980,'Engineer')
(1002,'Rumman',	'30-05-1999',	2314125536,	'Dhaka',	01933954167,'Student')
(1003,'Plabon',	'03-00-1998',	4243532623,	'Feni',		01712245678,'Engineer')
(1004,'Maisha',	'21-04-1999',	1234564442,	'Noakhali',	01621312324,'Student')
(1005,'Emu',	'17-07-1999',	1236564893,	'Noakhali',	01700294566,'Banker')
(1006,'Ashik',	'13-12-1999',	1234553212, 'Jhinaidah',01625312095,'Engineer')
(1007,'Sabbir',	'11-05-1999',	4242579867,	'Jhinaidah',01915212681,'Engineer')
(1008,'Rofik',	'07-12-1986',	4241123354,	'Borishal',	01925325238,'Business')
(1009,'Ema',	'03-09-1997',	2314688609,	'Noakhali',	01753253664,'Student')
(1010,'Nupur',	'05-03-1997',	2385863232,	'Rangpur',	01746461211,'Doctor')
(1011,'Rafsan',	'17-11-1998',	1235863132,	'Borishal',	01612222555,'Business')
(1012,'Farsi',	'22-08-1998',	1232126456,	'Noakhali',	01988822211,'Engineer')
(1013,'Nayeem',	'25-12-1980',	4241121285,	'Rangpur',	01728535125,'Engineer')
(1014,'Nila',	'31-01-1999',	2311274625,	'Feni',		01712246881,'Doctor')
(1015,'Atisha',	'13-05-1999',	2319696969,	'Rangpur',	01933431112,'Banker')
(1016,'Akhi',	'16-06-1999',	1234563434,	'Jhinaidah',01658091012,'Doctor')
(1017,'onee',	'14-06-1994',	1234111333,	'Dhaka',	01823251032,'Business')
(1018,'laden',	'24-04-1998',	4245828950,	'Rangpur',	01724236571,'Banker')
(1019,'Alvee',	'03-12-1994',	2313232323,	'Dhaka',	01654958212,'Banker')
(1020,'Rafin',	'04-02-2004',	1235566000,	'Dhaka',	01724242242,'Business');


CREATE TABLE Vaccine_Center 
(
Registration_No INT,
Hospital VARCHAR(50)NOT NULL,
Address VARCHAR(20)NOT NULL,
Helpline INT NOT NULL,
PRIMARY KEY(Hospital),
foreign key(Registration_No)references(Vaccine_Registration)
);

INSERT INTO Covid19_Information() Values();
 
 
CREATE TABLE Hospital_Covid_Unit 
(
Hospital VARCHAR(50)NOT NULL,
Affected INT(20)NOT NULL,
Recovered  INT(20)NOT NULL,
Deaths INT(20)NOT NULL,
Records DATE NOT NULL,
Age VARCHAR(20),
PRIMARY KEY(Hospital),
foreign key(Hospital)references(Vaccine_Center)
);

INSERT INTO Covid19_Information() Values();


CREATE TABLE Dose
(
Registration_No INT,
First_Dose VARCHAR(20),
First_Dose_Date DATE,
Second_Dose VARCHAR(20),
Second_Dose_Date DATE,
Vaccine_Name VARCHAR(20),
Age VARCHAR(20),
Occupotation VARCHAR(20),
PRIMARY KEY(Registration_No),
foreign key(Hospital)references(Vaccine_Center)
);

INSERT INTO Covid19_Information() Values();



CREATE TABLE Process_Focus 
(
Vaccine_Name VARCHAR(50)NOT NULL,
Quantity INT(20)NOT NULL,
Vaccinated  INT(20)NOT NULL,
Vaccines_Left INT(20)NOT NULL,
PRIMARY KEY(Vaccine_Name),
foreign key(Hospital)references(Vaccine_Center)
);

INSERT INTO Covid19_Information() Values();



CREATE TABLE Organizations
(
Organization_Name VARCHAR(50)NOT NULL,
Members INT(20)NOT NULL,
Area  VARCHAR(20)NOT NULL,
Unit VARCHAR(20)NOT NULL,
PRIMARY KEY(Organization_Name),
/*foreign key(Hospital)references(Vaccine_Center)*/
);


