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
