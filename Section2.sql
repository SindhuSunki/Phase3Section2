create database School
use School

create table Subject
(SubjectId int,
SubjectName nvarchar(50))

insert into Subject values(1,'English'),
(2,'Hindi'),(3,'Maths'),(4,'Science')

Create table Classes (
ClassID int primary key,
ClassName nvarchar(50))
insert into Classes values(101,'Class8'),
(102,'Class9'),(103,'Class10')

create table Student
(ID int,
Name nvarchar(50),
DateOfBirth date,
ClassId int ,
CONSTRAINT FK_Students_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID))

insert into Student values(1,'Sam','01/01/2001',101),
(2,'Ram','02/12/2003',103),(3,'Ravi','05/12/2004',103)

create index IX_Student_Class On Student (ClassID);
create index IX_Subject_SubjectName On Subject (SubjectName);
create index IX_Classes_ClassName On Classes (ClassName);
select * from Classes
select*from Subject
select*from Student
