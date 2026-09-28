-- =====================================================
-- Combined Database Schema
-- Includes: College Database, Songs Database, NY Giants Roster Database
-- =====================================================

-- =====================================================
-- SECTION 1: College Database
-- =====================================================

drop table z_Enrolled_in;
drop table z_Minor_in;
drop table z_Member_of;
drop table z_Course;
drop table z_Student;
drop table z_Faculty;
drop table z_Department; 
drop table z_Gradeconversion;

create table z_Student (
        StuID        INTEGER PRIMARY KEY,
        LName        VARCHAR(12),
        Fname        VARCHAR(12),
        Age      INTEGER,
        Sex      VARCHAR(1),
        Major        INTEGER,
        Advisor      INTEGER,
        city_code    VARCHAR(3)
 );


create table z_Faculty (
       FacID 	       INTEGER PRIMARY KEY,
       Lname		VARCHAR(15),
       Fname		VARCHAR(15),
       Rank		VARCHAR(15),
       Sex		VARCHAR(1),
       Phone		INTEGER,
       Room		VARCHAR(5),
       Building		VARCHAR(13)
);

create table z_Department (
       DNO   		INTEGER PRIMARY KEY,
       Division		VARCHAR(2),
       DName		VARCHAR(25),
       Room		VARCHAR(5),
       Building		VARCHAR(13),
       DPhone		INTEGER
);

create table z_Member_of (
       FacID 	       INTEGER,
       DNO	       INTEGER,
       Appt_Type       VARCHAR(15),
       FOREIGN KEY(FacID) REFERENCES z_Faculty(FacID),
       FOREIGN KEY(DNO) REFERENCES z_Department(DNO)
);

create table z_Course (
       CID   	    	VARCHAR(7) PRIMARY KEY,
       CName		VARCHAR(40),
       Credits		INTEGER,
       Instructor	INTEGER,
       Days		VARCHAR(5),
       Hours		VARCHAR(11),
       DNO		INTEGER,
       FOREIGN KEY(Instructor) REFERENCES z_Faculty(FacID),
       FOREIGN KEY(DNO) REFERENCES z_Department(DNO)
);

create table z_Minor_in (
       StuID 	      INTEGER,
       DNO		INTEGER,
       FOREIGN KEY(StuID) REFERENCES z_Student(StuID),
       FOREIGN KEY(DNO) REFERENCES z_Department(DNO)
);

create table z_Gradeconversion (
       lettergrade	     VARCHAR(2) PRIMARY KEY,
       gradepoint	     FLOAT
);

create table z_Enrolled_in (
       StuID 		 INTEGER,
       CID		VARCHAR(7),
       Grade		VARCHAR(2),
       FOREIGN KEY(StuID) REFERENCES z_Student(StuID),
       FOREIGN KEY(CID) REFERENCES z_Course(CID),
       FOREIGN KEY(Grade) REFERENCES z_Gradeconversion(lettergrade)
);

insert into z_Student values ( 1001, 'Smith', 'Linda', 18, 'F', 600, 1121,'BAL');
 insert into z_Student values ( 1002, 'Kim', 'Tracy', 19, 'F', 600, 7712,'HKG');
 insert into z_Student values ( 1003, 'Jones', 'Shiela', 21, 'F', 600, 7792,'WAS');
 insert into z_Student values ( 1004, 'Kumar', 'Dinesh', 20, 'M', 600, 8423,'CHI');
 insert into z_Student values ( 1005, 'Gompers', 'Paul', 26, 'M', 600, 1121,'YYZ');
 insert into z_Student values ( 1006, 'Schultz', 'Andy', 18, 'M', 600, 1148,'BAL');
 insert into z_Student values ( 1007, 'Apap', 'Lisa', 18, 'F', 600, 8918,'PIT');
 insert into z_Student values ( 1008, 'Nelson', 'Jandy', 20, 'F', 600, 9172,'BAL');
 insert into z_Student values ( 1009, 'Tai', 'Eric', 19, 'M', 600, 2192,'YYZ');
 insert into z_Student values ( 1010, 'Lee', 'Derek', 17, 'M', 600, 2192,'HOU');
 insert into z_Student values ( 1011, 'Adams', 'David', 22, 'M', 600, 1148,'PHL');
 insert into z_Student values ( 1012, 'Davis', 'Steven', 20, 'M', 600, 7723,'PIT');
 insert into z_Student values ( 1014, 'Norris', 'Charles', 18, 'M', 600, 8741, 'DAL');
 insert into z_Student values ( 1015, 'Lee', 'Susan', 16, 'F', 600, 8721,'HKG');
 insert into z_Student values ( 1016, 'Schwartz', 'Mark', 17, 'M', 600, 2192,'DET');
 insert into z_Student values ( 1017, 'Wilson', 'Bruce', 27, 'M', 600, 1148,'LON');
 insert into z_Student values ( 1018, 'Leighton', 'Michael', 20, 'M', 600, 1121, 'PIT');
 insert into z_Student values ( 1019, 'Pang', 'Arthur', 18, 'M', 600, 2192,'WAS');
 insert into z_Student values ( 1020, 'Thornton', 'Ian', 22, 'M', 520, 7271,'NYC');
 insert into z_Student values ( 1021, 'Andreou', 'George', 19, 'M', 520, 8722, 'NYC');
 insert into z_Student values ( 1022, 'Woods', 'Michael', 17, 'M', 540, 8722,'PHL');
 insert into z_Student values ( 1023, 'Shieber', 'David', 20, 'M', 520, 8722,'NYC');
 insert into z_Student values ( 1024, 'Prater', 'Stacy', 18, 'F', 540, 7271,'BAL');
 insert into z_Student values ( 1025, 'Goldman', 'Mark', 18, 'M', 520, 7134,'PIT');
 insert into z_Student values ( 1026, 'Pang', 'Eric', 19, 'M', 520, 7134,'HKG');
 insert into z_Student values ( 1027, 'Brody', 'Paul', 18, 'M', 520, 8723,'LOS');
 insert into z_Student values ( 1028, 'Rugh', 'Eric', 20, 'M', 550, 2311,'ROC');
 insert into z_Student values ( 1029, 'Han', 'Jun', 17, 'M', 100, 2311,'PEK');
 insert into z_Student values ( 1030, 'Cheng', 'Lisa', 21, 'F', 550, 2311,'SFO');
 insert into z_Student values ( 1031, 'Smith', 'Sarah', 20, 'F', 550, NULL,'PHL');
 insert into z_Student values ( 1032, 'Brown', 'Eric', 20, 'M', 550, 8772,'ATL');
 insert into z_Student values ( 1033, 'Simms', 'William', 18, 'M', 550, 8772,'NAR');
 insert into z_Student values ( 1034, 'Epp', 'Eric', 18, 'M', 050, NULL,'BOS');
 insert into z_Student values ( 1035, 'Schmidt', 'Sarah', 26, 'F', 050, 5718,'WAS');

insert into z_Faculty  values ( 1082, 'Giuliano', 'Mark', 'Instructor', 'M', 2424, '224', 'NEB');
insert into z_Faculty  values ( 1121, 'Goodrich', 'Michael', 'Professor', 'M', 3593, '219', 'NEB');
insert into z_Faculty  values ( 1148, 'Masson', 'Gerald', 'Professor', 'M', 3402, '224B', 'NEB');
insert into z_Faculty  values ( 1193, 'Jones', 'Stacey', 'Instructor', 'F', 3550, '224', 'NEB');
insert into z_Faculty  values ( 2192, 'Yarowsky', 'David', 'AsstProf', 'M', 6587, '324', 'NEB');
insert into z_Faculty  values ( 3457, 'Smith', 'Scott', 'AssocProf', 'M', 1035, '318', 'NEB');
insert into z_Faculty  values ( 4230, 'Houlahan', 'Joanne', 'Instructor', 'F', 1260, '328', 'NEB');
insert into z_Faculty  values ( 6112, 'Beach', 'Louis', 'Instructor', 'M', 1838, '207', 'NEB');
insert into z_Faculty  values ( 7712, 'Awerbuch', 'Baruch', 'Professor', 'M', 2105, '220', 'NEB');
insert into z_Faculty  values ( 7792, 'Brill', 'Eric', 'AsstProf', 'M', 2303, '324B', 'NEB');
insert into z_Faculty  values ( 7723, 'Taylor', 'Russell', 'Professor', 'M', 2435, '317', 'NEB');
insert into z_Faculty  values ( 8114, 'Angelopoulou', 'Ellie', 'Instructor', 'F', 2152, '316', 'NEB');
insert into z_Faculty  values ( 8423, 'Kumar', 'Subodh', 'AsstProf', 'M', 2522, '218', 'NEB');
insert into z_Faculty  values ( 8721, 'Wolff', 'Lawrence', 'AssocProf', 'M', 2342, '316', 'NEB');
insert into z_Faculty  values ( 8741, 'Salzberg', 'Steven', 'AssocProf', 'M', 2641,   '324A', 'NEB');
insert into z_Faculty  values ( 8918, 'Amir', 'Yair', 'AsstProf', 'M', 2672, '308', 'NEB');
insert into z_Faculty  values ( 9172, 'Kosaraju', 'Rao', 'Professor', 'M', 2757, '319', 'NEB');
insert into z_Faculty  values ( 9826, 'Delcher', 'Arthur', 'Instructor', 'M', 2956, '329', 'NEB');
insert into z_Faculty  values ( 1172, 'Runolfsson', 'Thordur', 'AssocProf', 'M', 3121, '119', 'Barton');
insert into z_Faculty  values ( 1177, 'Naiman', 'Daniel', 'Professor', 'M', 3571, '288', 'Krieger');
insert into z_Faculty  values ( 1823, 'Davidson', 'Frederic', 'Professor', 'M', 5629, '119', 'Barton');
insert into z_Faculty  values ( 2028, 'Brody', 'William', 'Professor', 'M', 6073, '119', 'Barton');
insert into z_Faculty  values ( 2119, 'Meyer', 'Gerard', 'Professor', 'M', 6350, '119', 'Barton');
insert into z_Faculty  values ( 2291, 'Scheinerman', 'Edward', 'Professor', 'M', 6654, '288', 'Krieger');
insert into z_Faculty  values ( 2311, 'Priebe', 'Carey', 'AsstProf', 'M', 6953, '288', 'Krieger');
insert into z_Faculty  values ( 2738, 'Fill', 'James', 'Professor', 'M', 8209, '288', 'Krieger');
insert into z_Faculty  values ( 2881, 'Goldman', 'Alan', 'Professor', 'M', 8335, '288', 'Krieger');
insert into z_Faculty  values ( 4432, 'Burzio', 'Luigi', 'Professor', 'M', 1813, '288', 'Krieger');
insert into z_Faculty  values ( 5718, 'Frank', 'Robert', 'AsstProf', 'M', 1751, '288', 'Krieger');
insert into z_Faculty  values ( 6182, 'Cheng', 'Cheng', 'AsstProf', 'M', 1856, '288', 'Krieger');
insert into z_Faculty  values ( 6191, 'Kaplan', 'Alexander', 'Professor', 'M', 1825, '119', 'Barton');
insert into z_Faculty  values ( 6330, 'Byrne', 'William', 'Instructor', 'M', 1691, '119', 'Barton');
insert into z_Faculty  values ( 6541, 'Han', 'Shih-Ping', 'Professor', 'M', 1914, '288', 'Krieger');
insert into z_Faculty  values ( 6910, 'Smolensky', 'Paul', 'Professor', 'M', 2072, '288', 'Krieger');
insert into z_Faculty  values ( 6925, 'Iglesias', 'Pablo', 'AsstProf', 'M', 2021, '119', 'Barton');
insert into z_Faculty  values ( 7134, 'Goutsias', 'John', 'Professor', 'M', 2184, '119', 'Barton');
insert into z_Faculty  values ( 7231, 'Rugh', 'Wilson', 'Professor', 'M', 2191, '119', 'Barton');
insert into z_Faculty  values ( 7271, 'Jelinek', 'Frederick', 'Professor', 'M', 2890, '119', 'Barton');
insert into z_Faculty  values ( 7506, 'Westgate', 'Charles', 'Professor', 'M', 2932, '119', 'Barton');
insert into z_Faculty  values ( 8102, 'James', 'Lancelot', 'AsstProf', 'M', 2792, '288', 'Krieger');
insert into z_Faculty  values ( 8118, 'Weinert', 'Howard', 'Professor', 'M', 3272, '119', 'Barton');
insert into z_Faculty  values ( 8122, 'Wierman', 'John', 'Professor', 'M', 3392,'288', 'Krieger');
insert into z_Faculty  values ( 8722, 'Cauwenberghs', 'Gert', 'AsstProf', 'M', 1372, '119', 'Barton');
insert into z_Faculty  values ( 8723, 'Andreou', 'Andreas', 'Professor', 'M', 1402, '119', 'Barton');
insert into z_Faculty  values ( 8772, 'Cowen', 'Lenore', 'AsstProf', 'F', 2870, '288', 'Krieger');
insert into z_Faculty  values ( 8791, 'McCloskey', 'Michael', 'Professor', 'M', 3440, '288', 'Krieger');
insert into z_Faculty  values ( 8989, 'Brent', 'Michael', 'AsstProf', 'M', 9373, '288', 'Krieger');
insert into z_Faculty  values ( 9011, 'Rapp', 'Brenda', 'AsstProf', 'F', 2032, '288', 'Krieger');
insert into z_Faculty  values ( 9191, 'Collins', 'Oliver', 'AssocProf', 'M', 5427, '119', 'Barton');
insert into z_Faculty  values ( 9199, 'Hughes', 'Brian', 'AssocProf', 'M', 5666, '119', 'Barton');
insert into z_Faculty  values ( 9210, 'Joseph', 'Richard', 'Professor', 'M', 5996, '119', 'Barton');
insert into z_Faculty  values ( 9514, 'Prince', 'Jerry', 'AssocProf', 'M', 5106, '119', 'Barton');
insert into z_Faculty  values ( 9823, 'Pang', 'Jong-Shi', 'Professor', 'M', 4366, '288', 'Krieger');
insert into z_Faculty  values ( 9824, 'Glaser', 'Robert', 'Instructor', 'M', 4396, '119', 'Barton');
insert into z_Faculty  values ( 9811, 'Wu', 'Colin', 'AsstProf', 'M', 2906, '288', 'Krieger');
insert into z_Faculty  values ( 9643, 'Legendre', 'Geraldine', 'AssocProf', 'F', 8972, '288', 'Krieger');
insert into z_Faculty  values ( 9379, 'Khurgin', 'Jacob', 'Professor', 'M', 1060, '119', 'Barton');
insert into z_Faculty  values ( 9922, 'Hall', 'Leslie', 'AsstProf', 'F', 7332, '288', 'Krieger');

insert into z_Department  values ( 010, 'AS', 'History of Art', '268', 'Mergenthaler', 7117);
insert into z_Department  values ( 020, 'AS', 'Biology', '144', 'Mudd', 7330);
insert into z_Department  values ( 030, 'AS', 'Chemistry', '113', 'Remsen', 7429);
insert into z_Department  values ( 040, 'AS', 'Classics', '121', 'Gilman', 7556);
insert into z_Department  values ( 050, 'AS', 'Cognitive Science', '381', 'Krieger', 7119);
insert into z_Department  values ( 060, 'AS', 'English', '146', 'Gilman', 7544);
insert into z_Department  values ( 070, 'AS', 'Anthropology', '404B', 'Macaulay', 7272);
insert into z_Department  values ( 090, 'AS', 'German', '245', 'Gilman', 7508);
insert into z_Department  values ( 100, 'AS', 'History', '312', 'Gilman', 7575);
insert into z_Department  values ( 110, 'AS', 'Mathematics', '404', 'Krieger', 7399);
insert into z_Department  values ( 130, 'AS', 'Near Eastern Studies', '128', 'Gilman', 7499);
insert into z_Department  values ( 140, 'AS', 'History of Science', '234', 'Gilman', 7501);
insert into z_Department  values ( 150, 'AS', 'Philosophy', '347', 'Gilman', 7524);
insert into z_Department  values ( 170, 'AS', 'Physics and Astronomy', '366', 'Bloomberg', 7347);
insert into z_Department  values ( 180, 'AS', 'Economics', '440', 'Mergenthaler', 7601);
insert into z_Department  values ( 190, 'AS', 'Political Science', '338', 'Mergenthaler', 7540);
insert into z_Department  values ( 200, 'AS', 'Psychology', '223', 'Ames', 7055);
insert into z_Department  values ( 340, 'AS', 'French', '225', 'Gilman', 7227);
insert into z_Department  values ( 350, 'AS', 'Hispanic/Italian Studies', '221', 'Gilman', 7226);
insert into z_Department  values ( 520, 'EN', 'ECE', '105', 'Barton', 7033);
insert into z_Department  values ( 530, 'EN', 'Mechanical Engineering', '122', 'Latrobe', 7132);
insert into z_Department  values ( 540, 'EN', 'Chemical Engineering', '24', 'NEB', 7170);
insert into z_Department  values ( 550, 'EN', 'Mathematical Sciences', '221', 'Maryland', 7195);
insert into z_Department  values ( 560, 'EN', 'Civil Engineering', '206', 'Latrobe', 8680);
insert into z_Department  values ( 580, 'EN', 'Biomedical Engineering', '144', 'NEB', 8482);
insert into z_Department  values ( 600, 'EN', 'Computer Science', '224', 'NEB', 8577);

insert into z_Member_of values (7792,  600, 'Primary');
insert into z_Member_of values (9210,  520, 'Primary');
insert into z_Member_of values (9811,  550, 'Primary');
insert into z_Member_of values (9643,  050, 'Primary');
insert into z_Member_of values (9379,  520, 'Primary');
insert into z_Member_of values (8918,  600, 'Primary');
insert into z_Member_of values (7712,  600, 'Primary');
insert into z_Member_of values (1121,  600, 'Primary');
insert into z_Member_of values (9172,  600, 'Primary');
insert into z_Member_of values (8423,  600, 'Primary');
insert into z_Member_of values (1148,  600, 'Primary');
insert into z_Member_of values (8741,  600, 'Primary');
insert into z_Member_of values (3457,  600, 'Primary');
insert into z_Member_of values (7723,  600, 'Primary');
insert into z_Member_of values (8721,  600, 'Primary');
insert into z_Member_of values (2192,  600, 'Primary');
insert into z_Member_of values (8114,  600, 'Primary');
insert into z_Member_of values (6112,  600, 'Primary');
insert into z_Member_of values (9826,  600, 'Primary');
insert into z_Member_of values (1193,  600, 'Primary');
insert into z_Member_of values (1082,  600, 'Primary');
insert into z_Member_of values (4230,  600, 'Primary');
insert into z_Member_of values (8989,  600, 'Secondary');
insert into z_Member_of values (7271,  600, 'Secondary');
insert into z_Member_of values (8721,  520, 'Secondary');
insert into z_Member_of values (8741,  050, 'Secondary');
insert into z_Member_of values (7271,  050, 'Secondary');
insert into z_Member_of values (6182,  550, 'Primary');
insert into z_Member_of values (8772,  550, 'Primary');
insert into z_Member_of values (2738,  550, 'Primary');
insert into z_Member_of values (2881,  550, 'Primary');
insert into z_Member_of values (9922,  550, 'Primary');
insert into z_Member_of values (6541,  550, 'Primary');
insert into z_Member_of values (8102,  550, 'Primary');
insert into z_Member_of values (1177,  550, 'Primary');
insert into z_Member_of values (9823,  550, 'Primary');
insert into z_Member_of values (2311,  550, 'Primary');
insert into z_Member_of values (2291,  550, 'Primary');
insert into z_Member_of values (8122,  550, 'Primary');
insert into z_Member_of values (8989,  050, 'Primary');
insert into z_Member_of values (4432,  050, 'Primary');
insert into z_Member_of values (5718,  050, 'Primary');
insert into z_Member_of values (8791,  050, 'Primary');
insert into z_Member_of values (9011,  050, 'Primary');
insert into z_Member_of values (6910,  050, 'Primary');
insert into z_Member_of values (8723,  520, 'Primary');
insert into z_Member_of values (2028,  520, 'Primary');
insert into z_Member_of values (8722,  520, 'Primary');
insert into z_Member_of values (9191,  520, 'Primary');
insert into z_Member_of values (1823,  520, 'Primary');
insert into z_Member_of values (7134,  520, 'Primary');
insert into z_Member_of values (9199,  520, 'Primary');
insert into z_Member_of values (6925,  520, 'Primary');
insert into z_Member_of values (7271,  520, 'Primary');
insert into z_Member_of values (6191,  520, 'Primary');
insert into z_Member_of values (2119,  520, 'Primary');
insert into z_Member_of values (9514,  520, 'Primary');
insert into z_Member_of values (7231,  520, 'Primary');
insert into z_Member_of values (1172,  520, 'Primary');
insert into z_Member_of values (8118,  520, 'Primary');
insert into z_Member_of values (7506,  520, 'Primary');
insert into z_Member_of values (6330,  520, 'Primary');
insert into z_Member_of values (9824,  520, 'Primary');


insert into z_Course values ( '600.101', 'COMPUTER LITERACY', 3, 6112, 'MTW', '3',600);
insert into z_Course values ( '600.103', 'INTRODUCTION TO COMPUTER SCIENCE', 1, 4230, 'Th', '4',600);
insert into z_Course values ( '600.107', 'INTRO TO PROGRAMMING IN JAVA', 3, 1193, 'MTW', '3',600);
insert into z_Course values ( '600.109', 'INTRO TO PROGRAMMING IN C/C++', 3, 4230, 'MTW', '12',600);
insert into z_Course values ( '600.113', 'EXPLORING THE INTERNET', 3, 6112, 'MTW', '4',600);
insert into z_Course values ( '600.121', 'JAVA PROGRAMMING', 3, 6112, 'ThF', '10:30-12',600);
insert into z_Course values ( '600.211', 'UNIX SYSTEMS PROGRAMMING', 3, 6112, 'ThF', '1-2:15',600);
insert into z_Course values ( '600.227', 'DATA STRUCTURES in JAVA', 3, 1121, 'MTW', '9',600);
insert into z_Course values ( '600.232', 'MULTIMEDIA COMPUTING', 3, 9826, 'MW', '1-2:30',600);
insert into z_Course values ( '600.271', 'COMPUTATIONAL MODELS', 3, 9172, 'MTW', '1',600);
insert into z_Course values ( '600.303', 'SUPERCOMPUTING', 1, 9826, 'W', '4-6:20',600);
insert into z_Course values ( '600.315', 'DATABASE SYSTEMS', 3, 2192, 'ThF', '2:30-4',600);
insert into z_Course values ( '600.333', 'COMPUTER SYSTEM FUNDAMENTALS', 3, 1148, 'MTW', '8',600);
insert into z_Course values ( '600.337', 'DISTRIBUTED SYSTEMS', 3, 8918, 'M', '3',600);
insert into z_Course values ( '600.363', 'INTRODUCTION TO ALGORITHMS', 3, 7712, 'MTW', '9',600);
insert into z_Course values ( '600.415', 'DATABASE SYSTEMS', 3, 2192, 'ThF', '2:30-4',600);
insert into z_Course values ( '600.433', 'COMPUTER SYSTEMS', 3, 1148, 'MTW', '8',600);
insert into z_Course values ( '600.437', 'DISTRIBUTED SYSTEMS', 3, 8918, 'M', '3',600);
insert into z_Course values ( '600.445', 'QUANTITATIVE MEDICAL COMPUTING', 3, 7723, 'ThF', '1-2:15',600);
insert into z_Course values ( '600.461', 'COMPUTER VISION', 3, 8114, 'MTW', '1',600);
insert into z_Course values ( '600.463', 'ALGORITHMS I', 3, 7712, 'MTW', '9',600);
insert into z_Course values ( '600.465', 'INTRO TO NATURAL LANGUAGE PROCESSING', 3, 7792, 'MTW', '2',600);
insert into z_Course values ( '600.509', 'COMPUTER SCIENCE INTERNSHIP', 3, 1121, 'M', '1',600);
insert into z_Course values ( '600.601', 'COMPUTER SCIENCE SEMINAR', 1, 6191, 'ThF', '10:30-12',600);
insert into z_Course values ( '600.657', 'HIGH PERFORMANCE GRAPHICS AND MODELING', 3, 8423, 'M', '4-5:30',600);
insert into z_Course values ( '600.787', 'SEMINAR ON COMPUTATIONAL GEOMETRY', 3, 1121, 'Th', '2',600);
insert into z_Course values ( '550.111', 'STATISTICAL ANALYSIS', 4, 2311, 'MTW', '12',550);
insert into z_Course values ( '550.171', 'DISCRETE MATHEMATICS', 4, 8772, 'MTW', '11',550);
insert into z_Course values ( '500.203', 'ACCOUNTING I', 3, 9823, 'T', '6:15-8:45',550);
insert into z_Course values ( '500.204', 'ACCOUNTING II', 3, 9823, 'Th', '6:15-8:45',550);
insert into z_Course values ( '500.205', 'BUSINESS LAW I', 3, 8791, 'W', '6:15-8:45',550);
insert into z_Course values ( '500.206', 'BUSINESS LAW II', 3, 8791, 'M', '6:15-8:45',550);
insert into z_Course values ( '550.291', 'LINEAR ALGEBRA AND DIFFERENTIAL EQNS', 4, 6541, 'MTW', '9',550);
insert into z_Course values ( '550.310', 'PROBABILITY AND STATISTICS', 4, 8102, 'MTW', '10',550);
insert into z_Course values ( '550.361', 'INTRODUCTION TO OPTIMIZATION', 4, 2881, 'MTW', '2',550);
insert into z_Course values ( '550.413', 'APPLIED STATISTICS AND DATA ANALYSIS', 4, 1177, 'MTW', '11',550);
insert into z_Course values ( '550.420', 'INTRODUCTION TO PROBABILITY', 4, 2738, 'MTW', '1',550);
insert into z_Course values ( '550.471', 'COMBINATORIAL ANALYSIS', 4, 8772, 'MTW', '12',550);
insert into z_Course values ( '550.620', 'PROBABILITY THEORY I', 3, 2738, 'MTW', '2',550);
insert into z_Course values ( '550.626', 'STOCHASTIC PROCESSES II', 3, 8102, 'MTW', '1',550);
insert into z_Course values ( '550.631', 'STATISTICAL INFERENCE', 3, 6182, 'MTW', '3',550);
insert into z_Course values ( '550.661', 'FOUNDATIONS OF OPTIMIZATION', 3, 9823, 'MTW', '10',550);
insert into z_Course values ( '550.671', 'COMBINATORIAL ANALYSIS', 3, 8772, 'MTW', '12',550);
insert into z_Course values ( '550.681', 'NUMERICAL ANALYSIS', 3, 6541, 'MTW', '11',550);
insert into z_Course values ( '550.721', 'PERCOLATION THEORY', 3, 8122, 'MTW', '9',550);
insert into z_Course values ( '550.750', 'TOPICS IN OPERATIONS RESEARCH', 3, 9922, 'MW', '3-4:30',550);
insert into z_Course values ( '550.790', 'TOPICS IN APPLIED MATH', 2, 2881, 'MT', '4:30-6',550);
insert into z_Course values ( '520.137', 'INTRODUCTION TO ECE', 3, 8723, 'MTW', '11',520);
insert into z_Course values ( '520.213', 'CIRCUITS', 4, 9210, 'MTW', '2',520);
insert into z_Course values ( '520.219', 'FIELDS, MATTER AND WAVES', 3, 9210, 'MTW', '3',520);
insert into z_Course values ( '520.325', 'INTEGRATED ELECTRONICS', 3, 6191, 'MTW', '3',520);
insert into z_Course values ( '520.345', 'ECE LABORATORY', 3, 1823, 'W', '2',520);
insert into z_Course values ( '520.349', 'MICROPROCESSOR LAB I', 3, 9824, 'Th', '8',520);
insert into z_Course values ( '520.353', 'CONTROL SYSTEMS', 3, 6925, 'MTW', '10',520);
insert into z_Course values ( '520.401', 'BASIC COMMUNICATIONS', 3, 6191, 'MTW', '1',520);
insert into z_Course values ( '520.410', 'FIBER OPTICS AND PHOTONICS', 3, 6191, 'MTW', '1',520);
insert into z_Course values ( '520.419', 'ITERATIVE ALGORITHMS', 3, 2119, 'MT', '4-5:15',520);
insert into z_Course values ( '520.421', 'INTRODUCTION TO NON-LINEAR SYSTEMS', 3, 7231, 'MTW', '9',520);
insert into z_Course values ( '520.432', 'TOPICS IN MEDICAL IMAGING SYSTEMS', 3, 9514, 'TTh', '8:30-10',520);
insert into z_Course values ( '520.435', 'DIGITAL SIGNAL PROCESSING', 4, 8118, 'MTW', '11',520);
insert into z_Course values ( '520.475', 'PROCESSING AND RECOGNITION OF SPEECH', 3, 6330, 'TW', '2-3:30',520);
insert into z_Course values ( '520.490', 'ANALOG AND DIGITAL VLSI SYSTEMS', 3, 8722, 'ThF', '10:30-12',520);
insert into z_Course values ( '520.603', 'ELECTROMAGNETIC WAVES', 4, 9210, 'Th', '1-4:30',520);
insert into z_Course values ( '520.605', 'SOLID STATE PHYSICS', 3, 9379, 'Tu', '1-4',520);
insert into z_Course values ( '520.609', 'NONLINEAR TECHNICAL IMAGE PROCESSING', 3, 7134, 'Th', '1-4',520);
insert into z_Course values ( '520.651', 'RANDOM SIGNAL ANALYSIS', 3, 9514, 'ThF', '10:30-12',520);
insert into z_Course values ( '050.102', 'LANGUAGE AND MIND', 3, 4432, 'MTW', '10',050);
insert into z_Course values ( '050.109', 'MIND, BRAIN, COMPUTERS', 3, 6910, 'MW', '2-3:15',050);
insert into z_Course values ( '050.203', 'COGNITIVE NEUROSCIENCE', 4, 9011, 'MT', '3:30-4:45',050);
insert into z_Course values ( '050.325', 'SOUND STRUCTURES IN NATURAL LANGUAGE', 3, 4432, 'T', '10-12',050);
insert into z_Course values ( '050.370', 'FORMAL METHODS IN COGNITIVE SCIENCE', 3, 6910, 'MW', '11:30',050);
insert into z_Course values ( '050.381', 'LANGUAGE DEVELOPMENT', 3, 8989, 'T', '1-3',050);
insert into z_Course values ( '050.427', 'THE HISTORY OF ROMANCE LANGUAGES', 3, 4432, 'W', '1-3',050);
insert into z_Course values ( '050.670', 'FORMAL METHODS IN COGNITIVE SCIENCE', 3, 4432, 'MW', '11:30-12:45',050);
insert into z_Course values ( '050.802', 'RESEARCH SEMINAR IN COGNITIVE PROCESSES', 1, 9011, 'W', '1-3',050);
insert into z_Course values ( '050.821', 'COMP. MODELS OF SENTENCE PROCESSING', 3, 5718, 'M', '1-4',050);


insert into z_Minor_in values ( 1004, 520);
insert into z_Minor_in values ( 1005, 550);
insert into z_Minor_in values ( 1006, 050);
insert into z_Minor_in values ( 1007, 520);
insert into z_Minor_in values ( 1008, 550);
insert into z_Minor_in values ( 1014, 090);
insert into z_Minor_in values ( 1015, 140);
insert into z_Minor_in values ( 1016, 190);
insert into z_Minor_in values ( 1027, 530);
insert into z_Minor_in values ( 1031, 540);


insert into z_Gradeconversion values ('A+', 4.0);
insert into z_Gradeconversion values ('A',  4.0);
insert into z_Gradeconversion values ('A-', 3.7);
insert into z_Gradeconversion values ('B+', 3.3);
insert into z_Gradeconversion values ('B',  3.0);
insert into z_Gradeconversion values ('B-', 2.7);
insert into z_Gradeconversion values ('C+', 2.3);
insert into z_Gradeconversion values ('C',  2.0);
insert into z_Gradeconversion values ('C-', 1.7);
insert into z_Gradeconversion values ('D+', 1.3);
insert into z_Gradeconversion values ('D',  1.0);
insert into z_Gradeconversion values ('D-', 0.7);
insert into z_Gradeconversion values ('F',  0.0);


insert into z_Enrolled_in values ( 1001, '550.681', 'A-');
insert into z_Enrolled_in values ( 1001, '600.303', 'B');
insert into z_Enrolled_in values ( 1001, '600.315', 'B+');
insert into z_Enrolled_in values ( 1001, '600.337', 'A');
insert into z_Enrolled_in values ( 1001, '600.461', 'B-');
insert into z_Enrolled_in values ( 1001, '600.465', 'B');
insert into z_Enrolled_in values ( 1002, '520.213', 'B+');
insert into z_Enrolled_in values ( 1002, '600.211', 'C');
insert into z_Enrolled_in values ( 1002, '600.303', 'C+');
insert into z_Enrolled_in values ( 1002, '600.337', 'A');
insert into z_Enrolled_in values ( 1002, '600.463', 'B');
insert into z_Enrolled_in values ( 1002, '600.465', 'B+');
insert into z_Enrolled_in values ( 1003, '600.333', 'B');
insert into z_Enrolled_in values ( 1003, '600.337', 'B');
insert into z_Enrolled_in values ( 1003, '600.415', 'B');
insert into z_Enrolled_in values ( 1003, '600.461', 'B+');
insert into z_Enrolled_in values ( 1003, '600.465', 'B');
insert into z_Enrolled_in values ( 1004, '600.303', 'C-');
insert into z_Enrolled_in values ( 1004, '600.415', 'C-');
insert into z_Enrolled_in values ( 1004, '600.437', 'C-');
insert into z_Enrolled_in values ( 1004, '600.445', 'A-');
insert into z_Enrolled_in values ( 1004, '600.461', 'C');
insert into z_Enrolled_in values ( 1004, '600.463', 'A+');
insert into z_Enrolled_in values ( 1004, '600.465', 'A');
insert into z_Enrolled_in values ( 1005, '600.103', 'A');
insert into z_Enrolled_in values ( 1005, '600.107', 'C+');
insert into z_Enrolled_in values ( 1005, '600.113', 'C');
insert into z_Enrolled_in values ( 1005, '600.227', 'A');
insert into z_Enrolled_in values ( 1005, '600.303', 'B');
insert into z_Enrolled_in values ( 1006, '550.420', 'B');
insert into z_Enrolled_in values ( 1006, '600.107', 'B+');
insert into z_Enrolled_in values ( 1006, '600.227', 'B-');
insert into z_Enrolled_in values ( 1006, '600.232', 'C-');
insert into z_Enrolled_in values ( 1006, '600.303', 'A-');
insert into z_Enrolled_in values ( 1006, '600.315', 'A');
insert into z_Enrolled_in values ( 1007, '550.420', 'A');
insert into z_Enrolled_in values ( 1007, '600.113', 'A-');
insert into z_Enrolled_in values ( 1007, '600.227', 'C+');
insert into z_Enrolled_in values ( 1007, '600.315', 'A');
insert into z_Enrolled_in values ( 1007, '600.333', 'A-');
insert into z_Enrolled_in values ( 1007, '600.337', 'C');
insert into z_Enrolled_in values ( 1008, '600.415', 'A+');
insert into z_Enrolled_in values ( 1008, '600.463', 'B');
insert into z_Enrolled_in values ( 1008, '600.465', 'B');
insert into z_Enrolled_in values ( 1008, '600.657', 'B');
insert into z_Enrolled_in values ( 1008, '600.787', 'B');
insert into z_Enrolled_in values ( 1009, '550.413', 'B+');
insert into z_Enrolled_in values ( 1009, '550.471', 'C');
insert into z_Enrolled_in values ( 1009, '550.620', 'A-');
insert into z_Enrolled_in values ( 1009, '550.626', 'B');
insert into z_Enrolled_in values ( 1009, '550.671', 'C');
insert into z_Enrolled_in values ( 1009, '550.681', 'A');
insert into z_Enrolled_in values ( 1009, '550.661', 'B-');
insert into z_Enrolled_in values ( 1009, '550.631', 'A-');
insert into z_Enrolled_in values ( 1010, '550.291', 'A');
insert into z_Enrolled_in values ( 1010, '550.310', 'A');
insert into z_Enrolled_in values ( 1010, '550.413', 'C+');
insert into z_Enrolled_in values ( 1010, '550.420', 'A');
insert into z_Enrolled_in values ( 1010, '550.471', 'A');
insert into z_Enrolled_in values ( 1010, '600.107', 'B+');
insert into z_Enrolled_in values ( 1011, '520.213', 'B');
insert into z_Enrolled_in values ( 1011, '520.345', 'B');
insert into z_Enrolled_in values ( 1011, '520.349', 'A');
insert into z_Enrolled_in values ( 1011, '520.353', 'A-');
insert into z_Enrolled_in values ( 1011, '550.420', 'B');
insert into z_Enrolled_in values ( 1011, '600.415', 'B+');
insert into z_Enrolled_in values ( 1012, '050.109', 'B-');
insert into z_Enrolled_in values ( 1012, '050.203', 'B-');
insert into z_Enrolled_in values ( 1012, '050.325', 'A-');
insert into z_Enrolled_in values ( 1012, '600.107', 'A');
insert into z_Enrolled_in values ( 1012, '600.315', 'B');
insert into z_Enrolled_in values ( 1014, '600.107', 'A');
insert into z_Enrolled_in values ( 1014, '600.227', 'A');
insert into z_Enrolled_in values ( 1014, '600.232', 'A');
insert into z_Enrolled_in values ( 1014, '600.315', 'A+');
insert into z_Enrolled_in values ( 1014, '600.445', 'B');
insert into z_Enrolled_in values ( 1014, '600.461', 'B');
insert into z_Enrolled_in values ( 1014, '600.463', 'B');
insert into z_Enrolled_in values ( 1015, '550.420', 'A');
insert into z_Enrolled_in values ( 1015, '600.227', 'A+');
insert into z_Enrolled_in values ( 1015, '600.303', 'A');
insert into z_Enrolled_in values ( 1015, '600.315', 'C-');
insert into z_Enrolled_in values ( 1015, '600.333', 'A');
insert into z_Enrolled_in values ( 1016, '050.109', 'B-');
insert into z_Enrolled_in values ( 1016, '050.203', 'D-');
insert into z_Enrolled_in values ( 1016, '050.325', 'A');
insert into z_Enrolled_in values ( 1016, '050.821', 'A');
insert into z_Enrolled_in values ( 1016, '550.420', 'A-');
insert into z_Enrolled_in values ( 1016, '600.107', 'B+');
insert into z_Enrolled_in values ( 1016, '600.315', 'B-');
insert into z_Enrolled_in values ( 1017, '050.427', 'B');
insert into z_Enrolled_in values ( 1017, '050.670', 'B');
insert into z_Enrolled_in values ( 1017, '050.802', 'C');
insert into z_Enrolled_in values ( 1017, '550.681', 'B');
insert into z_Enrolled_in values ( 1017, '600.109', 'A-');
insert into z_Enrolled_in values ( 1017, '600.461', 'A');
insert into z_Enrolled_in values ( 1017, '600.465', 'C');
insert into z_Enrolled_in values ( 1018, '520.213', 'A-');
insert into z_Enrolled_in values ( 1018, '600.211', 'A');
insert into z_Enrolled_in values ( 1018, '600.303', 'A');
insert into z_Enrolled_in values ( 1018, '600.337', 'C-');
insert into z_Enrolled_in values ( 1018, '600.463', 'B');
insert into z_Enrolled_in values ( 1018, '600.465', 'B');
insert into z_Enrolled_in values ( 1019, '600.103', 'B');
insert into z_Enrolled_in values ( 1019, '600.107', 'B');
insert into z_Enrolled_in values ( 1019, '600.113', 'D+');
insert into z_Enrolled_in values ( 1019, '600.227', 'A');
insert into z_Enrolled_in values ( 1019, '600.303', 'A');
insert into z_Enrolled_in values ( 1020, '600.333', 'A');
insert into z_Enrolled_in values ( 1020, '600.337', 'A');
insert into z_Enrolled_in values ( 1020, '600.415', 'A');
insert into z_Enrolled_in values ( 1020, '600.461', 'A');
insert into z_Enrolled_in values ( 1020, '600.465', 'A');
insert into z_Enrolled_in values ( 1021, '600.303', 'B-');
insert into z_Enrolled_in values ( 1021, '600.303', 'B');
insert into z_Enrolled_in values ( 1021, '600.415', 'B');
insert into z_Enrolled_in values ( 1021, '600.437', 'B');
insert into z_Enrolled_in values ( 1021, '600.437', 'B');
insert into z_Enrolled_in values ( 1021, '600.445', 'B-');
insert into z_Enrolled_in values ( 1021, '600.445', 'C');
insert into z_Enrolled_in values ( 1021, '600.463', 'A');
insert into z_Enrolled_in values ( 1021, '600.463', 'B');
insert into z_Enrolled_in values ( 1022, '550.420', 'B');
insert into z_Enrolled_in values ( 1022, '550.420', 'B+');
insert into z_Enrolled_in values ( 1022, '600.107', 'A');
insert into z_Enrolled_in values ( 1022, '600.227', 'A');
insert into z_Enrolled_in values ( 1022, '600.227', 'A');
insert into z_Enrolled_in values ( 1022, '600.232', 'B');
insert into z_Enrolled_in values ( 1022, '600.303', 'B');
insert into z_Enrolled_in values ( 1022, '600.315', 'D');
insert into z_Enrolled_in values ( 1022, '600.461', 'A');
insert into z_Enrolled_in values ( 1023, '600.113', 'A-');
insert into z_Enrolled_in values ( 1023, '600.315', 'B');
insert into z_Enrolled_in values ( 1023, '600.333', 'B');
insert into z_Enrolled_in values ( 1023, '600.337', 'B+');
insert into z_Enrolled_in values ( 1023, '600.463', 'A');
insert into z_Enrolled_in values ( 1023, '600.465', 'A');
insert into z_Enrolled_in values ( 1023, '600.657', 'B');
insert into z_Enrolled_in values ( 1023, '600.787', 'B');
insert into z_Enrolled_in values ( 1024, '550.291', 'B');
insert into z_Enrolled_in values ( 1024, '550.413', 'C');
insert into z_Enrolled_in values ( 1024, '550.471', 'A-');
insert into z_Enrolled_in values ( 1024, '550.620', 'A');
insert into z_Enrolled_in values ( 1024, '550.626', 'B');
insert into z_Enrolled_in values ( 1024, '550.671', 'B');
insert into z_Enrolled_in values ( 1024, '550.681', 'B');
insert into z_Enrolled_in values ( 1024, '600.415', 'B');
insert into z_Enrolled_in values ( 1025, '520.213', 'A');
insert into z_Enrolled_in values ( 1025, '520.345', 'A+');
insert into z_Enrolled_in values ( 1025, '550.310', 'A');
insert into z_Enrolled_in values ( 1025, '550.413', 'A');
insert into z_Enrolled_in values ( 1025, '550.420', 'C');
insert into z_Enrolled_in values ( 1025, '550.471', 'B');
insert into z_Enrolled_in values ( 1025, '600.107', 'B');
insert into z_Enrolled_in values ( 1026, '520.349', 'A');
insert into z_Enrolled_in values ( 1026, '520.353', 'A');
insert into z_Enrolled_in values ( 1026, '600.303', 'A');
insert into z_Enrolled_in values ( 1026, '600.437', 'A');
insert into z_Enrolled_in values ( 1026, '600.445', 'A');
insert into z_Enrolled_in values ( 1026, '600.463', 'B-');
insert into z_Enrolled_in values ( 1027, '600.107', 'B');
insert into z_Enrolled_in values ( 1027, '600.227', 'B');
insert into z_Enrolled_in values ( 1027, '600.232', 'B');
insert into z_Enrolled_in values ( 1027, '600.303', 'B');
insert into z_Enrolled_in values ( 1027, '600.315', 'B-');
insert into z_Enrolled_in values ( 1027, '600.461', 'B-');
insert into z_Enrolled_in values ( 1027, '600.463', 'B');
insert into z_Enrolled_in values ( 1028, '550.420', 'B+');
insert into z_Enrolled_in values ( 1028, '600.227', 'A');
insert into z_Enrolled_in values ( 1028, '600.315', 'A+');
insert into z_Enrolled_in values ( 1028, '600.333', 'A');
insert into z_Enrolled_in values ( 1028, '600.337', 'A+');
insert into z_Enrolled_in values ( 1029, '550.413', 'C-');
insert into z_Enrolled_in values ( 1029, '550.471', 'A');
insert into z_Enrolled_in values ( 1029, '550.620', 'B-');
insert into z_Enrolled_in values ( 1029, '550.671', 'A-');
insert into z_Enrolled_in values ( 1029, '600.113', 'B-');
insert into z_Enrolled_in values ( 1029, '600.463', 'A+');
insert into z_Enrolled_in values ( 1030, '520.345', 'B');
insert into z_Enrolled_in values ( 1030, '550.291', 'B');
insert into z_Enrolled_in values ( 1030, '550.310', 'B-');
insert into z_Enrolled_in values ( 1030, '550.413', 'B-');
insert into z_Enrolled_in values ( 1030, '550.420', 'B');
insert into z_Enrolled_in values ( 1030, '550.471', 'B+');
insert into z_Enrolled_in values ( 1030, '600.107', 'B');
insert into z_Enrolled_in values ( 1031, '520.213', 'B+');
insert into z_Enrolled_in values ( 1031, '520.349', 'B');
insert into z_Enrolled_in values ( 1031, '520.353', 'C');
insert into z_Enrolled_in values ( 1031, '600.437', 'A+');
insert into z_Enrolled_in values ( 1032, '550.420', 'A-');
insert into z_Enrolled_in values ( 1032, '550.420', 'D-');
insert into z_Enrolled_in values ( 1032, '600.232', 'A-');
insert into z_Enrolled_in values ( 1032, '600.303', 'A');
insert into z_Enrolled_in values ( 1032, '600.315', 'A');
insert into z_Enrolled_in values ( 1033, '600.113', 'A');
insert into z_Enrolled_in values ( 1033, '600.227', 'A');
insert into z_Enrolled_in values ( 1033, '600.315', 'A');
insert into z_Enrolled_in values ( 1033, '600.333', 'A');
insert into z_Enrolled_in values ( 1033, '600.337', 'B');
insert into z_Enrolled_in values ( 1034, '050.109', 'B+');
insert into z_Enrolled_in values ( 1034, '050.203', 'B');
insert into z_Enrolled_in values ( 1034, '050.325', 'B');
insert into z_Enrolled_in values ( 1034, '600.107', 'B+');
insert into z_Enrolled_in values ( 1034, '600.315', 'B');
insert into z_Enrolled_in values ( 1035, '050.381', 'B-');
insert into z_Enrolled_in values ( 1035, '050.427', 'A-');
insert into z_Enrolled_in values ( 1035, '050.670', 'B');
insert into z_Enrolled_in values ( 1035, '050.802', 'D');
insert into z_Enrolled_in values ( 1035, '050.821', 'A');
insert into z_Enrolled_in values ( 1035, '600.109', 'B-');

-- =====================================================
-- SECTION 2: Songs Database
-- =====================================================

-- Drop existing tables if they exist
DROP TABLE songs CASCADE CONSTRAINTS;
DROP TABLE albums CASCADE CONSTRAINTS;
DROP TABLE artists CASCADE CONSTRAINTS;
DROP TABLE platforms CASCADE CONSTRAINTS;

-- Create platforms table
CREATE TABLE platforms (
  platform_code VARCHAR2(10) PRIMARY KEY,
  platform_name VARCHAR2(50) NOT NULL
);

-- Create artists table
CREATE TABLE artists (
  artist_code VARCHAR2(10) PRIMARY KEY,
  artist_name VARCHAR2(100) NOT NULL,
  country VARCHAR2(50),
  platform_code VARCHAR2(10),
  CONSTRAINT artists_unique_name UNIQUE (artist_name),
  FOREIGN KEY (platform_code) REFERENCES platforms(platform_code)
);

-- Create albums table
CREATE TABLE albums (
  album_code VARCHAR2(10) PRIMARY KEY,
  album_title VARCHAR2(150) NOT NULL,
  release_year INT,
  artist_code VARCHAR2(10),
  CONSTRAINT albums_unique_title_per_artist UNIQUE (album_title, artist_code),
  FOREIGN KEY (artist_code) REFERENCES artists(artist_code)
);

-- Create songs table
CREATE TABLE songs (
  song_code VARCHAR2(10) PRIMARY KEY,
  song_title VARCHAR2(150) NOT NULL,
  duration INT,
  genre VARCHAR2(50),
  plays INT DEFAULT 0,
  likes INT DEFAULT 0,
  skips INT DEFAULT 0,
  album_code VARCHAR2(10),
  CONSTRAINT songs_unique_title_in_album UNIQUE (song_title, album_code),
  FOREIGN KEY (album_code) REFERENCES albums(album_code)
);

-- Insert platforms
INSERT INTO platforms (platform_code, platform_name) VALUES ('PC01', 'Spotify');
INSERT INTO platforms (platform_code, platform_name) VALUES ('PC02', 'Apple Music');
INSERT INTO platforms (platform_code, platform_name) VALUES ('PC03', 'Pandora');

-- Insert artists
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC01', 'The Beatles', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC02', 'Taylor Swift', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC03', 'Kendrick Lamar', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC04', 'Eminem', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC05', 'Led Zeppelin', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC06', 'Dua Lipa', 'UK', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC07', 'Adele', 'UK', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC08', 'Frank Sinatra', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC09', 'Johnny Cash', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC10', 'Queen', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC11', 'Ed Sheeran', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC12', 'Billie Eilish', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC13', 'Drake', 'Canada', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC14', 'Rihanna', 'Barbados', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC15', 'Coldplay', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC16', 'Post Malone', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC17', 'Lady Gaga', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC18', 'BTS', 'South Korea', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC19', 'ACDC', 'Australia', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC20', 'Nirvana', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC21', 'Michael Jackson', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC22', 'Madonna', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC23', 'U2', 'Ireland', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC24', 'Beyoncé', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC25', 'Elton John', 'UK', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC26', 'The Rolling Stones', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC27', 'Maroon 5', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC28', 'Pink Floyd', 'UK', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC29', 'Bruno Mars', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC30', 'Ariana Grande', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC31', 'Bob Dylan', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC32', 'Daft Punk', 'France', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC33', 'Shakira', 'Colombia', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC34', 'Eagles', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC35', 'Justin Bieber', 'Canada', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC36', 'Snoop Dogg', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC37', 'Red Hot Chili Peppers', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC38', 'The Weeknd', 'Canada', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC39', 'Katy Perry', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC40', 'Metallica', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC41', 'Whitney Houston', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC42', 'Prince', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC43', 'Britney Spears', 'USA', 'PC03');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC44', 'Green Day', 'USA', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC45', 'The Killers', 'USA', 'PC02');
INSERT INTO artists (artist_code, artist_name, platform_code) VALUES ('AC46', 'Eric Cameron', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC47', 'Shawn Mendes', 'Canada', 'PC01');
INSERT INTO artists (artist_code, artist_name, country, platform_code) VALUES ('AC48', 'Fleetwood Mac', 'UK', 'PC01');

-- Insert albums
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB01', 'Abbey Road', 1969, 'AC01');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB02', '1989', 2014, 'AC02');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB03', 'DAMN.', 2017, 'AC03');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB04', 'The Slim Shady LP', 1999, 'AC04');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB05', 'Led Zeppelin IV', 1971, 'AC05');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB06', 'Future Nostalgia', 2020, 'AC06');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB07', '21', 2011, 'AC07');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB08', 'Come Fly with Me', 1957, 'AC08');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB09', 'American IV: The Man Comes Around', 2002, 'AC09');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB10', 'A Night at the Opera', 1975, 'AC10');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB11', 'Red', 2012, 'AC02');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB12', 'good kid, m.A.A.d city', 2012, 'AC03');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB13', 'The Eminem Show', 2002, 'AC04');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB14', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 'AC01');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB15', '25', 2015, 'AC07');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB16', 'Rumours', 1977, 'AC48');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB17', '÷ (Divide)', 2017, 'AC11');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB18', 'Happier Than Ever', 2021, 'AC12');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB19', 'Scorpion', 2018, 'AC13');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB20', 'Anti', 2016, 'AC14');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB21', 'A Head Full of Dreams', 2015, 'AC15');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB22', 'Hollywood''s Bleeding', 2019, 'AC16');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB23', 'The Fame Monster', 2009, 'AC17');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB24', 'MAP OF THE SOUL: 7', 2020, 'AC18');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB25', 'Back in Black', 1980, 'AC19');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB26', 'Nevermind', 1991, 'AC20');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB27', 'Thriller', 1982, 'AC21');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB28', 'Like a Virgin', 1984, 'AC22');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB29', 'The Joshua Tree', 1987, 'AC23');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB30', 'Lemonade', 2016, 'AC24');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB31', 'Goodbye Yellow Brick Road', 1973, 'AC25');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB32', 'Sticky Fingers', 1971, 'AC26');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB33', 'Songs About Jane', 2002, 'AC27');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB34', 'The Dark Side of the Moon', 1973, 'AC28');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB35', 'Doo-Wops & Hooligans', 2010, 'AC29');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB36', 'Thank U, Next', 2019, 'AC30');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB37', 'The Freewheelin'' Bob Dylan', 1963, 'AC31');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB38', 'Discovery', 2001, 'AC32');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB39', 'Fijación Oral, Vol. 1', 2005, 'AC33');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB40', 'Hotel California', 1976, 'AC34');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB41', 'Purpose', 2015, 'AC35');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB42', 'Doggystyle', 1993, 'AC36');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB43', 'Californication', 1999, 'AC37');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB44', 'After Hours', 2020, 'AC38');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB45', 'Teenage Dream', 2010, 'AC39');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB46', 'Master of Puppets', 1986, 'AC40');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB47', 'The Bodyguard', 1992, 'AC41');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB48', 'Purple Rain', 1984, 'AC42');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB49', '...Baby One More Time', 1999, 'AC43');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB50', 'American Idiot', 2004, 'AC44');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB51', 'Hot Fuss', 2004, 'AC45');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB52', 'Recovery', 2010, 'AC04');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB53', 'X', 2014, 'AC11');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB54', 'Illuminate', 2016, 'AC47');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB55', 'Thriller 25', 2008, 'AC21');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB56', 'V', 2014, 'AC27');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB57', 'Unorthodox Jukebox', 2012, 'AC29');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB58', 'My Everything', 2014, 'AC30');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB59', 'Loud', 2010, 'AC14');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB60', '19', 2008, 'AC45');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB61', 'Led Zeppelin I', 1969, 'AC05');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB62', 'A Rush of Blood to the Head', 2002, 'AC11');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB63', 'DAMN. (Collector''s Edition)', 2017, 'AC03');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB64', 'More Life', 2017, 'AC13');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB65', 'Born This Way', 2011, 'AC17');
INSERT INTO albums (album_code, album_title, release_year, artist_code) VALUES ('AB66', 'Mylo Xyloto', 2011, 'AC15');

-- Insert songs
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC01', 'Come Together', 259, 'Rock', 5000000, 1500, 50, 'AB01');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC02', 'Bad Blood', 200, 'Pop', 12000000, 2500, 10, 'AB02');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC03', 'HUMBLE.', 177, 'Hip Hop', 8000000, 3000, 5, 'AB03');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC04', 'My Name Is', 269, 'Hip Hop', 6000000, 2200, 15, 'AB04');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC05', 'Stairway to Heaven', 482, 'Rock', 15000000, 5000, 2, 'AB05');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC06', 'Levitating', 203, 'Pop', 9000000, 2800, 8, 'AB06');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC07', 'Rolling in the Deep', 228, 'R&B', 7500000, 3200, 3, 'AB07');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC08', 'Come Fly with Me', 178, 'Jazz', 4000000, 1800, 20, 'AB08');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC09', 'Hurt', 238, 'Country', 10000000, 4500, 1, 'AB09');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC10', 'Bohemian Rhapsody', 354, 'Rock', 20000000, 6000, 0, 'AB10');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC11', 'All Too Well', 329, 'Pop', 8500000, 3500, 12, 'AB11');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC12', 'Swimming Pools (Drank)', 276, 'Hip Hop', 7200000, 2900, 9, 'AB12');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC13', 'Without Me', 290, 'Hip Hop', 5800000, 2100, 18, 'AB13');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC14', 'Yesterday', 125, 'Rock', 3000000, 1400, 25, 'AB14');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC15', 'Hello', 295, 'R&B', 9500000, 3300, 6, 'AB15');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC16', 'Go Your Own Way', 216, 'Rock', 4800000, 1600, 7, 'AB16');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC17', 'Shape of You', 233, 'Pop', 18000000, 7500, 5, 'AB17');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC18', 'Bad Guy', 194, 'Pop', 16000000, 6800, 10, 'AB18');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC19', 'God''s Plan', 285, 'Hip Hop', 22000000, 9000, 2, 'AB19');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC20', 'Needed Me', 189, 'R&B', 11000000, 4500, 15, 'AB20');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC21', 'Viva La Vida', 242, 'Rock', 13000000, 5500, 8, 'AB21');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC22', 'Circles', 215, 'Pop', 14500000, 6000, 6, 'AB22');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC23', 'Poker Face', 238, 'Pop', 9800000, 4100, 12, 'AB23');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC24', 'IDOL', 222, 'K-Pop', 10500000, 4900, 9, 'AB24');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC25', 'Highway to Hell', 208, 'Rock', 11200000, 5100, 3, 'AB25');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC26', 'Smells Like Teen Spirit', 301, 'Rock', 19000000, 8000, 1, 'AB26');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC27', 'Billie Jean', 294, 'Pop', 25000000, 12000, 0, 'AB27');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC28', 'Like a Virgin', 220, 'Pop', 8800000, 3500, 10, 'AB28');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC29', 'With or Without You', 296, 'Rock', 14000000, 6200, 4, 'AB29');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC30', 'Formation', 220, 'R&B', 10200000, 4300, 7, 'AB30');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC31', 'Tiny Dancer', 342, 'Rock', 6500000, 2800, 15, 'AB31');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC32', 'Brown Sugar', 214, 'Rock', 9500000, 4000, 6, 'AB32');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC33', 'This Love', 210, 'Pop', 8900000, 3800, 9, 'AB33');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC34', 'Comfortably Numb', 382, 'Rock', 16000000, 7000, 3, 'AB34');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC35', 'Just the Way You Are', 220, 'Pop', 15500000, 6500, 5, 'AB35');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC36', '7 rings', 179, 'Pop', 19500000, 8500, 2, 'AB36');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC37', 'Blowin'' in the Wind', 168, 'Folk', 500000, 200, 50, 'AB37');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC38', 'One More Time', 320, 'Electronic', 7800000, 3100, 18, 'AB38');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC39', 'Hips Don''t Lie', 238, 'Latin', 11000000, 4800, 10, 'AB39');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC40', 'Hotel California', 390, 'Rock', 17000000, 7500, 4, 'AB40');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC41', 'Sorry', 232, 'Pop', 13500000, 5800, 11, 'AB41');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC42', 'Gin and Juice', 340, 'Hip Hop', 6200000, 2600, 22, 'AB42');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC43', 'Otherside', 255, 'Rock', 7100000, 2900, 14, 'AB43');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC44', 'Blinding Lights', 200, 'Pop', 25000000, 11000, 1, 'AB44');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC45', 'Firework', 227, 'Pop', 12000000, 5200, 8, 'AB45');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC46', 'Enter Sandman', 331, 'Metal', 10000000, 4400, 9, 'AB46');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC47', 'I Will Always Love You', 271, 'R&B', 18000000, 7800, 3, 'AB47');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC48', 'When Doves Cry', 340, 'Funk', 9000000, 3500, 16, 'AB48');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC49', '...Baby One More Time', 210, 'Pop', 15000000, 6500, 5, 'AB49');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC50', 'Wake Me Up When September Ends', 285, 'Rock', 8500000, 3700, 13, 'AB50');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC51', 'Mr. Brightside', 223, 'Rock', 17500000, 7300, 6, 'AB51');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC52', 'Lose Yourself', 326, 'Hip Hop', 21000000, 9500, 2, 'AB52');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC53', 'Thinking Out Loud', 281, 'Pop', 14000000, 6000, 4, 'AB53');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC54', 'Treat You Better', 208, 'Pop', 9000000, 3900, 10, 'AB54');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC55', 'Beat It', 258, 'Pop', 16000000, 7000, 3, 'AB55');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC56', 'Maps', 210, 'Pop', 10500000, 4500, 7, 'AB56');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC57', 'Grenade', 222, 'Pop', 11500000, 4800, 8, 'AB57');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC58', 'Problem', 200, 'Pop', 12500000, 5300, 6, 'AB58');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC59', 'What''s My Name?', 216, 'R&B', 8800000, 3700, 12, 'AB59');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC60', 'Chasing Pavements', 211, 'R&B', 7000000, 3000, 9, 'AB60');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC61', 'Black Dog', 297, 'Rock', 12500000, 5500, 7, 'AB61');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC62', 'The Scientist', 309, 'Rock', 11000000, 4800, 11, 'AB62');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC63', 'FEAR.', 240, 'Hip Hop', 8800000, 3600, 5, 'AB63');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC64', 'Passionfruit', 299, 'R&B', 9200000, 4000, 14, 'AB64');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC65', 'Born This Way', 260, 'Pop', 10800000, 4500, 8, 'AB65');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC66', 'The Way You Make Me Feel', 297, 'Pop', 15500000, 7000, 3, 'AB66');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC67', 'The Real Slim Shady', 284, 'Hip Hop', 7500000, 3000, 18, 'AB52');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC68', 'Someone Like You', 285, 'R&B', 11500000, 5000, 4, 'AB15');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC69', 'Castle on the Hill', 261, 'Pop', 10000000, 4200, 7, 'AB62');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC70', 'Boulevard of Broken Dreams', 260, 'Rock', 9800000, 4100, 10, 'AB63');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC71', 'Somebody Told Me', 197, 'Rock', 14500000, 6300, 5, 'AB51');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC72', 'Not Afraid', 248, 'Hip Hop', 18000000, 8000, 3, 'AB52');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC73', 'In Your Eyes', 237, 'Pop', 11000000, 4600, 9, 'AB53');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC74', 'Paradise', 270, 'Rock', 13000000, 5500, 6, 'AB34');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC75', 'Work', 219, 'R&B', 10500000, 4400, 11, 'AB24');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC76', 'The Lazy Song', 189, 'Pop', 9800000, 4100, 8, 'AB35');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC77', 'California Gurls', 234, 'Pop', 11500000, 5000, 7, 'AB59');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC78', 'In My Feelings', 218, 'Hip Hop', 17000000, 7500, 4, 'AB64');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC79', 'S&M', 244, 'Pop', 9000000, 3800, 12, 'AB57');
INSERT INTO songs (song_code, song_title, duration, genre, plays, likes, skips, album_code) VALUES ('SC80', 'What Do You Mean?', 207, 'Pop', 14500000, 6200, 5, 'AB53');

-- =====================================================
-- SECTION 3: NY Giants Roster Database
-- Snapshot as of October 4, 2025. NFL rosters change
-- throughout the season, expect this to drift from the
-- live roster over time.
-- =====================================================

-- NY Giants Roster October 4, 2025
DROP TABLE roster;

CREATE TABLE roster (
    player_id VARCHAR2(10) PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    jersey_number INT,
    position VARCHAR2(10),
    college VARCHAR2(100),
    date_of_birth DATE
);

-- Offensive Players
INSERT INTO roster VALUES ('PL001','Brian','Burns',0,'OLB','Florida State',DATE '1998-04-23');
INSERT INTO roster VALUES ('PL002','Malik','Nabers',1,'WR','LSU',DATE '2003-07-28');
INSERT INTO roster VALUES ('PL003','Deonte','Banks',2,'CB','Maryland',DATE '2001-03-03');
INSERT INTO roster VALUES ('PL004','Russell','Wilson',3,'QB','Wisconsin',DATE '1988-11-29');
INSERT INTO roster VALUES ('PL005','Kayvon','Thibodeaux',5,'OLB','Oregon',DATE '2000-12-15');
INSERT INTO roster VALUES ('PL006','Jaxson','Dart',6,'QB','Ole Miss',DATE '2003-05-13');
INSERT INTO roster VALUES ('PL007','Jevon','Holland',8,'SAF','Oregon',DATE '2000-03-03');
INSERT INTO roster VALUES ('PL008','Graham','Gano',9,'K','Florida State',DATE '1987-04-09');
INSERT INTO roster VALUES ('PL009','Jordan','Gillan',12,'P','Arkansas-Pine Bluff',DATE '1997-07-04');
INSERT INTO roster VALUES ('PL010','Jalin','Hyatt',13,'WR','Tennessee',DATE '2001-09-25');
INSERT INTO roster VALUES ('PL011','Anthony','Johnson',15,'SAF','Iowa State',DATE '1999-12-02');
INSERT INTO roster VALUES ('PL012','Wan''Dale','Robinson',17,'WR','Kentucky',DATE '2001-01-05');
INSERT INTO roster VALUES ('PL013','Darius','Slayton',18,'WR','Auburn',DATE '1997-01-12');
INSERT INTO roster VALUES ('PL014','Jameis','Winston',19,'QB','Florida State',DATE '1994-01-06');
INSERT INTO roster VALUES ('PL015','Eric','Gray',20,'RB','Oklahoma',DATE '1999-11-04');
INSERT INTO roster VALUES ('PL016','Paulson','Adebo',21,'CB','Stanford',DATE '1999-07-03');
INSERT INTO roster VALUES ('PL017','Dru','Phillips',22,'CB','Kentucky',DATE '2001-11-30');
INSERT INTO roster VALUES ('PL018','Art','Green',23,'CB','Houston',DATE '2000-04-29');
INSERT INTO roster VALUES ('PL019','Dane','Belton',24,'SAF','Iowa',DATE '2000-12-07');
INSERT INTO roster VALUES ('PL020','Dante','Miller',25,'RB','South Carolina',DATE '1999-05-14');
INSERT INTO roster VALUES ('PL021','Devin','Singletary',26,'RB','Florida Atlantic',DATE '1997-09-03');
INSERT INTO roster VALUES ('PL022','Tyler','Nubin',27,'SAF','Minnesota',DATE '2001-06-14');
INSERT INTO roster VALUES ('PL023','Cor''Dale','Flott',28,'CB','LSU',DATE '2001-08-24');
INSERT INTO roster VALUES ('PL024','Tyrone','Tracy',29,'RB','Purdue',DATE '1999-11-23');
INSERT INTO roster VALUES ('PL025','TJ','Moore',30,'CB','Mercer',NULL);
INSERT INTO roster VALUES ('PL026','Nic','Jones',31,'CB','Ball State',DATE '2001-10-15');
INSERT INTO roster VALUES ('PL027','Demetrius','Flannigan-Fowles',33,'LB','Arizona',DATE '1996-09-04');
INSERT INTO roster VALUES ('PL028','Beau','Brade',34,'SAF','Maryland',DATE '2002-01-29');
INSERT INTO roster VALUES ('PL029','Rico','Payton',35,'CB','Pittsburg State',DATE '1999-11-28');
INSERT INTO roster VALUES ('PL030','Dee','Williams',36,'CB','Tennessee',DATE '1999-12-06');
INSERT INTO roster VALUES ('PL031','Patrick','McMorris',38,'SAF','California',DATE '2001-10-18');
INSERT INTO roster VALUES ('PL032','Micah','McFadden',41,'LB','Indiana',DATE '2000-01-03');
INSERT INTO roster VALUES ('PL033','Raheem','Layne',43,'SAF','Indiana',DATE '1999-07-02');
INSERT INTO roster VALUES ('PL034','Cam','Skattebo',44,'RB','Arizona State',DATE '2002-02-05');
INSERT INTO roster VALUES ('PL035','Tomon','Fox',45,'OLB','North Carolina',DATE '1998-03-16');
INSERT INTO roster VALUES ('PL036','Zaire','Barnes',46,'LB','Western Michigan',DATE '1999-09-03');
INSERT INTO roster VALUES ('PL037','Qadir','Ismail',47,'TE','Samford',DATE '2000-02-17');
INSERT INTO roster VALUES ('PL038','Chris','Board',49,'LB','North Dakota State',DATE '1995-07-23');
INSERT INTO roster VALUES ('PL039','Abdul','Carter',51,'LB','Penn State',DATE '2004-01-02');
INSERT INTO roster VALUES ('PL040','Victor','Dimukeje',52,'OLB','Duke',DATE '1999-11-18');
INSERT INTO roster VALUES ('PL041','Darius','Muasau',53,'LB','UCLA',DATE '2001-02-10');
INSERT INTO roster VALUES ('PL042','Swayze','Bozeman',54,'LB','Southern Miss',DATE '1998-11-02');
INSERT INTO roster VALUES ('PL043','James','Hudson',55,'T','Cincinnati',DATE '1999-05-13');
INSERT INTO roster VALUES ('PL044','Chauncey','Golston',57,'DL','Iowa',DATE '1998-02-10');
INSERT INTO roster VALUES ('PL045','Bobby','Okereke',58,'LB','Stanford',DATE '1996-07-29');
INSERT INTO roster VALUES ('PL046','Casey','Kreiter',59,'LS','Iowa',DATE '1990-08-13');
INSERT INTO roster VALUES ('PL047','Bryan','Hudson',60,'C','Louisville',DATE '2001-01-11');
INSERT INTO roster VALUES ('PL048','John','Schmitz',61,'C','Minnesota',DATE '1999-03-19');
INSERT INTO roster VALUES ('PL049','Jake','Kubas',63,'G','North Dakota State',DATE '2000-08-13');
INSERT INTO roster VALUES ('PL050','Aaron','Stinnie',64,'OL','James Madison',DATE '1994-02-18');
INSERT INTO roster VALUES ('PL051','Austin','Schlottmann',65,'OL','TCU',DATE '1995-09-18');
INSERT INTO roster VALUES ('PL052','Reid','Holskey',67,'T','Miami (OH)',DATE '2002-01-03');
INSERT INTO roster VALUES ('PL053','Marcus','Mbow',71,'OT','Purdue',DATE '2003-04-02');
INSERT INTO roster VALUES ('PL054','Jermaine','Eluemunor',72,'OL','Texas A&M',DATE '1994-12-13');
INSERT INTO roster VALUES ('PL055','Evan','Neal',73,'T','Alabama',DATE '2000-09-19');
INSERT INTO roster VALUES ('PL056','Greg','Van Roten',74,'OG','Pennsylvania',DATE '1990-02-26');
INSERT INTO roster VALUES ('PL057','Joshua','Ezeudu',75,'OL','North Carolina',DATE '1999-09-19');
INSERT INTO roster VALUES ('PL058','Jon','Runyan',76,'G','Michigan',DATE '1997-08-08');
INSERT INTO roster VALUES ('PL059','Andrew','Thomas',78,'T','Georgia',DATE '1999-01-22');
INSERT INTO roster VALUES ('PL060','Gunner','Olszewski',80,'WR','Bemidji State',DATE '1996-11-26');
INSERT INTO roster VALUES ('PL061','Beaux','Collins',81,'WR','Notre Dame',DATE '2002-12-16');
INSERT INTO roster VALUES ('PL062','Daniel','Bellinger',82,'TE','San Diego State',DATE '2000-09-22');
INSERT INTO roster VALUES ('PL063','Da''Quan','Felton',83,'WR','Virginia Tech',DATE '2001-01-13');
INSERT INTO roster VALUES ('PL064','Theo','Johnson',84,'TE','Penn State',DATE '2001-02-26');
INSERT INTO roster VALUES ('PL065','Chris','Manhertz',85,'TE','Canisius',DATE '1992-04-10');
INSERT INTO roster VALUES ('PL066','Thomas','Fidone',86,'TE','Nebraska',DATE '2002-09-20');
INSERT INTO roster VALUES ('PL067','Ihmir','Smith-Marsette',87,'WR','Iowa',DATE '1999-08-29');
INSERT INTO roster VALUES ('PL068','Bryce','Ford-Wheaton',88,'WR','West Virginia',DATE '2000-03-09');
INSERT INTO roster VALUES ('PL069','Lil''Jordan','Humphrey',89,'WR','Texas',DATE '1998-04-19');
INSERT INTO roster VALUES ('PL070','Elijah','Garcia',90,'DL','Rice',DATE '1998-03-11');
INSERT INTO roster VALUES ('PL071','Darius','Alexander',91,'DT','Toledo',DATE '2000-08-26');
INSERT INTO roster VALUES ('PL072','Rakeem','Nunez-Roches',93,'DL','Southern Miss',DATE '1993-07-03');
INSERT INTO roster VALUES ('PL073','Elijah','Chatman',94,'DT','SMU',DATE '2000-12-05');
INSERT INTO roster VALUES ('PL074','Roy','Robertson-Harris',95,'DT','UTEP',DATE '1993-07-23');
INSERT INTO roster VALUES ('PL075','Dexter','Lawrence',97,'DL','Clemson',DATE '1997-11-12');
INSERT INTO roster VALUES ('PL076','D.J.','Davidson',98,'DL','Arizona State',DATE '1997-09-19');
INSERT INTO roster VALUES ('PL077','Jude','McAtamney',99,'K','Rutgers',DATE '2000-05-09');
INSERT INTO roster VALUES ('PL078','Jordon','Riley',99,'DL','Oregon',DATE '1998-05-19');
