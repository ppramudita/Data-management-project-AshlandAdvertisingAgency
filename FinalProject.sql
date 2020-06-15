select * from PROJECT;
select * from MEDIA;
select * from AGENTS;
select * from MEDIA_CATEGORIES;
select * from SPONSORS;
select * from CONTRACTS;
select * from TALENTS;
select * from OUTLETS;
select * from MEDIA_ALLOCATION;

---MEdia advertising creation
CREATE TABLE MEDIA_ADVERTISING
(
ADID VARCHAR2(5) PRIMARY KEY,
ADTYPE VARCHAR2(20),
AGENT_ID VARCHAR2(10),
BUDGET NUMBER(10),
COST NUMBER(8),
CONSTRAINT AGENT_ID_FK4 FOREIGN KEY(AGENT_ID) REFERENCES AGENTS(AGENT_ID)
);
drop table MEDIA_ADVERTISING;




--media categories insertion
insert into MEDIA_CATEGORIES values(101,'Film');
insert into MEDIA_CATEGORIES values(102,'TV');
insert into MEDIA_CATEGORIES values(103,'Radio');
insert into MEDIA_CATEGORIES values(104,'Billboards Ads');
insert into MEDIA_CATEGORIES values(105,'Internet');
insert into MEDIA_CATEGORIES values(106,'Brochures');
insert into MEDIA_CATEGORIES values(107,'Other Print Media');
insert into MEDIA_CATEGORIES values(108,'Multimedia');
insert into MEDIA_CATEGORIES values(109,'Media Blitz');
insert into MEDIA_CATEGORIES values(110,'Promotions');
insert into MEDIA_CATEGORIES values(111,'Movie Theaters');

select * from MEDIA_CATEGORIES;
--Sponsor insertion
insert into SPONSORS values ('SP1001','White Castle',145000);
insert into SPONSORS values ('SP1002','Apple',985000);
insert into SPONSORS values ('SP1003','Samsung',950000);
insert into SPONSORS values ('SP1004','Walmart',40000);
insert into SPONSORS values ('SP1005','MetLife',25000);
insert into SPONSORS values ('SP1006','Jewel Co',50000);
insert into SPONSORS values ('SP1007','BestBuy',70000);
insert into SPONSORS values ('SP1008','Macys',60000);
insert into SPONSORS values ('SP1009','Draper and Kramer',35000);
insert into SPONSORS values ('SP1010','Marvel',800000);
insert into SPONSORS values ('SP1011','McDonalds',250000);

select * from sponsors;
--Outlet insertion
insert into OUTLETS values ('OU1001','Printing Press','AAA Printing Press','Chicago');
insert into OUTLETS values ('OU1002','Billboard','AAA BillBoard Co','Chicago');
insert into OUTLETS values ('OU1003','Radio','AAA Radio','Chicago');
insert into OUTLETS values ('OU1004','TV and Broadcasting','AAA TV-Broadcasting','Wisconsin');
insert into OUTLETS values ('OU1005','Printing Press','ABC Printing Press','Wisconsin');
insert into OUTLETS values ('OU1006','Billboard','ABC BillBoard Co','Wisconsin');
insert into OUTLETS values ('OU1007','Radio','ABC Radio','Wisconsin');
insert into OUTLETS values ('OU1008','TV and Broadcasting','ABC TV-Broadcasting','Wisconsin');
insert into OUTLETS values ('OU1009','TV and Broadcasting','XYZ TV-Broadcasting','Indiana');
insert into OUTLETS values ('OU1010','Billboard','XYZ BillBoard Co','Indiana');
insert into OUTLETS values ('OU1011','Radio','XYZ Radio','Indiana');

select * from outlets;
---agents insertion
insert into AGENTS values ('A0001','Anthony Gallardo',300,TO_DATE('3/20/2017', 'mm/dd/yyyy'),TO_DATE('2/28/2019', 'mm/dd/yyyy'),'OU1001');
insert into AGENTS values ('A0002','John Whet',350,TO_DATE('7/25/2017', 'mm/dd/yyyy'),TO_DATE('7/25/2018', 'mm/dd/yyyy'),'OU1002');
insert into AGENTS values ('A0003','Frank Muller',200,TO_DATE('6/17/2018', 'mm/dd/yyyy'),TO_DATE('1/17/2019', 'mm/dd/yyyy'),'OU1001');
insert into AGENTS values ('A0004','Patricia Collens',100,TO_DATE('3/15/2018', 'mm/dd/yyyy'),TO_DATE('9/17/2019', 'mm/dd/yyyy'),'OU1004');
insert into AGENTS values ('A0005','Drew Barimore',120,TO_DATE('11/01/2018', 'mm/dd/yyyy'),TO_DATE('3/30/2019', 'mm/dd/yyyy'),'OU1005');
insert into AGENTS values ('A0006','Mark Wahl',220,TO_DATE('1/2/2018', 'mm/dd/yyyy'),TO_DATE('2/20/2020', 'mm/dd/yyyy'),'OU1006');
insert into AGENTS values ('A0007','Kelly Montery',160,TO_DATE('7/22/2018', 'mm/dd/yyyy'),TO_DATE('11/01/2019', 'mm/dd/yyyy'),'OU1008');
insert into AGENTS values ('A0008','Sandie Schell',250,TO_DATE('12/20/2017', 'mm/dd/yyyy'),TO_DATE('2/09/2019', 'mm/dd/yyyy'),'OU1007');
insert into AGENTS values ('A0009','Lynn Jefferson',110,TO_DATE('9/9/2017', 'mm/dd/yyyy'),TO_DATE('1/30/2019', 'mm/dd/yyyy'),'OU1009');
insert into AGENTS values ('A0010','Murphy Greenaway',80,TO_DATE('10/30/2018', 'mm/dd/yyyy'),TO_DATE('11/28/2019', 'mm/dd/yyyy'),'OU1010');
insert into AGENTS values ('A0011','Thomas Culler',90,TO_DATE('12/3/2018', 'mm/dd/yyyy'),TO_DATE('12/2/2019', 'mm/dd/yyyy'),'OU1003');


select * from AGENTS;
--talents
insert into TALENTS values ('T0001','Fiona','Garfield',101);
insert into TALENTS values ('T0002','Sheikh','Ahmad',102);
insert into TALENTS values ('T0003','Louise','Litt',103);
insert into TALENTS values ('T0004','Garbriel','Hunt',104);
insert into TALENTS values ('T0005','Dennis','McNaught',105);
insert into TALENTS values ('T0006','John','Hooper',106);
insert into TALENTS values ('T0007','Leonard','Carrey',107);
insert into TALENTS values ('T0008','Veronica','Muller',108);
insert into TALENTS values ('T0009','Sarah','Johnson',109);
insert into TALENTS values ('T0010','Rhonda','Vegas',110);
insert into TALENTS values ('T0011','Alex','Muriel',111);

select * from TALENTS;

select * from project;

insert into PROJECT values ('P001','New Media','Media for New Gen',16000,101,'A0001','SP1007','CNT001');
insert into PROJECT values ('P002','Media  House','Media House Inc',17000,101,'A0002','SP1008','CNT002');
insert into PROJECT values ('P003','Apple XR','Apple Inc',80000,101,'A0003','SP1009','CNT003');
insert into PROJECT values ('P004','Samsung Note 9','Samsung',75000,101,'A0004','SP1010','CNT004');
insert into PROJECT values ('P005','WC BLK FRIDAy','WC BLK Friday Deals',10000,101,'A0005','SP1011','CNT005');
insert into PROJECT values ('P006','Walmart Bfriday','BlackFriday Walmart',70000,101,'A0006','SP1003','CNT006');
insert into PROJECT values ('P007','DK KingsWood','D and K KingsWood',15000,101,'A0007','SP1004','CNT007');
insert into PROJECT values ('P008','Jewel Community','Jewel Blk Community',25000,101,'A0008','SP1005','CNT008');
insert into PROJECT values ('P009','Best Deals','Best Deals Bestbuy',92000,101,'A0009','SP1006','CNT009');
insert into PROJECT values ('P010','ShopNRoam Macys','ShopNRoam Macys',35000,101,'A0010','SP1007','CNT010');

--Contract table

insert into CONTRACTS values ('CNT001',TO_DATE('12/3/2018', 'mm/dd/yyyy'),TO_DATE('12/2/2019', 'mm/dd/yyyy'),'A0005');						
insert into CONTRACTS values ('CNT002',TO_DATE('12/3/2016', 'mm/dd/yyyy'),TO_DATE('12/2/2020', 'mm/dd/yyyy'),'A0005');						
insert into CONTRACTS values ('CNT003',TO_DATE('11/3/2017', 'mm/dd/yyyy'),TO_DATE('12/16/2019', 'mm/dd/yyyy'),'A0006');						
insert into CONTRACTS values ('CNT004',TO_DATE('08/4/2018', 'mm/dd/yyyy'),TO_DATE('12/2/2023', 'mm/dd/yyyy'),'A0007');						
insert into CONTRACTS values ('CNT005',TO_DATE('07/18/2018', 'mm/dd/yyyy'),TO_DATE('12/8/2020', 'mm/dd/yyyy'),'A0008');						
insert into CONTRACTS values ('CNT006',TO_DATE('08/28/2018', 'mm/dd/yyyy'),TO_DATE('08/08/2020', 'mm/dd/yyyy'),'A0003');						
insert into CONTRACTS values ('CNT007',TO_DATE('11/09/2018', 'mm/dd/yyyy'),TO_DATE('10/29/2020', 'mm/dd/yyyy'),'A0004');						
insert into CONTRACTS values ('CNT008',TO_DATE('09/06/2018', 'mm/dd/yyyy'),TO_DATE('10/06/2021', 'mm/dd/yyyy'),'A0003');						
insert into CONTRACTS values ('CNT009',TO_DATE('12/06/2019', 'mm/dd/yyyy'),TO_DATE('11/06/2021', 'mm/dd/yyyy'),'A0004');						
insert into CONTRACTS values ('CNT010',TO_DATE('10/06/2018', 'mm/dd/yyyy'),TO_DATE('12/08/2021', 'mm/dd/yyyy'),'A0010');

--media

insert into MEDIA values ('MED001','NBC Corporation',TO_DATE('12/3/2018', 'mm/dd/yyyy'),TO_DATE('12/2/2019', 'mm/dd/yyyy'),'A0005',6000);			
insert into MEDIA values ('MED002','Kiss FM',TO_DATE('12/3/2016', 'mm/dd/yyyy'),TO_DATE('12/2/2018', 'mm/dd/yyyy'),'A0008',7999);			
insert into MEDIA values ('MED003','7 News Corp',TO_DATE('09/3/2015', 'mm/dd/yyyy'),TO_DATE('09/2/2020', 'mm/dd/yyyy'),'A0006',8778);			
insert into MEDIA values ('MED004','Chicago Tribune',TO_DATE('10/3/2018', 'mm/dd/yyyy'),TO_DATE('10/2/2019', 'mm/dd/yyyy'),'A0007',8898);			
insert into MEDIA values ('MED005','Times of NewYork',TO_DATE('10/3/2017', 'mm/dd/yyyy'),TO_DATE('11/2/2018', 'mm/dd/yyyy'),'A0008',9001);			
insert into MEDIA values ('MED006','GoogleAds',TO_DATE('07/4/2018', 'mm/dd/yyyy'),TO_DATE('07/05/2019', 'mm/dd/yyyy'),'A0001',9879);			
insert into MEDIA values ('MED007','FacebookAds',TO_DATE('06/12/2018', 'mm/dd/yyyy'),TO_DATE('08/08/2019', 'mm/dd/yyyy'),'A0001',4000);			
insert into MEDIA values ('MED008','BBC Corporation',TO_DATE('10/3/2018', 'mm/dd/yyyy'),TO_DATE('12/2/2021', 'mm/dd/yyyy'),'A0003',5900);			
insert into MEDIA values ('MED009','Universal',TO_DATE('12/01/2018', 'mm/dd/yyyy'),TO_DATE('12/2/2022', 'mm/dd/yyyy'),'A0002',9999);			
insert into MEDIA values ('MED010','Marvel',TO_DATE('12/3/2018', 'mm/dd/yyyy'),TO_DATE('12/12/2019', 'mm/dd/yyyy'),'A0009',8999);			


--Project

insert into PROJECT values ('P001','New Media','Media for New Gen',16000,101,'A0005','SP1007','CNT001');
insert into PROJECT values ('P002','Media  House','Media House Inc',17000,101,'A0005','SP1008','CNT002');
insert into PROJECT values ('P003','Apple XR','Apple Inc',80000,101,'A0006','SP1009','CNT003');
insert into PROJECT values ('P004','Samsung Note 9','Samsung',75000,101,'A0007','SP1010','CNT004');
insert into PROJECT values ('P005','WC BLK FRIDAy','WC BLK Friday Deals',10000,101,'A0008','SP1011','CNT005');
insert into PROJECT values ('P006','Walmart Bfriday','BlackFriday Walmart',70000,101,'A0003','SP1003','CNT006');
insert into PROJECT values ('P007','DK KingsWood','D and K KingsWood',15000,101,'A0004','SP1004','CNT007');
insert into PROJECT values ('P008','Jewel Community','Jewel Blk Community',25000,101,'A0003','SP1005','CNT008');
insert into PROJECT values ('P009','Best Deals','Best Deals Bestbuy',92000,101,'A0004','SP1006','CNT009');
insert into PROJECT values ('P010','ShopNRoam Macys','ShopNRoam Macys',35000,101,'A0010','SP1007','CNT010');

alter table project modify (projname varchar2(40),proj_title varchar2(40));

alter table project modify (projname varchar2(100),proj_title varchar2(100),proj_cost number(10));

select * from contracts;]

select * from media;

select * from project;

select * from media_allocation;





insert into MEDIA_ALLOCATION values ('ALLOC_001','P004','MED001',101);
insert into MEDIA_ALLOCATION values ('ALLOC_002','P002','MED002',102);
insert into MEDIA_ALLOCATION values ('ALLOC_003','P003','MED003',104);
insert into MEDIA_ALLOCATION values ('ALLOC_004','P001','MED004',105);
insert into MEDIA_ALLOCATION values ('ALLOC_005','P005','MED005',103);
insert into MEDIA_ALLOCATION values ('ALLOC_006','P008','MED006',102);
insert into MEDIA_ALLOCATION values ('ALLOC_007','P009','MED007',101);
insert into MEDIA_ALLOCATION values ('ALLOC_008','P006','MED008',107);
insert into MEDIA_ALLOCATION values ('ALLOC_009','P007','MED009',108);
insert into MEDIA_ALLOCATION values ('ALLOC_010','P010','MED010',102);


insert into MEDIA_ADVERTISING values ('AD001','Mobile Ad','A0001',6000,3000);
insert into MEDIA_ADVERTISING values ('AD002','Mobile Ad','A0001',6000,2000);
insert into MEDIA_ADVERTISING values ('AD003','Mobile Ad','A0001',6000,2000);
insert into MEDIA_ADVERTISING values ('AD004','Billboard','A0006',8000,6000);
insert into MEDIA_ADVERTISING values ('AD005','Informercials','A0008',8000,7000);
insert into MEDIA_ADVERTISING values ('AD006','Classified','A0005',10000,2000);
insert into MEDIA_ADVERTISING values ('AD007','Radio','A0004',5000,3000);
insert into MEDIA_ADVERTISING values ('AD008','TV','A0003',7000,3000);
insert into MEDIA_ADVERTISING values ('AD009','Facebook AD','A0009',7000,3000);
insert into MEDIA_ADVERTISING values ('AD010','GoogleAds','A0009',7000,5000);

select * from MEDIA_ADVERTISING;

insert into SPONSORS values ('SP1011','McDonalds',250000);
select * from sponsors;

insert into SPONSORS values ('SP1016','Kellys',12500000000);

drop table project;

insert into MEDIA_ADVERTISING values ('AD0105','GoogleAds','A0009',7000,5000);

insert into contracts values ('',TO_DATE('10/06/2018', 'mm/dd/yyyy'),TO_DATE('12/08/2021', 'mm/dd/yyyy'),'A0012');

delete from MEDIA where MED_ID ='MED101';

delete from PROJECT where PROJID = 'P010';

select * from media_allocation
where med_id in (select med_id from media where med_id = 'MED001');

select * from TALENTS
where tal_lname like '%hunty%';


select p.ProjID, Projname, proj_cost, m.med_id
from project p inner join media_allocation m
on p.projid = m.med_id


select p.ProjID, Projname, proj_cost, m.med_id
from project p inner join media_allocation m
on p.projid = m.projid


select count(sponsor_id) as sponsor_count , sponsor_id 
from project
group by sponsor_id;


select DriverName, CarType,
       min(timestampdiff(second, StartTime, EndTime)) as Best,
       max(timestampdiff(second, StartTime, EndTime)) as Worst
from followingtable ft
group by DriverName, CarType;

select cont_id,
       min(cont_end- cont_start) as shortest,
       max(cont_end- cont_start) as Longest
from contracts
group by cont_id
order by 2,3;


select avg(cont_end- cont_start) as Average from 
contracts;


select distinct a.agent_id, a.agent_name 
from agents a
where a.agent_id not in (select p.agent_id from project p);

select count(mcat_id) as "Maximum_Favorite", mcat_id as "Media Category"
from project p
group by mcat_id;


select * 
from project 
where proj_cost = (
select max(PROJ_COST)
from project);

select count(Mcat_id), PROJID
from media_allocation
group by PROJID

select avg(proj_cost) from project;

select distinct a.mcat_id, a.media_type 
from media_categories a
where a.mcat_id not in (select p.mcat_id from project p);