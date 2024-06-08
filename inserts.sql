insert into genre VALUES (1,'Rock');
insert into genre values (2,'Folk');
insert into genre values (3,'Pop');
insert into genre  VALUES(4,'New age');
insert into genre  values (5,'Jazz');
insert into genre  values (6,'Country');

insert into musician values (1,'Melnitsa');
insert into musician values (2,'Jazz Band');
insert into musician values (3,'Phoenix');
insert into musician values (4,'Marty Robbins');
insert into musician values (5,'Petula Clark');
insert into musician values (6,'Pale Honey');

insert into musiciangenre values (1,1,6);
insert into musiciangenre values (2,2,1);
insert into musiciangenre values (3,3,5);
insert into musiciangenre values (4,4,1);
insert into musiciangenre values (5,5,2);
insert into musiciangenre values (6,6,4);
insert into musiciangenre values (7,1,1);
insert into musiciangenre values (8,2,4);
insert into musiciangenre values (9,5,5);
insert into musiciangenre values (10,3,6);

insert into album values (1,'My life',2024);
insert into album values (2,'My Time',2024);
insert into album values (3,'My Folk',2019);
insert into album values (4,'My Love',2020);
insert into album values (5,'Saddle Train',2020);
insert into album values (6,'Horse',2024);
insert into album values (7,'Sand nights',1950);
insert into album values (8,'Postman',1990);
insert into album values (9,'Wolf',2001);
insert into album values (10,'Country hits',2000);
insert into album values (11,'Solo',2010);
insert into album values (12,'i am not alone',2012);

insert into musicianalbum values (1,1,1);
insert into musicianalbum values (2,1,2);
insert into musicianalbum values (3,2,2);
insert into musicianalbum values (4,3,4);
insert into musicianalbum values (5,4,3);
insert into musicianalbum values (6,5,5);
insert into musicianalbum values (7,6,6);
insert into musicianalbum values (8,7,3);
insert into musicianalbum values (9,8,4);
insert into musicianalbum values (10,9,6);
insert into musicianalbum values (11,10,5);
insert into musicianalbum values (12,11,1);
insert into musicianalbum values (13,12,2);
insert into musicianalbum values (14,12,3);
insert into musicianalbum values (15,10,4);

insert into tracks values (1,'My generation','4 minutes',1);
insert into tracks values (2,'My faith','4 minutes',2);
insert into tracks values (3,'Find me','4 minutes',3);
insert into tracks values (4,'This song','3 minutes',4);
insert into tracks values (5,'Sweet corn','2 minutes',5);
insert into tracks values (6,'Grave it','4 minutes 10 seconds',6);
insert into tracks values (7,'Folk nights','3 minutes 30 seconds',7);
insert into tracks values (8,'Great evening','5 minutes',8);
insert into tracks values (9,'Best day','4 minutes 5 seconds',9);
insert into tracks values (10,'Holywood','4 minutes',10);
insert into tracks values (11,'Welcome to LA','4 minutes',11);
insert into tracks values (12,'My crave','1 minute 50 seconds',12);
insert into tracks values (13,'Go out','3 minutes',1);
insert into tracks values (14,'Get it in','2 minutes',2);
insert into tracks values (15,'Nameless','2 minutes',2);

insert into collection values (1,'Folks',2010);
insert into collection values (2,'Greats',2020);
insert into collection values (3,'Something',2010);
insert into collection values (4,'To go',2005);
insert into collection values (5,'To get',2001);
insert into collection values (6,'To find',2002);

insert into trackscollection values (1,1,1);
insert into trackscollection values (2,2,2);
insert into trackscollection values (3,3,3);
insert into trackscollection values (4,4,4);
insert into trackscollection values (5,5,5);
insert into trackscollection values (6,6,6);
insert into trackscollection values (7,7,1);
insert into trackscollection values (8,8,2);
insert into trackscollection values (9,9,3);
insert into trackscollection values (10,10,4);
insert into trackscollection values (11,11,5);
insert into trackscollection values (12,12,6);
insert into trackscollection values (13,13,1);
insert into trackscollection values (14,14,2);
insert into trackscollection values (15,1,3);