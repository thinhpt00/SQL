CREATE TABLE Grades (
	Grade int primary key auto_increment,
	Min_Mark int,
	Max_Mark int
);

select * from Grades;

insert into Grades(Min_Mark,Max_Mark)
values (20,29),
		(30,39),
		(40,49),
		(50,59),
		(60,69),
		(70,79),
		(80,89),
		(90,100);
		
create table Students(
	ID int primary key auto_increment,
	Name varchar(10),
	Marks int
);

select * from Students;

insert into Students(Name,Marks)
values ('Julia',88),
		('Samantha',68),
		('Maria',99),
		('Scarlet',78),
		('Ashley',63),
		('Jane',81);


	
SELECT
    CASE
        WHEN Grade < 8 THEN NULL 
        ELSE Name
    END,
    Grade,
    Marks
FROM Students
JOIN Grades 
    ON Students.marks BETWEEN Grades.min_mark AND max_mark
ORDER BY Grade DESC, Name ASC, Marks ASC;	


SELECT
    CASE WHEN GRADE >= 8 THEN NAME 
         ELSE NULL 
    END,
    GRADE, MARKS
FROM Students JOIN Grades
ON MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY GRADE DESC,NAME,MARKS;
	
	