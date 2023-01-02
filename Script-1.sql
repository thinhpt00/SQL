create table sales(
	branch varchar(255),
	date date,
	seller varchar(255),
	item varchar(255),
	quantity int
);

select * from sales;

insert into sales 
values  ('Paris-1','2021-12-07','Charles','Headphones A2',1),
		('London-1','2021-12-06','John','Cell Phone X2',2),
		('London-2','2021-12-07','Mary','Headphones A1',1),
		('Paris-1','2021-12-07','Charles','Battery Charger',1),
		('London-2','2021-12-07','Mary','Cell Phone B2',2),
		('London-1','2021-12-07','John','Headphones A0',5),
		('London-1','2021-12-07','Sean','Cell Phone X1',2);
	
alter table sales
add unit_price int not null;
	
update sales
set unit_price = 80,
	unit_price = 90
where id = 1 and
	  id = 2;
	 
UPDATE sales 
SET unit_price = ELT(FIELD(id,1,2,3,4,5,6,7),80,120,60,50,90,75,100);	

alter table sales
drop id;
	 
	 
	 
alter table sales
add id int primary key auto_increment;

desc sales;

  SELECT
    branch,
    date,
    MAX(unit_price) AS highest_price
  FROM sales
  GROUP BY branch, date;
	

WITH highest AS (
  SELECT
    branch,
    date,
    MAX(unit_price) AS highest_price
  FROM sales
  GROUP BY branch, date
)
SELECT
  sales.*,
  h.highest_price
FROM sales
JOIN highest h
  ON sales.branch = h.branch
    AND sales.date = h.date;	
	
  SELECT *,
    SUM(unit_price * quantity ) OVER(order by id ) AS daily_revenue,
    row_number() over() as xxx
  FROM   sales;
--   WHERE EXTRACT(YEAR FROM date) = 2021;
--   GROUP BY 1,2;	
	
select unit_price from sales	
order by unit_price;

select * from sales;

select unit_price 
from (select unit_price, row_number() over(order by unit_price) as rn from sales) as x
where rn = (select count(*)+1 from sales)/2;
	
insert into sales(unit_price)
values (110);


SET @row_index := -1;
SELECT ROUND(AVG(subq.unit_price), 4) as median FROM (
    SELECT @row_index:=@row_index + 1 AS row_index, unit_price
    FROM sales
    ORDER BY unit_price
) AS subq
WHERE subq.row_index IN (FLOOR(@row_index/2), CEIL(@row_index/2));
		