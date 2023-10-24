drop database if exists joindb;
create database joindb
 DEFAULT CHARACTER SET utf8
 DEFAULT COLLATE utf8_general_ci;

use joindb;
create table movie (
    mname varchar(20),
    aname varchar(20),
    PRIMARY KEY(mname)
) ENGINE=INNODB
 DEFAULT CHARACTER SET utf8
 DEFAULT COLLATE utf8_general_ci;

create table actor (
    aname varchar(20),
    birthdate date,
    PRIMARY KEY(aname)
) ENGINE = INNODB
 DEFAULT CHARACTER SET utf8
 DEFAULT COLLATE utf8_general_ci;
 
 insert into movie values ('남산의 부장들', '이병헌');
insert into movie values ('다만 악에서 구하소서', '황정민');
insert into movie values ('반도', '강동원');
insert into movie values ('히트맨','권상우');
insert into movie values ('테넷', null);

insert into actor values ('이병헌', '1970-07-12');
insert into actor values ('황정민', '1970-09-01');
insert into actor values ('강동원', '1981-01-18');
insert into actor values ('권상우', '1976-08-05');
insert into actor values ('유아인', '1986-10-06');

select * from movie, actor;
select * from movie cross join actor;
select * from movie join actor;

select * from movie, actor where movie.aname = actor.aname;
select * from movie join actor on movie.aname = actor.aname;
select * from movie inner join actor on movie.aname = actor.aname;

select * from movie join actor using(aname);
select * from movie natural join actor;

select * from movie left outer join actor on movie.aname = actor.aname;
select * from movie left join actor on movie.aname = actor.aname;

select * from movie right outer join actor on movie.aname = actor.aname;
select * from movie right join actor on movie.aname = actor.aname;

select * from movie left outer join actor on movie.aname = actor.aname
union
select * from movie right outer join actor on movie.aname = actor.aname;
