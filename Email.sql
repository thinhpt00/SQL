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
 

select * from sales_team_emails ;

select * from sales_team_emails
where sales_person_id in 
(select max(sales_person_id) from sales_team_emails
group by sales_person_email
order by sales_person_email);


delete from sales_team_emails
where 
	sales_person_id in (
	select 
		sales_person_id 
	from (
		select 
			sales_person_id,
			row_number() over(
				partition by sales_person_email 
				order by sales_person_email) as rn 
		from sales_team_emails
		) as r
	where rn > 1	
);


select 
	sales_person_email,
	row_number() over(
		partition by sales_person_email 
		order by sales_person_email) as rn 
from sales_team_emails;


