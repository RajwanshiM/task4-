create table event(
	ID int,
	Name varchar,
	Gender varchar,
	Age int,
	Height int,
	Weight int,
	Team varchar,
	NOC varchar,
	Games varchar,
	Year int,
	Season varchar,
	City varchar,
	Sport varchar,
	Event varchar
)
	select * from event

 insert into event values(1,'A Dijiang','M',24,180,80,'China','CHN','1992 Summer',1992,'Summer','Barcelona','Basketball','Basketball Men Basketball')
insert into event values(2,'A Lamusi','M',23,170,60,'China','CHN','2012 Summer',2012,'Summer','London','Judo','Judo Men Extra-Lightweight')
insert into event values(3,'Gunnar Nielsen Aaby','M',24,156,50,'Denmark','DEN','1920 Summer',1920,'Summer','Antwerpen','Football','Football Mens Football')
insert into event values(4,'Edgar Lindenau Aabye','M',34,172,70,'Denmark','DEN','1900 Summer',1900,'Summer','Paris','Tug-Of-War','Tug-Of-War Mens Tug-Of-War')
insert into event values(5,'Christine Jacoba Aaftink','F',21,185,82,'Netherlands','NED','1988 Winter',1988,'Winter','Calgary','Speed Skating','Speed Skating Womens 500 metres')
insert into event values(6,'Christine Jacoba Aaftink','F',21,185,82,'Netherlands','NED','1988 Winter',1988,'Winter','Calgary','Speed Skating','Speed Skating Womens 1,000 metres')
insert into event values(7,'Paavo Johannes Aaltonen','M',31,188,75,'United States','USA','1992 Winter',1992,'Winter','Albertville','Cross Country Skiing','Cross Country Skiing Mens 10 kilometres')
insert into event values(8,'John Aalberg','M',31,183,72,'United States','USA','1992 Winter',1992,'Winter','Albertville','Cross Country Skiing','Cross Country Skiing Mens 10 kilometres')
insert into event values(9,'Cornelia Aalten','F',18,168,70,'Netherlands','NED','1932 Summer',1932,'Summer','Los Angeles','Athletics','Athletics Womens 4 x 100 metres Relay')
insert into event values(10,'Antti Sami Aalto','M',26,186,96,'Finland','FIN','2002 Winter',2002,'Winter','Salt Lake City','Ice Hockey','Ice Hockey Mens Ice Hockey')
insert into event values(11,'Einar Ferdinand ','M',26,153,60,'Finland','FIN','1952 Summer',1952,'Summer','Helsinki','Swimming','Swimming Mens 400 metres Freestyle')
insert into event values(12,'Jorma Ilmari Aalto','M',22,182,76.5,'Finland','FIN','1980 Winter',1980,'Winter','Lake Placid','Cross Country Skiing','Cross Country Skiing Mens 30 kilometres')
insert into event values(13,'Jyri Tapani Aalto','M',31,172,70,'Finland','FIN','2000 Summer',2000,'Summer','Sydney','Badminton','Badminton Mens Singles')
insert into event values(14,'Minna Maarit Aalto','F',30,159,55.5,'Finland','FIN','1996 Summer',1996,'Summer','Atlanta','Sailing','Sailing Womens Windsurfer')
insert into event values(15,'Pirjo Hannele Aalto','F',32,171,65,'Finland','FIN','1994 Winter',1994,'Winter','Lillehammer','Biathlon','Biathlon Womens 7.5 kilometres Sprint')

select *from event

	alter table event add column price_money int
	update event set price_money = 100000 where id = 15

	----

select * from event

1)---count of price money greater than 200000 and how many  got their count ?

select price_money ,count(price_money)from event where price_money >200000 group by price_money
order by price_money


2) --- from finland team whose price money if less than 300000

select  distinct team , sport, price_money from event where team = 'Finland'
group by team, sport , price_money
having  price_money < 300000 


	select * from event

3)----  max age of  from any one team

select age from event where team = 'Netherlands'
	order by age DESC limit 1

4)---- sum of price_money of male and female

select Gender,sum(price_money)from event group by Gender

5)---- name  of events held between 1900 and 2000 

select year,event from event group by event, year
	having year BETWEEN '1900' AND '2000' 
	order by year ASC

select * from event

6)----- name of athlets and their age according to criteria

select name , age  from event  group by name , age , height , weight
	having height >162  AND weight >50 order by name , age ASC
 
select * from event

7)-----  number of athelets from Finlaand

select name from event 
group by name ,team
having team = 'Finland'
order by  name ASC


8) --- no of male and female of distinct cities

select distinct team,  gender,count(gender) from event  group by  gender , team 

select * from event

9)----names of sport played only in summer greater than 2000 year

select  sport , season from event where season = 'Summer' 
group by sport , season , year
having year > 2000

	select * from event

	
10----female above 30

select Gender , age  from event where Gender = 'F'
group by Gender, age
having age >30















	