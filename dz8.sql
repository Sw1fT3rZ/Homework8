-- Створив базу даних StudentGradesDB
CREATE DATABASE StudentGradesDB;

-- Команда для використання БД
USE StudentGradesDB;



-- Створив таблицю StudentGrades для зберігання інформації 
CREATE TABLE StudentGrades (
    StudentID INT PRIMARY KEY IDENTITY(1,1), -- ²äåíòèô³êàòîð ñòóäåíòà
    FullName NVARCHAR(100) NOT NULL, -- Ï²Á 
    City NVARCHAR(50) NOT NULL, -- Ì³ñòî
    Country NVARCHAR(50) NOT NULL, -- Êðà¿íà
    DateOfBirth DATE NOT NULL, -- Äàòà íàðîäæåííÿ
    Email NVARCHAR(100) NOT NULL, -- Åëåêòðîííà àäðåñà
    ContactNumber NVARCHAR(15), -- Òåëåôîí
    GroupName NVARCHAR(50) NOT NULL, -- Íàçâà ãðóïè
    AverageGrade FLOAT NOT NULL, -- Ñåðåäíÿ îö³íêà çà ð³ê ç óñ³õ ïðåäìåò³â
    MinSubject NVARCHAR(50) NOT NULL, -- Íàçâà ïðåäìåòà ç ì³í³ìàëüíîþ ñåðåäíüîþ îö³íêîþ
    MaxSubject NVARCHAR(50) NOT NULL -- Íàçâà ïðåäìåòà ç ìàêñèìàëüíîþ ñåðåäíüîþ îö³íêîþ
);

-- Данні для демонстраціі
INSERT INTO StudentGrades (FullName, City, Country, DateOfBirth, Email, ContactNumber, GroupName, AverageGrade, MinSubject, MaxSubject)
VALUES 
('John Doe', 'New York', 'USA', '2000-05-15', 'johndoe@example.com', '123456789', 'MathGroup', 85.5, 'History', 'Mathematics'),
('Jane Smith', 'Los Angeles', 'USA', '2001-08-21', 'janesmith@example.com', '987654321', 'ScienceGroup', 90.3, 'Geography', 'Physics');

-- Запит для відображення всієї інформації з таблиці StudentGrades
SELECT * FROM StudentGrades;

-- Запит для відображення ПІБ
SELECT FullName FROM StudentGrades;

-- Запит для відображення всіх середніх оцінок
SELECT AverageGrade FROM StudentGrades;

-- Запит для показу ПІБ усіх студентів з мінімальною середньою оцінкою, більшою за зазначену 
SELECT FullName FROM StudentGrades
WHERE AverageGrade > 70;

-- Запит для відображення унікальних країн студентів
SELECT DISTINCT Country FROM StudentGrades;

-- Запит для відображення унікальних міст студентів
SELECT DISTINCT City FROM StudentGrades;

-- Запит для відображення назв груп 
SELECT DISTINCT GroupName FROM StudentGrades;

-- Запит для відображення унікальних назв предметів із мінімальною оцінкою
SELECT DISTINCT MinSubject FROM StudentGrades;

-- Запит для відображення унікальних назв предметів із максимальною оцінкою
SELECT DISTINCT MaxSubject FROM StudentGrades;
