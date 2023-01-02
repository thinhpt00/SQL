CREATE DATABASE leo;

DROP DATABASE leo;

CREATE TABLE thinh.sales(
	sales_id int,
	created_at date,
	quantity int,
	gross_sales float,
	discount float,CREATE TABLE thinh.sales
	tax float,
	net_sales float,
	product_id int,
	customer_id int
);

INSERT INTO thinh.sales 
VALUES (1,'2019-02-12',2,53.07,0,5.31,47.76,14,1),
		(2,'2018-05-15',3,240.25,0,24.02,216.22,123,1),
		(3,'2019-12-07',2,71.79,6.42,6.54,58.83,105,1),
		(4,'2019-08-22',6,460.02,0,46,414.02,94,1),
		(5,'2018-10-10',5,448.77,0,44.88,403.89,132,1),
		(6,'2019-11-06',3,60.47,0,6.05,54.42,60,1),
		(7,'2018-08-11',5,330.68,0,33.07,297.61,55,1);


Select name  from thinh.sales ;

Select * from thinh.sales ;

ALTER TABLE thinh.sales
ADD name varchar(1) DEFAULT 'A';


ALTER TABLE thinh.sales 
DROP name;

ALTER TABLE thinh.sales 
ALTER customer_id SET DEFAULT 1;

ALTER TABLE thinh.sales 
ALTER name DROP DEFAULT;

ALTER TABLE thinh.sales 
MODIFY name INT NOT NULL;

UPDATE thinh.sales 
SET name = NOT NULL
WHERE name IS NOT NULL;

insert into thinh.sales (name)
values ('C');

delete from thinh.sales where sales_id is null;

select * from thinh.sales;
select * from thinh.temp;

create table thinh.temp like thinh.sales;
insert into thinh.temp select distinct * from thinh.sales;
drop table thinh.sales;
rename table thinh.temp to thinh.sales;

DESC thinh.sales;




rename table thinh.sales to thinh.sale;







#CREATE THE TABLE
CREATE TABLE sales_team_emails (
    sales_person_id INT AUTO_INCREMENT,
    sales_person_name VARCHAR(255),
    sales_person_email VARCHAR(255),
    PRIMARY KEY (sales_person_id)
);
#INSERT THE DATA
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Aditi","aditi@managementbliss.com");
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Furan T","Furan.Abey@me.com"); 
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Veronica Hedge","Veronika.Loud@me.com");
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Atharv","Atharv@managementbliss.com"); 
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Erick","Erick@mine.com","45 Parking West London"); 
  INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Rasmus","Rasmus.Thomas@mine.com"); 
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Aditi Sharma","aditi@managementbliss.com");
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Furan T","Furan.Abey@me.com"); 
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Veronica Longman","Veronika.Loud@me.com");
  INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Simon Rappid","Simon@bond.com"); 
 INSERT INTO sales_team_emails (sales_person_name,sales_person_email) 
 VALUES("Simon Rappid","Simon@bond.com");
























