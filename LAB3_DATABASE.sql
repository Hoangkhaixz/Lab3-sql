CREATE DATABASE lab;
USE lab;
CREATE TABLE course(
	courseKey varchar(100) primary key,
	courseName varchar(300),
	courseDescription varchar(500)
);
INSERT INTO course (courseKey, courseName, courseDescription) VALUES
('ITC255', 'Systems Analysis', 'Systems analysis and design'),
('MAT107', 'Applied Math', 'Applied math for computers'),
('ENG211', 'Technical Writing', 'Technical writing for information technology'),
('WEB110', 'Beginning Web Page Design', 'Basic xhtml'),
('ITC226', 'Database Administration', 'SQL Server administration');
SELECT * FROM course;
-----------------------------------------------------------------------
CREATE TABLE EthnicityData(
	EthnicityKey varchar(100),
	EthnicityDescription TEXT
);
INSERT INTO EthnicityData (EthnicityKey, EthnicityDescription) VALUES
('AfrAmer', 'African American or of African origin'),
('Hispanic', 'Mexican, Central or South American, Caribbean'),
('Pacific', 'Pacific islander'),
('Mideast', 'Arabic or Persian'),
('Other', 'Other or not disclosed');
SELECT * FROM EthnicityData;
-----------------------------------------------------------------------
CREATE TABLE Tutor (
    TutorKey VARCHAR(10) PRIMARY KEY,
    TutorLastName VARCHAR(50),
    TutorFirstName VARCHAR(50),
    TutorPhone VARCHAR(15),
    TutorEmail VARCHAR(100),
    TutorHireDate DATE,
    TutorStatus VARCHAR(10)
);
INSERT INTO Tutor (TutorKey, TutorLastName, TutorFirstName, TutorPhone, TutorEmail, TutorHireDate, TutorStatus) VALUES
('980010000', 'Roberts', 'Martha', '2065551467', 'mroberts@yahoo.com', '2010-01-06', 'Active'),
('980010001', 'Brown', 'Susan', '2065553528', 'S-b4@hotmail.com', '2009-02-01', 'Active'),
('980010002', 'Foster', 'Daniel', '2065554940', 'FosterG2@aol.com', '2009-02-12', 'Active'),
('980010003', 'Anderson', 'Nathan', '3055550230', NULL, '2009-03-02', 'Inactive'),
('980010004', 'Lewis', 'Ginger', '2065553856', 'ginger@hotmail.com', '2009-03-15', 'Active');
SELECT * FROM Tutor;
-----------------------------------------------------------------------
CREATE TABLE TutorCourse (
    TutorKey INT,
    CourseKey VARCHAR(10)
);
INSERT INTO TutorCourse (TutorKey, CourseKey)
VALUES 
(980010002, 'ITC255'),
(980010002, 'ENG211'),
(980010004, 'MAT107'),
(980010000, 'WEB110'),
(980010001, 'ITC220'),
(980010001, 'WEB110'),
(980010003, 'ITC110');
SELECT * FROM TutorCourse;
-----------------------------------------------------------------------
CREATE TABLE StudentData (
    StudentKey INT,
    StudentLastName VARCHAR(50),
    StudentFirstName VARCHAR(50),
    StudentEmail VARCHAR(100),
    StudentPhone VARCHAR(20),
    StudentGender CHAR(1),
    StudentAge INT,
    StudentCitizen BIT,
    StudentWorkerRetraining BIT,
    EthnicityKey VARCHAR(50)
);
INSERT INTO StudentData (StudentKey, StudentLastName, StudentFirstName, StudentEmail, StudentPhone, StudentGender, StudentAge, StudentCitizen, StudentWorkerRetraining, EthnicityKey)
VALUES 
(990010000, 'Peterson', 'Laura', NULL, '2065559318', 'F', 23, 1, 0, 'Caucasian'),
(990010002, 'Carter', 'Shannon', 'Shannon@Carter.Org', '2065554301', 'F', 32, 1, 0, 'AfrAmer'),
(990010003, 'Martinez', 'Sandy', 'sandym@gmail.com', '2065551158', 'F', 18, 1, 0, 'Hispanic'),
(990010004, 'Nguyen', 'Lu', 'lstar@yahoo.com', '2065552938', 'M', 19, 0, 0, 'Asian'),
(990010005, 'Zukof', 'Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(990010006, 'Taylor', 'Paty', 'P147@marketplace.com', '2065552076', 'F', 42, 1, 0, 'Caucasian'),
(990010007, 'Thomas', 'Lawrence', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(990010008, 'Bradbury', 'Ron', 'rbradbury@mars.org', '2065557296', 'M', 53, 1, 0, 'Caucasian'),
(990010009, 'Carlos', 'Juan', 'Carlos23@hotmail.com', '2065559134', 'M', 25, 1, 0, 'Hispanic'),
(990010010, 'Min', 'Ly', 'lymin@hotmail.com', '2065552789', 'F', 20, 0, 0, 'Asian');
SELECT * FROM StudentData;
-----------------------------------------------------------------------
CREATE TABLE StudentCourseData (
    StudentKey INT,
    CourseKey VARCHAR(10),
    StudentCourseQuarter VARCHAR(10)
);
INSERT INTO StudentCourseData (StudentKey, CourseKey, StudentCourseQuarter)
VALUES
(990010000, 'ITC220', 'Fall09'),
(990010000, 'ITC110', 'Fall09'),
(990010000, 'WEB110', 'Fall09'),
(990010001, 'ITC220', 'Fall09'),
(990010002, 'ITC110', 'Fall09'),
(990010004, 'MAT107', 'Fall09'),
(990010004, 'WEB110', 'Fall09'),
(990010007, 'ITC110', 'Fall09'),
(990010008, 'ITC110', 'Fall09'),
(980010001, 'ITC220', 'Fall09'),
(980010009, 'MAT107', 'Fall09'),
(990010002, 'ENG211', 'Winter10'),
(990010002, 'ITC255', 'Winter10'),
(990010003, 'ENG211', 'Winter10'),
(990010003, 'ITC255', 'Winter10'),
(990010004, 'MAT107', 'Winter10'),
(990010006, 'ITC255', 'Winter10'),
(990010008, 'ENG211', 'Winter10'),
(990010009, 'ITC255', 'Winter10'),
(980010009, 'MAT107', 'Winter10');
SELECT * FROM StudentCourseData;
-----------------------------------------------------------------------
CREATE TABLE SessionData (
    SessionDateKey DATE,
    SessionTimeKey TIME,
    TutorKey INT,
    CourseKey VARCHAR(10),
    StudentKey INT,
    SessionStatus CHAR(2),
    SessionMaterialCovered VARCHAR(100)
);
INSERT INTO SessionData (SessionDateKey, SessionTimeKey, TutorKey, CourseKey, StudentKey, SessionStatus, SessionMaterialCovered)
VALUES 
('2009-10-20', '14:00:00', 98001001, 'WEB110', 99901000, 'C', 'CSS'),
('2009-10-20', '13:00:00', 98001002, 'ITC110', 99901001, 'C', 'For next loop'),
('2009-11-02', '10:30:00', 98001003, 'ITC220', 99901002, 'C', 'Relations'),
('2009-11-05', '13:00:00', 98001001, 'ITC220', NULL, 'NS', NULL),
('2009-11-10', '10:00:00', 98001001, 'MAT107', 99901003, 'C', 'Binary Numbers'),
('2009-11-10', '14:30:00', 98001002, 'WEB110', 99901004, 'C', 'Web Forms'),
('2010-01-15', '12:00:00', 98001001, 'ENG211', 99901005, 'C', 'Use Cases'),
('2010-01-20', '09:00:00', 98001002, 'ENG211', 99901003, 'C', 'Document structure'),
('2010-01-22', '13:00:00', 98001003, 'ITC255', 99901000, 'C', 'Feasibility'),
('2010-02-05', '13:30:00', 98001001, 'MAT107', NULL, 'NS', NULL),
('2010-02-14', '09:00:00', 98001002, 'MAT107', NULL, 'NS', NULL),
('2010-02-14', '11:00:00', 98001002, 'ENG211', NULL, 'NS', NULL);
SELECT * FROM SessionData;
-----------------------------------------------------------------------
CREATE TABLE RequestData (
    RequestKey INT,
    RequestDate DATE,
    CourseKey VARCHAR(10),
    RequestStatus VARCHAR(10),
    StudentKey INT
);
INSERT INTO RequestData (RequestKey, RequestDate, CourseKey, RequestStatus, StudentKey)
VALUES 
(1001, '2010-01-05', 'ITC226', 'Active', 99001010);
SELECT * FROM RequestData;
-----------------------------------------------------------------------
CREATE TABLE RequestNoteData (
    RequestNoteKey DATETIME,
    RequestID INT,
    RequestNoteText VARCHAR(255)
);
INSERT INTO RequestNoteData (RequestNoteKey, RequestID, RequestNoteText)
VALUES
('2010-01-06 14:00:00', 1001, 'Only offered once a year and not a lot of requests for this class'),
('2010-01-10 10:00:00', 1001, 'No students available, because a capstone class would have to get someone off campus');
SELECT * FROM RequestNoteData;
-----------------------------------------------------------------------