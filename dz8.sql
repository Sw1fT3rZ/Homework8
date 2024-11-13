-- Створив базу даних StudentGradesDB
CREATE DATABASE StudentGradesDB;

-- Команда для використання БД
USE StudentGradesDB;



-- Створив таблицю StudentGrades для зберігання інформації 
CREATE TABLE StudentGrades (
    StudentID INT PRIMARY KEY IDENTITY(1,1), -- Ідентифікатор студента
    FullName NVARCHAR(100) NOT NULL, -- ПІБ 
    City NVARCHAR(50) NOT NULL, -- Місто
    Country NVARCHAR(50) NOT NULL, -- Країна
    DateOfBirth DATE NOT NULL, -- Дата народження
    Email NVARCHAR(100) NOT NULL, -- Електронна адреса
    ContactNumber NVARCHAR(15), -- Телефон
    GroupName NVARCHAR(50) NOT NULL, -- Назва групи
    AverageGrade FLOAT NOT NULL, -- Середня оцінка за рік з усіх предметів
    MinSubject NVARCHAR(50) NOT NULL, -- Назва предмета з мінімальною середньою оцінкою
    MaxSubject NVARCHAR(50) NOT NULL -- Назва предмета з максимальною середньою оцінкою
);

INSERT INTO StudentGrades (FullName, City, Country, DateOfBirth, Email, ContactNumber, GroupName, AverageGrade, MinSubject, MaxSubject)
VALUES 
('John Doe', 'New York', 'USA', '2000-05-15', 'johndoe@example.com', '123456789', 'MathGroup', 85.5, 'History', 'Mathematics'),
('Jane Smith', 'Los Angeles', 'USA', '2001-08-21', 'janesmith@example.com', '987654321', 'ScienceGroup', 90.3, 'Geography', 'Physics');

-- Запит для відображення всієї інформації з таблиці StudentGrades
SELECT * FROM StudentGrades;

-- Запит для відображення ПІБ усіх студентів
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

-- Запит для відображення унікальних назв груп студентів
SELECT DISTINCT GroupName FROM StudentGrades;

-- Запит для відображення унікальних назв предметів із мінімальною оцінкою
SELECT DISTINCT MinSubject FROM StudentGrades;

-- Запит для відображення унікальних назв предметів із максимальною оцінкою
SELECT DISTINCT MaxSubject FROM StudentGrades;