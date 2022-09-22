create database intern;
use intern;

#Qustion 1
create table matches (id int,city varchar(80), date date, player_of_match varchar(80), venue varchar(80),neutral_venue int,
team1 varchar(80),team2 varchar(80),toss_winner varchar(80),toss_decision varchar(80),winner varchar(80),result varchar(80),
result_margin int,eliminater varchar(80),method varchar(80),umpire1 varchar(50),umpire2 varchar(50));

#Question 2
create table deliveries(id int,inning int, `over` int,ball int,batsman varchar(80),non_striker varchar(80),bowler varchar(80),
batsman_runs int,extra_runs int,total_runs int,is_wicket int,dismissal_kind varchar(80),player_dismissed varchar(80),fielder varchar(80),
extras_type varchar(80),batting_team varchar(80),bowling_team varchar(80));

#Quetion5
select * from deliveries limit 20;
#Quetion6
select * from matches limit 20;
#Quetion7
select * from matches where date="02-05-2013";
#Quetion8
select * from matches where result_margin>100 order by date desc;
#Quetion9
select city, count(city) as count_of_city from matches group by city order by count_of_city desc;
