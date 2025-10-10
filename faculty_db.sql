-- =====================================================
-- DROP AND CREATE FACULTY TABLE
-- =====================================================

DROP TABLE faculty;

CREATE TABLE faculty (
    faculty_id       VARCHAR2(10) PRIMARY KEY,
    first_name       VARCHAR2(50),
    last_name        VARCHAR2(50),
    department       VARCHAR2(100),
    office_location  VARCHAR2(50),
    office_phone     VARCHAR2(15),
    chairperson_id   VARCHAR2(10)
);

-- =====================================================
-- INSERT FACULTY DATA (80 RECORDS)
-- =====================================================

-- Department Chairs
INSERT INTO faculty VALUES ('FAC001', 'Alice', 'Nguyen', 'Computer Science', 'B201', '555-1001', NULL);
INSERT INTO faculty VALUES ('FAC002', 'Brian', 'Lopez', 'Mathematics', 'C310', '555-1002', NULL);
INSERT INTO faculty VALUES ('FAC003', 'Cynthia', 'Park', 'Physics', 'D120', '555-1003', NULL);
INSERT INTO faculty VALUES ('FAC004', 'David', 'Chen', 'English', 'E220', '555-1004', NULL);
INSERT INTO faculty VALUES ('FAC005', 'Elena', 'Khan', 'Biology', 'F330', '555-1005', NULL);
INSERT INTO faculty VALUES ('FAC006', 'Frank', 'Miller', 'Chemistry', 'G405', '555-1006', NULL);
INSERT INTO faculty VALUES ('FAC007', 'Grace', 'Turner', 'History', 'H110', '555-1007', NULL);
INSERT INTO faculty VALUES ('FAC008', 'Hector', 'Davis', 'Business', 'J505', '555-1008', NULL);

-- Computer Science Faculty (Chair = FAC001)
INSERT INTO faculty VALUES ('FAC009', 'Sophia', 'Lin', 'Computer Science', 'B202', '555-1101', 'FAC001');
INSERT INTO faculty VALUES ('FAC010', 'Michael', 'Olsen', 'Computer Science', 'B203', '555-1102', 'FAC001');
INSERT INTO faculty VALUES ('FAC011', 'Ravi', 'Patel', 'Computer Science', 'B204', '555-1103', 'FAC001');
INSERT INTO faculty VALUES ('FAC012', 'Nina', 'Jones', 'Computer Science', 'B205', '555-1104', 'FAC001');
INSERT INTO faculty VALUES ('FAC013', 'Omar', 'Stein', 'Computer Science', 'B206', '555-1105', 'FAC001');
INSERT INTO faculty VALUES ('FAC014', 'Tara', 'White', 'Computer Science', 'B207', '555-1106', 'FAC001');
INSERT INTO faculty VALUES ('FAC015', 'Kevin', 'Holt', 'Computer Science', 'B208', '555-1107', 'FAC001');
INSERT INTO faculty VALUES ('FAC016', 'Priya', 'Singh', 'Computer Science', 'B209', '555-1108', 'FAC001');
INSERT INTO faculty VALUES ('FAC017', 'James', 'Diaz', 'Computer Science', 'B210', '555-1109', 'FAC001');

-- Mathematics Faculty (Chair = FAC002)
INSERT INTO faculty VALUES ('FAC018', 'Lucas', 'Brown', 'Mathematics', 'C311', '555-1201', 'FAC002');
INSERT INTO faculty VALUES ('FAC019', 'Emily', 'Reed', 'Mathematics', 'C312', '555-1202', 'FAC002');
INSERT INTO faculty VALUES ('FAC020', 'Aaron', 'Yuan', 'Mathematics', 'C313', '555-1203', 'FAC002');
INSERT INTO faculty VALUES ('FAC021', 'Natalie', 'Ramos', 'Mathematics', 'C314', '555-1204', 'FAC002');
INSERT INTO faculty VALUES ('FAC022', 'Zara', 'Kim', 'Mathematics', 'C315', '555-1205', 'FAC002');
INSERT INTO faculty VALUES ('FAC023', 'Noah', 'Wood', 'Mathematics', 'C316', '555-1206', 'FAC002');
INSERT INTO faculty VALUES ('FAC024', 'Liam', 'Gonzalez', 'Mathematics', 'C317', '555-1207', 'FAC002');
INSERT INTO faculty VALUES ('FAC025', 'Sasha', 'Baker', 'Mathematics', 'C318', '555-1208', 'FAC002');
INSERT INTO faculty VALUES ('FAC026', 'Irene', 'Fox', 'Mathematics', 'C319', '555-1209', 'FAC002');

-- Physics Faculty (Chair = FAC003)
INSERT INTO faculty VALUES ('FAC027', 'Jordan', 'Lee', 'Physics', 'D121', '555-1301', 'FAC003');
INSERT INTO faculty VALUES ('FAC028', 'Marcus', 'Ng', 'Physics', 'D122', '555-1302', 'FAC003');
INSERT INTO faculty VALUES ('FAC029', 'Isabel', 'Tran', 'Physics', 'D123', '555-1303', 'FAC003');
INSERT INTO faculty VALUES ('FAC030', 'Derek', 'Foster', 'Physics', 'D124', '555-1304', 'FAC003');
INSERT INTO faculty VALUES ('FAC031', 'Sara', 'Knight', 'Physics', 'D125', '555-1305', 'FAC003');
INSERT INTO faculty VALUES ('FAC032', 'Maya', 'Ortiz', 'Physics', 'D126', '555-1306', 'FAC003');
INSERT INTO faculty VALUES ('FAC033', 'Ethan', 'Hughes', 'Physics', 'D127', '555-1307', 'FAC003');
INSERT INTO faculty VALUES ('FAC034', 'Chloe', 'Rivera', 'Physics', 'D128', '555-1308', 'FAC003');
INSERT INTO faculty VALUES ('FAC035', 'Quinn', 'Taylor', 'Physics', 'D129', '555-1309', 'FAC003');

-- English Faculty (Chair = FAC004)
INSERT INTO faculty VALUES ('FAC036', 'Laura', 'Bennett', 'English', 'E221', '555-1401', 'FAC004');
INSERT INTO faculty VALUES ('FAC037', 'Peter', 'Wallace', 'English', 'E222', '555-1402', 'FAC004');
INSERT INTO faculty VALUES ('FAC038', 'Hannah', 'Greer', 'English', 'E223', '555-1403', 'FAC004');
INSERT INTO faculty VALUES ('FAC039', 'Adrian', 'Brooks', 'English', 'E224', '555-1404', 'FAC004');
INSERT INTO faculty VALUES ('FAC040', 'Vanessa', 'Moore', 'English', 'E225', '555-1405', 'FAC004');
INSERT INTO faculty VALUES ('FAC041', 'Gavin', 'Wells', 'English', 'E226', '555-1406', 'FAC004');
INSERT INTO faculty VALUES ('FAC042', 'Kara', 'Diaz', 'English', 'E227', '555-1407', 'FAC004');
INSERT INTO faculty VALUES ('FAC043', 'Julian', 'Stone', 'English', 'E228', '555-1408', 'FAC004');
INSERT INTO faculty VALUES ('FAC044', 'Renee', 'Hall', 'English', 'E229', '555-1409', 'FAC004');

-- Biology Faculty (Chair = FAC005)
INSERT INTO faculty VALUES ('FAC045', 'Abigail', 'Ross', 'Biology', 'F331', '555-1501', 'FAC005');
INSERT INTO faculty VALUES ('FAC046', 'Jason', 'Hernandez', 'Biology', 'F332', '555-1502', 'FAC005');
INSERT INTO faculty VALUES ('FAC047', 'Megan', 'Sullivan', 'Biology', 'F333', '555-1503', 'FAC005');
INSERT INTO faculty VALUES ('FAC048', 'Connor', 'Price', 'Biology', 'F334', '555-1504', 'FAC005');
INSERT INTO faculty VALUES ('FAC049', 'Ella', 'Barnes', 'Biology', 'F335', '555-1505', 'FAC005');
INSERT INTO faculty VALUES ('FAC050', 'Ryan', 'Watson', 'Biology', 'F336', '555-1506', 'FAC005');
INSERT INTO faculty VALUES ('FAC051', 'Lydia', 'Cooper', 'Biology', 'F337', '555-1507', 'FAC005');
INSERT INTO faculty VALUES ('FAC052', 'Diana', 'Gray', 'Biology', 'F338', '555-1508', 'FAC005');
INSERT INTO faculty VALUES ('FAC053', 'Victor', 'Flores', 'Biology', 'F339', '555-1509', 'FAC005');

-- Chemistry Faculty (Chair = FAC006)
INSERT INTO faculty VALUES ('FAC054', 'Patrick', 'Scott', 'Chemistry', 'G406', '555-1601', 'FAC006');
INSERT INTO faculty VALUES ('FAC055', 'Leah', 'Ramirez', 'Chemistry', 'G407', '555-1602', 'FAC006');
INSERT INTO faculty VALUES ('FAC056', 'George', 'Watts', 'Chemistry', 'G408', '555-1603', 'FAC006');
INSERT INTO faculty VALUES ('FAC057', 'Samantha', 'Cole', 'Chemistry', 'G409', '555-1604', 'FAC006');
INSERT INTO faculty VALUES ('FAC058', 'Owen', 'Parker', 'Chemistry', 'G410', '555-1605', 'FAC006');
INSERT INTO faculty VALUES ('FAC059', 'Julia', 'Ward', 'Chemistry', 'G411', '555-1606', 'FAC006');
INSERT INTO faculty VALUES ('FAC060', 'Miles', 'Howard', 'Chemistry', 'G412', '555-1607', 'FAC006');
INSERT INTO faculty VALUES ('FAC061', 'Ivy', 'Martinez', 'Chemistry', 'G413', '555-1608', 'FAC006');
INSERT INTO faculty VALUES ('FAC062', 'Felix', 'Adams', 'Chemistry', 'G414', '555-1609', 'FAC006');

-- History Faculty (Chair = FAC007)
INSERT INTO faculty VALUES ('FAC063', 'Travis', 'Nguyen', 'History', 'H111', '555-1701', 'FAC007');
INSERT INTO faculty VALUES ('FAC064', 'Alice', 'Peters', 'History', 'H112', '555-1702', 'FAC007');
INSERT INTO faculty VALUES ('FAC065', 'Eric', 'Diaz', 'History', 'H113', '555-1703', 'FAC007');
INSERT INTO faculty VALUES ('FAC066', 'Michelle', 'Long', 'History', 'H114', '555-1704', 'FAC007');
INSERT INTO faculty VALUES ('FAC067', 'Henry', 'Clark', 'History', 'H115', '555-1705', 'FAC007');
INSERT INTO faculty VALUES ('FAC068', 'Sonia', 'Brooks', 'History', 'H116', '555-1706', 'FAC007');
INSERT INTO faculty VALUES ('FAC069', 'Zachary', 'Bell', 'History', 'H117', '555-1707', 'FAC007');
INSERT INTO faculty VALUES ('FAC070', 'Wendy', 'James', 'History', 'H118', '555-1708', 'FAC007');
INSERT INTO faculty VALUES ('FAC071', 'Paul', 'Reed', 'History', 'H119', '555-1709', 'FAC007');

-- Business Faculty (Chair = FAC008)
INSERT INTO faculty VALUES ('FAC072', 'Rachel', 'Mendez', 'Business', 'J506', '555-1801', 'FAC008');
INSERT INTO faculty VALUES ('FAC073', 'Daniel', 'Hunt', 'Business', 'J507', '555-1802', 'FAC008');
INSERT INTO faculty VALUES ('FAC074', 'Tina', 'Carroll', 'Business', 'J508', '555-1803', 'FAC008');
INSERT INTO faculty VALUES ('FAC075', 'Victor', 'Lam', 'Business', 'J509', '555-1804', 'FAC008');
INSERT INTO faculty VALUES ('FAC076', 'Angela', 'Kim', 'Business', 'J510', '555-1805', 'FAC008');
INSERT INTO faculty VALUES ('FAC077', 'Brandon', 'Knight', 'Business', 'J511', '555-1806', 'FAC008');
INSERT INTO faculty VALUES ('FAC078', 'Nicole', 'Waters', 'Business', 'J512', '555-1807', 'FAC008');
INSERT INTO faculty VALUES ('FAC079', 'Xavier', 'Bishop', 'Business', 'J513', '555-1808', 'FAC008');
INSERT INTO faculty VALUES ('FAC080', 'Lauren', 'Carter', 'Business', 'J514', '555-1809', 'FAC008');

