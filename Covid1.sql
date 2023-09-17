USE Covid19_Data_Management_System;

CREATE TABLE Covid19_Information
(
Serial_No INT NOT NULL auto_increment,
Years INT,
Months VARCHAR(20)NOT NULL,
Total_Case VARCHAR(20)NOT NULL,
Deaths VARCHAR(20)NOT NULL,
Recovered VARCHAR(20)NOT NULL,
primary Key(serial_No)
);

INSERT INTO Covid19_Information
(Serial_No,Years,Months, Total_Case,  Deaths, Recovered)
Values
(01,	2020,'May',			'2,545',	'120',	'7'),
(02,	2020,'June',		'3,682',	'205',	'15'),
(03,	2020,'July',		'2,695',	'182',	'30'),
(04,	2020,'August',		'1,897',	'150',	'25'),
(05,	2020,'September',	'1,436',	'97',	'45'),
(06,	2020,'October',		'1,320',	'77',	'88'),
(07,	2020,'November',	'1,014',	'44',	'100'),
(08,	2020,'December',	'1,058',	'20',	'170'),
(09,	2021,'January',		'477',		'10',	'250'),
(10,	2021,'February',	'5,358',	'520',	'58'),
(11,	2021,'March',		'385',		'401',	'77'),
(12,	2021,'April',		'2,177',	'602',	'103'),
(13,	2021,'May',			'1,432',	'790',	'200'),
(14,	2021,'June',		'8,822',	'1,090','313'),
(15,	2021,'July',		'13,734',	'420',	'1100'),
(16,	2021,'August',		'847',		'70',	'2,543'),
(17,	2021,'September',	'211',		'22',	'5,413'),
(18,	2021,'October',		'103',		'10',	'8,794'),
(19,	2021,'November',	'83',		'12',	'11,203'),
(20,	2021,'December',	'50',		'5',	'15,467');



CREATE TABLE Division
(
Serial_No INT AUTO_INCREMENT,
Divisions VARCHAR(20)NOT NULL,
Affected VARCHAR(20)NOT NULL,
Deaths VARCHAR(20)NOT NULL,
Vaccinated VARCHAR(20)NOT NULL,
Recovered VARCHAR(20)NOT NULL,
/*PRIMARY KEY(Divisions),*/
foreign key(serial_No)references Covid19_Information(Serial_No)
);

INSERT INTO Division
(Serial_No, Divisions,	 Affected,	  Deaths,	Vaccinated, Recovered)
Values
(01,'Dhaka',		'3,241',	'220',	'60,930',	'520'),
(02,'Rangpur',		'241',		'49',	'20,130',	'320'),
(03,'Mymensingh',	'1,242',	'22',	'10,320',	'530'),
(04,'Rajshahi', 	'502',		'10',	'30,520',	'720'),
(05,'Sylhet', 		'2,245',	'120',	'22,230',	'312'),
(06,'Khulna', 		'3,241',	'30',	'10,930',	'420'),
(07,'Barisal',		'9,233',	'70',	'10,830',	'120');



CREATE TABLE Vaccine_Registration
(
Serial_No INT NOT NULL auto_increment,
Registration_No INT,
Name VARCHAR(20)NOT NULL,
Date_Of_Birth DATE NOT NULL,
NID INT NOT NULL,
Address VARCHAR(20)NOT NULL,
Phone INT NOT NULL,
Occupation VARCHAR(20),
PRIMARY KEY(Registration_No),
FOREIGN key(serial_No)references Covid19_Information(Serial_No)
);

INSERT INTO Vaccine_Registration
(Serial_No,Registration_No,Name,Date_Of_Birth,NID,	Address,	Phone,	Occupation) 
Values
(01,	1001,'Tajwar',	'1999-05-30',	1234567890,	'Dhaka',	01715126980,'Engineer'),
(02,	1002,'Rumman',	'1999-05-30',	1314125536,	'Dhaka',	01933954167,'Student'),
(03,	1003,'Plabon',	'1998-00-03',	1343532623,	'Feni',		01712245678,'Engineer'),
(04,	1004,'Maisha',	'1999-04-21',	1234564442,	'Noakhali',	01621312324,'Student'),
(05,	1005,'Emu',		'1999-07-17',	1236564893,	'Noakhali',	01700294566,'Banker'),
(06,	1006,'Ashik',	'1999-12-13',	1234553212, 'Jhinaidah',01625312095,'Engineer'),
(07,	1007,'Sabbir',	'1999-05-11',	1524257986,	'Jhinaidah',01915212681,'Engineer'),
(08,	1008,'Rofik',	'1986-12-07',	1524112335,	'Borishal',	01925325238,'Business'),
(09,	1009,'Ema',		'1997-09-03',	1331468609,	'Noakhali',	01753253664,'Student'),
(10,	1010,'Nupur',	'1997-03-05',	1385863232,	'Rangpur',	01746461211,'Doctor'),
(11,	1011,'Rafsan',	'1998-11-17',	1235863132,	'Borishal',	01612222555,'Business'),
(12,	1012,'Farsi',	'1998-08-22',	1232126456,	'Noakhali',	01988822211,'Engineer'),
(13,	1013,'Nayeem',	'1980-12-25',	1541121285,	'Rangpur',	01728535125,'Engineer'),
(14,	1014,'Nila',	'1999-01-31',	1511274625,	'Feni',		01712246881,'Doctor'),
(15,	1015,'Atisha',	'1999-05-13',	1319696969,	'Rangpur',	01933431112,'Banker'),
(16,	1016,'Akhi',	'1999-06-16',	1234563434,	'Jhinaidah',01658091012,'Doctor'),
(17,	1017,'onee',	'1994-06-14',	1234111333,	'Dhaka',	01823251032,'Business'),
(18,	1018,'laden',	'1998-04-24',	1345828950,	'Rangpur',	01724236571,'Banker'),
(19,	1019,'Alvee',	'1994-12-03',	1513232323,	'Dhaka',	01654958212,'Banker'),
(20,	1020,'Rafin',	'2004-02-04',	1235566000,	'Dhaka',	01724242242,'Business');


CREATE TABLE Vaccine_Center 
(
Registration_No INT,
Hospital VARCHAR(50)NOT NULL,
Address VARCHAR(20)NOT NULL,
Helpline INT NOT NULL,
/*PRIMARY KEY(Hospital_ID),*/
foreign key(Registration_No)references Vaccine_Registration(Registration_No)
);
 
INSERT INTO Vaccine_Center 
(Registration_No,Hospital, 			Address,	 Helpline) 
Values
(1001,		'Dhaka Medical',		'Secretariate Rd',	01934951232),
(1002,		'National Heart Fo.',	'Shishumela Rd',	01634951233),
(1003,		'Square',				'Panthapath',		01744551232),
(1004,		'Dhaka Medical',		'Secretariate Rd',	01934951245),
(1005,		'NuroScience',		'Shahid Shabuddin Rd',	01731551222),
(1006,		'Dhaka Medical',		'Secretariate Rd',	01777952232),
(1007,		'NuroScience',		'Shahid Shabuddin Rd',	01734151333),
(1008,		'Sohorawardi',		'Sohorawardi Clg Rd.',	01931243789),
(1009,		'National Heart Fo.',	'Shishumela Rd',	01664951298),
(1010,		'Square',				'Panthapath',		01665451230),
(1011,		'Sohorawardi',		'Sohorawardi Clg Rd.',	01934324200),
(1012,		'Dhaka Medical',		'Secretariate Rd',	01933944220),
(1013,		'Sohorawardi',		'Sohorawardi Clg Rd.',	01784551224),
(1014,		'National Heart Fo.',	'Shishumela Rd',	01944956236),
(1015,		'NuroScience',		'Shahid Shabuddin Rd',	01754966237),
(1016,		'Dhaka Medical',		'Secretariate Rd',	01834051211),
(1017,		'Sohorawardi',		'Sohorawardi Clg Rd.',	01974865020),
(1018,		'NuroScience',		'Shahid Shabuddin Rd',	01667641232),
(1019,	  	'Square',				'Panthapath',		01734951111),
(1020,		'Sohorawardi',		'Sohorawardi Clg Rd.',	01934911233);
 
CREATE TABLE Process_Focus 
(
Vaccine_No int not null,
Vaccine_Name VARCHAR(50)NOT NULL,
Quantity VARCHAR(20)NOT NULL,
Vaccinated  VARCHAR(20)NOT NULL,
Vaccines_Left VARCHAR(20)NOT NULL,
PRIMARY KEY(Vaccine_Name)
);

INSERT INTO Process_Focus 
(Vaccine_No,Vaccine_Name,	Quantity,	Vaccinated,	Vaccines_Left)
Values
(01,'Sinopharm',				'60,000','54,000','6,000'),
(02,'Moderna',					'30,000','27,000','3,000'),
(03,'Serum Institute of India','50,000','50,000','0,000'),
(04,'Pfizer',					'20,000','15,000','5,000'),
(05,'Janssen',					'30,000','20,000','10,000'),
(06,'Gamaleya',				'10,000','10,000','00,000');

CREATE TABLE Dose
(
Registration_No INT,
First_Dose VARCHAR(20),
1st_Dose_Date DATE,
Second_Dose VARCHAR(20),
2nd_Dose_Date DATE,
Vaccine_Name VARCHAR(20),
Age VARCHAR(20),
Occupotation VARCHAR(20),
PRIMARY KEY(Registration_No),
foreign key(Hospital)references Vaccine_Center(Hospital)
);

INSERT INTO Dose
(Registration_No,	First_Dose,	1st_Dose_Date,	Second_Dose,	2nd_Dose_Date,	Vaccine_Name,	Age,Occupotation)
Values
(1001,'Tajwar',		'Done',		'16-10-21',		'Done',			'21-11-21',		'Sinopharm',	25,	'Engineer'),
(1002,'Rumman',		'Done',		'16-10-21',		'',				'',				'Sinopharm',	22,	'Student'),
(1003,'Plabon',		'Done',		'07-07-21',		'Done',			'20-09-21',		'Moderna',		27,	'Engineer'),
(1004,'Maisha',		'Done',		'13-09-21',		'Done',			'19-11-21',		'Moderna',		25,	'Student'),
(1005,'Emu',		'',			'16-12-21',		'',				'',				'Sinopharm',	26,	'Banker'),
(1006,'Ashik',		'Done',		'03-05-21',		'Done',			'15-07-21',		'Moderna',		26,	'Student'),
(1007,'Sabbir',		'Done', 	'26-10-21',		'Done',			'02-12-21',		'Sinopharm',	25,	'Engineer'),
(1008,'Rofik',		'',			'12-12-21',		'',				'',				'',				32,	'Business'),
(1009,'Ema',		'',			'14-12-21',		'',				'',				'',				22,	'Student'),
(1010,'Nupur',		'Done',		'05-10-21',		'Done',			'14-11-21',		'Sinopharm',	32,	'Doctor'),
(1011,'Rafsan',		'Done',		'02-03-21',		'Done',			'12-05-21',		'Moderna',		28,	'Business'),
(1012,'Farsi',		'Done',		'11-10-21',		'Done',			'06-12-21',		'Pfizer',		26,	'Engineer'),
(1013,'Nayeem',		'Done',		'17-10-21',		'Done',			'29-11-21',		'Sinopharm',	25,	'Engineer'),
(1014,'Nila',		'Done',		'18-10-21',		'Done',			'03-12-21',		'Janssen ',		30,	'Doctor'),
(1015,'Atisha',		'Done',		'01-09-21',		'Done',			'13-12-21',		'Sinopharm',	35,	'Banker'),
(1016,'Akhi',		'',			'28-08-21',		'',				'',				'',				42,	'Doctor'),
(1017,'onee',		'Done',		'23-11-21',		'Done',			'28-12-21',		'Moderna',		29,	'Business'),
(1018,'laden',		'Done',		'26-05-21',		'Done',			'14-07-21',		'Pfizer',		32,	'Banker'),
(1019,'Alvee',		'',			'22-10-21',		'',				'',				'',				27,	'Banker'),
(1020,'Rafin',		'Done',		'04-10-21',		'',				'',				'Janssen ',		26,	'Business');






/*
CREATE TABLE Organizations
(
Organization_Name VARCHAR(50)NOT NULL,
Members INT(20)NOT NULL,
Area  VARCHAR(20)NOT NULL,
Unit VARCHAR(20)NOT NULL,
PRIMARY KEY(Organization_Name)
);
INSERT INTO Organizations 
(Organization_Name,	Members,	Area,	Unit)
Values
('We_Not_i',	'350',		'Mirpur',		'A1'),
('Health_alert','1,520',	'Panthapath',	'A33'),
('Shurokkha',	'50,000',	'Motijhil',		''),
('BloodBank',	'2,000',	'Mirpur',		'Beta'),
('Covid-Fighters','500',	'Mohammadpur',	'M-11');

CREATE TABLE Hospital_Covid_Unit 
(
Hospital_ID INT,
Hospital VARCHAR(50)NOT NULL,
Affected INT(20)NOT NULL,
Recovered  INT(20)NOT NULL,
Deaths INT(20)NOT NULL,
Records DATE NOT NULL,
Age VARCHAR(20),
PRIMARY KEY(Hospital_ID),
foreign key(Hospital)references Vaccine_Center(Hospital)
);

INSERT INTO Hospital_Covid_Unit 
(Hospital_ID,Hospital,Affected,Recovered,Deaths,Records)
 Values
(123,	'Dhaka Medical',		420,	333,	21,	'11-11-2021'),
(234,	'National Heart Fo.',	201,	100,	10,	'12-11-2021'),
(567,	'Square',				130,	90,		22,	'12-11-2021'),
(890,	'NuroScience',			312,  	122,	40,	'11-11-2021'),
(135,	'Sohorawardi',			350,	200,	15,	'15-11-2021'),
(246,	'National Kidney Fo.',	213,	102,	4,	'16-11-2021'),
(567,	'Apollo Hospital',		111,	77,		3,	'11-11-2021'),
(567,	'Popular Hospital',		125,	25,		7,	'10-11-2021'),
(246,	'Ibne Sina',			90,		50,		11,	'10-11-2021'),
(246,	'United Hospital',		50,		19,		7,	'10-11-2021');

*/

