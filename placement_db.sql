CREATE DATABASE PlacementDB;
USE PlacementDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Email VARCHAR(100),
    CGPA FLOAT CHECK (CGPA <= 10.0),
    Backlogs INT
);
CREATE TABLE Companies (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR(100),
    RoleOffered VARCHAR(50),
    MinCGPA FLOAT,
    EligibleDepartments VARCHAR(100),
    PackageOffered FLOAT
);
CREATE TABLE Applications (
    ApplicationID INT PRIMARY KEY,
    StudentID INT,
    CompanyID INT,
    ApplicationDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);
CREATE TABLE PlacementResults (
    ResultID INT PRIMARY KEY,
    StudentID INT,
    CompanyID INT,
    RoundCleared INT,
    FinalStatus VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);
INSERT INTO Students VALUES
(1, 'Aditee', 'ECE', 'aditee@email.com', 8.4, 0),
(2, 'Rahul', 'CSE', 'rahul@email.com', 7.9, 1),
(3, 'Sneha', 'IT', 'sneha@email.com', 9.1, 0);
INSERT INTO Companies VALUES
(101, 'Google', 'SDE', 8.0, 'CSE,ECE,IT', 25),
(102, 'Infosys', 'ASE', 6.0, 'ALL', 4.5),
(103, 'TCS', 'Developer', 7.0, 'CSE,ECE', 6);
INSERT INTO Applications VALUES
(201, 1, 101, '2025-01-12', 'Applied'),
(202, 2, 102, '2025-01-13', 'Applied'),
(203, 3, 103, '2025-01-14', 'Applied');
INSERT INTO PlacementResults VALUES
(301, 1, 101, 3, 'Selected'),
(302, 2, 102, 2, 'Rejected'),
(303, 3, 103, 3, 'Selected');

SELECT * FROM Students;
SELECT * FROM Companies;
SELECT * FROM Applications;
SELECT * FROM PlacementResults;
-- Insert additional 50 students
INSERT INTO Students VALUES
(4, 'Ankit', 'CSE', 'ankit@email.com', 8.5, 0),
(5, 'Bhavna', 'IT', 'bhavna@email.com', 7.2, 1),
(6, 'Chirag', 'ECE', 'chirag@email.com', 8.0, 0),
(7, 'Deepa', 'CSE', 'deepa@email.com', 9.0, 0),
(8, 'Eshan', 'IT', 'eshan@email.com', 6.5, 2),
(9, 'Farah', 'ECE', 'farah@email.com', 8.9, 0),
(10, 'Gaurav', 'CSE', 'gaurav@email.com', 7.8, 1),
(11, 'Heena', 'IT', 'heena@email.com', 8.2, 0),
(12, 'Ishaan', 'ECE', 'ishaan@email.com', 7.5, 0),
(13, 'Juhi', 'CSE', 'juhi@email.com', 9.3, 0),
(14, 'Kunal', 'IT', 'kunal@email.com', 6.9, 1),
(15, 'Lavanya', 'ECE', 'lavanya@email.com', 8.1, 0),
(16, 'Manish', 'CSE', 'manish@email.com', 8.7, 0),
(17, 'Nisha', 'IT', 'nisha@email.com', 7.0, 1),
(18, 'Omkar', 'ECE', 'omkar@email.com', 9.4, 0),
(19, 'Pooja', 'CSE', 'pooja@email.com', 7.4, 2),
(20, 'Qasim', 'IT', 'qasim@email.com', 8.3, 0),
(21, 'Ritika', 'ECE', 'ritika@email.com', 8.6, 0),
(22, 'Sagar', 'CSE', 'sagar@email.com', 6.8, 1),
(23, 'Tanvi', 'IT', 'tanvi@email.com', 9.0, 0),
(24, 'Uday', 'ECE', 'uday@email.com', 8.0, 0),
(25, 'Varsha', 'CSE', 'varsha@email.com', 7.6, 0),
(26, 'Wasim', 'IT', 'wasim@email.com', 8.1, 1),
(27, 'Xena', 'ECE', 'xena@email.com', 7.9, 0),
(28, 'Yash', 'CSE', 'yash@email.com', 8.5, 0),
(29, 'Zara', 'IT', 'zara@email.com', 9.2, 0),
(30, 'Aarav', 'ECE', 'aarav@email.com', 7.3, 1),
(31, 'Bina', 'CSE', 'bina@email.com', 7.7, 0),
(32, 'Chaitanya', 'IT', 'chaitanya@email.com', 8.4, 0),
(33, 'Divya', 'ECE', 'divya@email.com', 9.0, 0),
(34, 'Eklavya', 'CSE', 'eklavya@email.com', 6.7, 2),
(35, 'Fatima', 'IT', 'fatima@email.com', 7.5, 0),
(36, 'Girish', 'ECE', 'girish@email.com', 8.2, 0),
(37, 'Harshita', 'CSE', 'harshita@email.com', 7.9, 1),
(38, 'Inder', 'IT', 'inder@email.com', 9.1, 0),
(39, 'Jatin', 'ECE', 'jatin@email.com', 6.8, 1),
(40, 'Kritika', 'CSE', 'kritika@email.com', 8.8, 0),
(41, 'Lalit', 'IT', 'lalit@email.com', 8.0, 0),
(42, 'Meera', 'ECE', 'meera@email.com', 7.2, 0),
(43, 'Neeraj', 'CSE', 'neeraj@email.com', 9.5, 0),
(44, 'Ojasvi', 'IT', 'ojasvi@email.com', 7.6, 1),
(45, 'Palak', 'ECE', 'palak@email.com', 8.7, 0),
(46, 'Raghav', 'CSE', 'raghav@email.com', 8.1, 0),
(47, 'Sanya', 'IT', 'sanya@email.com', 6.9, 1),
(48, 'Tushar', 'ECE', 'tushar@email.com', 7.1, 0),
(49, 'Urvashi', 'CSE', 'urvashi@email.com', 9.3, 0),
(50, 'Ved', 'IT', 'ved@email.com', 8.6, 0),
(51, 'Wamiq', 'ECE', 'wamiq@email.com', 8.0, 0),
(52, 'Xavier', 'CSE', 'xavier@email.com', 7.8, 1),
(53, 'Yuvika', 'IT', 'yuvika@email.com', 8.9, 0);

-- Additional companies
INSERT INTO Companies VALUES
(104, 'Amazon', 'SDE', 8.5, 'CSE,IT', 22),
(105, 'Wipro', 'Test Engineer', 6.5, 'ALL', 5),
(106, 'Capgemini', 'Developer', 7.0, 'CSE,ECE,IT', 6.2);

INSERT INTO Applications VALUES
(204, 4, 104, '2025-01-15', 'Applied'),
(205, 5, 105, '2025-01-15', 'Applied'),
(206, 6, 106, '2025-01-15', 'Applied'),
(207, 7, 101, '2025-01-16', 'Applied'),
(208, 8, 102, '2025-01-16', 'Applied'),
(209, 9, 103, '2025-01-16', 'Applied'),
(210, 10, 104, '2025-01-17', 'Applied'),
(211, 11, 106, '2025-01-17', 'Applied'),
(212, 12, 105, '2025-01-17', 'Applied'),
(213, 13, 101, '2025-01-18', 'Applied'),
(214, 14, 102, '2025-01-18', 'Applied'),
(215, 15, 103, '2025-01-18', 'Applied'),
(216, 16, 104, '2025-01-19', 'Applied'),
(217, 17, 105, '2025-01-19', 'Applied'),
(218, 18, 106, '2025-01-19', 'Applied'),
(219, 19, 101, '2025-01-20', 'Applied'),
(220, 20, 102, '2025-01-20', 'Applied'),
(221, 21, 103, '2025-01-20', 'Applied'),
(222, 22, 104, '2025-01-21', 'Applied'),
(223, 23, 105, '2025-01-21', 'Applied'),
(224, 24, 106, '2025-01-21', 'Applied'),
(225, 25, 101, '2025-01-22', 'Applied'),
(226, 26, 102, '2025-01-22', 'Applied'),
(227, 27, 103, '2025-01-22', 'Applied'),
(228, 28, 104, '2025-01-23', 'Applied'),
(229, 29, 105, '2025-01-23', 'Applied'),
(230, 30, 106, '2025-01-23', 'Applied'),
(231, 31, 101, '2025-01-24', 'Applied'),
(232, 32, 102, '2025-01-24', 'Applied'),
(233, 33, 103, '2025-01-24', 'Applied'),
(234, 34, 104, '2025-01-25', 'Applied'),
(235, 35, 105, '2025-01-25', 'Applied'),
(236, 36, 106, '2025-01-25', 'Applied'),
(237, 37, 101, '2025-01-26', 'Applied'),
(238, 38, 102, '2025-01-26', 'Applied'),
(239, 39, 103, '2025-01-26', 'Applied'),
(240, 40, 104, '2025-01-27', 'Applied'),
(241, 41, 105, '2025-01-27', 'Applied'),
(242, 42, 106, '2025-01-27', 'Applied'),
(243, 43, 101, '2025-01-28', 'Applied'),
(244, 44, 102, '2025-01-28', 'Applied'),
(245, 45, 103, '2025-01-28', 'Applied'),
(246, 46, 104, '2025-01-29', 'Applied'),
(247, 47, 105, '2025-01-29', 'Applied'),
(248, 48, 106, '2025-01-29', 'Applied'),
(249, 49, 101, '2025-01-30', 'Applied'),
(250, 50, 102, '2025-01-30', 'Applied'),
(251, 51, 103, '2025-01-30', 'Applied'),
(252, 52, 104, '2025-01-31', 'Applied'),
(253, 53, 105, '2025-01-31', 'Applied');

INSERT INTO PlacementResults VALUES
(304, 4, 104, 3, 'Selected'),
(305, 5, 105, 2, 'Rejected'),
(306, 6, 106, 3, 'Selected'),
(307, 7, 101, 2, 'Selected'),
(308, 8, 102, 1, 'Rejected'),
(309, 9, 103, 2, 'Selected'),
(310, 10, 104, 3, 'Selected'),
(311, 11, 106, 2, 'Rejected'),
(312, 12, 105, 3, 'Selected'),
(313, 13, 101, 3, 'Selected'),
(314, 14, 102, 2, 'Rejected'),
(315, 15, 103, 3, 'Selected'),
(316, 16, 104, 2, 'Rejected'),
(317, 17, 105, 2, 'Selected'),
(318, 18, 106, 3, 'Selected'),
(319, 19, 101, 2, 'Rejected'),
(320, 20, 102, 3, 'Selected'),
(321, 21, 103, 2, 'Selected'),
(322, 22, 104, 1, 'Rejected'),
(323, 23, 105, 3, 'Selected'),
(324, 24, 106, 2, 'Rejected'),
(325, 25, 101, 3, 'Selected'),
(326, 26, 102, 2, 'Selected'),
(327, 27, 103, 3, 'Rejected'),
(328, 28, 104, 3, 'Selected'),
(329, 29, 105, 2, 'Selected'),
(330, 30, 106, 1, 'Rejected'),
(331, 31, 101, 2, 'Selected'),
(332, 32, 102, 2, 'Selected'),
(333, 33, 103, 3, 'Selected'),
(334, 34, 104, 1, 'Rejected'),
(335, 35, 105, 2, 'Rejected'),
(336, 36, 106, 3, 'Selected'),
(337, 37, 101, 2, 'Selected'),
(338, 38, 102, 3, 'Selected'),
(339, 39, 103, 2, 'Rejected'),
(340, 40, 104, 3, 'Selected'),
(341, 41, 105, 2, 'Rejected'),
(342, 42, 106, 3, 'Selected'),
(343, 43, 101, 3, 'Selected'),
(344, 44, 102, 2, 'Rejected'),
(345, 45, 103, 3, 'Selected'),
(346, 46, 104, 2, 'Selected'),
(347, 47, 105, 1, 'Rejected'),
(348, 48, 106, 2, 'Selected'),
(349, 49, 101, 3, 'Selected'),
(350, 50, 102, 3, 'Selected'),
(351, 51, 103, 2, 'Rejected'),
(352, 52, 104, 2, 'Selected'),
(353, 53, 105, 1, 'Rejected');

--Application using joins 
SELECT 
    r.ResultID,
    s.Name AS StudentName,
    c.Name AS CompanyName,
    r.RoundCleared,
    r.FinalStatus
FROM 
    PlacementResults r
JOIN 
    Students s ON r.StudentID = s.StudentID
JOIN 
    Companies c ON r.CompanyID = c.CompanyID;


--Selected Students
SELECT 
    r.ResultID,
    s.Name AS StudentName,
    c.Name AS CompanyName,
    r.RoundCleared,
    r.FinalStatus
FROM 
    PlacementResults r
JOIN 
    Students s ON r.StudentID = s.StudentID
JOIN 
    Companies c ON r.CompanyID = c.CompanyID
WHERE 
    r.FinalStatus = 'Selected';

--Rejected Students
SELECT 
    r.ResultID,
    s.Name AS StudentName,
    c.Name AS CompanyName,
    r.RoundCleared,
    r.FinalStatus
FROM 
    PlacementResults r
JOIN 
    Students s ON r.StudentID = s.StudentID
JOIN 
    Companies c ON r.CompanyID = c.CompanyID
WHERE 
    r.FinalStatus = 'Rejected';
