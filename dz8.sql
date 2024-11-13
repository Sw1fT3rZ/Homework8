-- ������� ���� ����� StudentGradesDB
CREATE DATABASE StudentGradesDB;

-- ������� ��� ������������ ��
USE StudentGradesDB;



-- ������� ������� StudentGrades ��� ��������� ���������� 
CREATE TABLE StudentGrades (
    StudentID INT PRIMARY KEY IDENTITY(1,1), -- ������������� ��������
    FullName NVARCHAR(100) NOT NULL, -- ϲ� 
    City NVARCHAR(50) NOT NULL, -- ̳���
    Country NVARCHAR(50) NOT NULL, -- �����
    DateOfBirth DATE NOT NULL, -- ���� ����������
    Email NVARCHAR(100) NOT NULL, -- ���������� ������
    ContactNumber NVARCHAR(15), -- �������
    GroupName NVARCHAR(50) NOT NULL, -- ����� �����
    AverageGrade FLOAT NOT NULL, -- ������� ������ �� �� � ��� ��������
    MinSubject NVARCHAR(50) NOT NULL, -- ����� �������� � ��������� ��������� �������
    MaxSubject NVARCHAR(50) NOT NULL -- ����� �������� � ������������ ��������� �������
);

INSERT INTO StudentGrades (FullName, City, Country, DateOfBirth, Email, ContactNumber, GroupName, AverageGrade, MinSubject, MaxSubject)
VALUES 
('John Doe', 'New York', 'USA', '2000-05-15', 'johndoe@example.com', '123456789', 'MathGroup', 85.5, 'History', 'Mathematics'),
('Jane Smith', 'Los Angeles', 'USA', '2001-08-21', 'janesmith@example.com', '987654321', 'ScienceGroup', 90.3, 'Geography', 'Physics');

-- ����� ��� ����������� �񳺿 ���������� � ������� StudentGrades
SELECT * FROM StudentGrades;

-- ����� ��� ����������� ϲ� ��� ��������
SELECT FullName FROM StudentGrades;

-- ����� ��� ����������� ��� ������� ������
SELECT AverageGrade FROM StudentGrades;

-- ����� ��� ������ ϲ� ��� �������� � ��������� ��������� �������, ������ �� ��������� 
SELECT FullName FROM StudentGrades
WHERE AverageGrade > 70;

-- ����� ��� ����������� ��������� ���� ��������
SELECT DISTINCT Country FROM StudentGrades;

-- ����� ��� ����������� ��������� ��� ��������
SELECT DISTINCT City FROM StudentGrades;

-- ����� ��� ����������� ��������� ���� ���� ��������
SELECT DISTINCT GroupName FROM StudentGrades;

-- ����� ��� ����������� ��������� ���� �������� �� ��������� �������
SELECT DISTINCT MinSubject FROM StudentGrades;

-- ����� ��� ����������� ��������� ���� �������� �� ������������ �������
SELECT DISTINCT MaxSubject FROM StudentGrades;