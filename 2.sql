create table doctor(dssn varchar(10) primary key,dname varchar(15),speciality varchar(15),Experience int(3));

create table patient(pssn varchar(10) primary key, pname varchar(10),paddress varchar(20),age int(3));

create table pharma_co(pcname varchar(15) primary key,pcaddr varchar(10),pcphone bigint(10));

create table drug(tradename varchar(20) primary key,formula varchar(12),pcname varchar(15),foreign key(pcname) references pharma_co(pcname));

create table pharmacy(phname varchar(15) primary key,phaddr varchar(13),phphone bigint(10));

create table sell(phname varchar(15),tradename varchar(20),price int(4),foreign key(phname) references pharmacy(phname),foreign key(tradename) references drug(tradename),primary key(phname,tradename));

create table checks(dssn varchar(10),pssn varchar(10),foreign key(dssn) references doctor(dssn),foreign key(pssn) references patient(pssn),primary key(dssn,pssn));

create table prescribe(dssn varchar(10),pssn varchar(10),tradename varchar(20),
    date date,quantity int(3),
    foreign key(dssn) references doctor(dssn),
    foreign key(pssn) references patient(pssn),
    foreign key(tradename) references drug(tradename),
    primary key(dssn,pssn,tradename));

create table contract(pcname varchar(15),phname varchar(15),sdate date,ldate date,supervisor varchar(15),text varchar(15),foreign key(pcname) references pharma_co(pcname),
foreign key(phname) references pharmacy(phname),primary key(pcname,phname));


insert(doctor)

insert into doctor values('dr01','Ramesh','opthalmologist',5);
insert into doctor values('dr02','Rajesh','neurologist',7);
insert into doctor values('dr03','Manoj','pediatrician',4);
insert into doctor values('dr04','Anshuman','dermatologist',3);
insert into doctor values('dr05','Monisha','cardiologist',3);
insert into doctor values('dr06','ketaki','dentist',5);

insert(patient)

insert into patient values('pa01','Radha','Dharwad',20);
insert into patient values('pa02','Krishna','Hubli',20);
insert into patient values('pa03','Peter','Mysore',22);
insert into patient values('pa04','Rahim','Kalburgi',30);
insert into patient values('pa05','Rachel','Delhi',32);

insert(pharma_co)
insert into pharma_co values('Cipla','mumbai',9874561230);
insert into pharma_co values('Juggat Pharma','bangalore',8123456789);
insert into pharma_co values('Sun Pharma','Delhi',7123456789);
insert into pharma_co values('Reddys lab','Hyderabad',6123456789);
insert into pharma_co values('Eli Lilly','Chennai',7323456789);

insert(drug)

insert into drug values('dolo650','formula1','Cipla');
insert into drug values('Lantus','formula2','Cipla');
insert into drug values('Tusq','formula2','Cipla');
insert into drug values('Xanax','formula2','Cipla');
insert into drug values('mixtard','formula3','Cipla');
insert into drug values('janumet','formula3','Cipla');
insert into drug values('clavam','formula4','Cipla');
insert into drug values('duphaston','formula4','Cipla');
insert into drug values('thyronorm','formula5','Cipla');
insert into drug values('Augmentin','formula6','Sun Pharma');
insert into drug values('Galvus Met','formula6','Reddys lab');
insert into drug values('Glycomet','formula6','Eli Lilly');
insert into drug values('Botroclot','formula6','Juggat Pharma');


insert(pharmacy)

insert into pharmacy values('medplus','mumbai',9879874564);
insert into pharmacy values('medplus2','mumbai',9879874561);
insert into pharmacy values('medplus3','mumbai',9879874562);
insert into pharmacy values('medplus4','mumbai',9879874563);
insert into pharmacy values('medplus5','mumbai',9879874544);
insert into pharmacy values('medplus6','mumbai',9879874565);
insert into pharmacy values('medplus7','mumbai',9879874566);
insert into pharmacy values('appolo1','mumbai',9879874523);
insert into pharmacy values('appolo2','mumbai',9879874525);
insert into pharmacy values('appolo3','mumbai',9879874527);
insert into pharmacy values('appolo4','Bangalore',9879874527);
insert into pharmacy values('medlife','Bangalore',9879874527);
insert into pharmacy values('medlife2','chennai',9879874527);
insert into pharmacy values('netmeds','chennai',9879874527);
insert into pharmacy values('practo','hyderabad',9879874527);
insert into pharmacy values('pharmeasy','Delhi',9879874527);

insert(sells)

insert into sell values('appolo1','clavam',120);
insert into sell values('appolo2','clavam',140);
insert into sell values('medplus2','janumet',130);
insert into sell values('medplus3','mixtard',100);
insert into sell values('medplus4','tusq',120);
insert into sell values('medplus5','xanax',120);
insert into sell values('medplus6','xanax',140);
insert into sell values('medplus7','thyronorm',140);
insert into sell values('medplus7','xanax',160);
insert into sell values('appolo2','xanax',160);
insert into sell values('netmeds','Lantus',200);
insert into sell values('appolo1','dolo650',100);
insert into sell values('appolo2','dolo650',100);
insert into sell values('appolo3','dolo650',100);
insert into sell values('appolo4','dolo650',100);
insert into sell values('medlife','dolo650',100);
insert into sell values('medlife2','dolo650',100);
insert into sell values('medplus','dolo650',100);
insert into sell values('medplus2','dolo650',100);
insert into sell values('medplus3','dolo650',100);
insert into sell values('medplus4','dolo650',100);
insert into sell values('medplus5','dolo650',100);
insert into sell values('medplus6','dolo650',100);
insert into sell values('medplus7','dolo650',100);
insert into sell values('netmeds','dolo650',100);
insert into sell values('pharmeasy','dolo650',100);
insert into sell values('practo','dolo650',100);

insert(checks)

insert into checks values('dr01','pa01');
insert into checks values('dr01','pa02');
insert into checks values('dr01','pa03');
insert into checks values('dr01','pa04');
insert into checks values('dr01','pa05');
insert into checks values('dr02','pa02');
insert into checks values('dr03','pa03');
insert into checks values('dr04','pa04');
insert into checks values('dr05','pa05');




insert (prescribe)

insert into prescribe values('dr01','pa01','clavam','2013-01-01',2);
insert into prescribe values('dr01','pa02','dolo650','2013-01-02',5);
insert into prescribe values('dr01','pa03','Lantus','2013-01-03',3);
insert into prescribe values('dr01','pa04','duphaston','2013-01-04',7);
insert into prescribe values('dr01','pa05','Glycomet','2013-01-04',6);
insert into prescribe values('dr02','pa02','Augmentin','2014-01-04',6);
insert into prescribe values('dr03','pa03','Botroclot','2015-01-04',6);
insert into prescribe values('dr04','pa04','Tusq','2016-01-04',4);
insert into prescribe values('dr05','pa05','Xanax','2017-01-04',8);

insert (contract)

insert into contract values('Cipla','appolo1','2013-01-01','2015-01-01','sup1','text1');
insert into contract values('Eli Lilly','medlife','2013-08-01','2015-06-01','sup2','text2');
insert into contract values('Sun Pharma','medplus','2015-08-01','2017-06-01','sup3','text3');
insert into contract values('Reddys lab','netmeds','2015-07-01','2018-06-01','sup4','text4');
insert into contract values('Juggat Pharma','practo','2017-07-01','2018-06-01','sup5','text5');




select p.* from patient p,doctor d, checks c where p.p_ssn=c.p_ssn and d.d_ssn=c.d_ssn and
p.age>=20 and d.speciality="eye";                                       |
| select d.*,count(p.d_ssn) from doctor d,prescribe p where d.d_ssn=p.d_ssn and
year(p.date)="2019" group by p.d_ssn having count(p.d_ssn)>=2;                       |
| select p.* from phar_com p, pharmacy ph, contract c where p.phcom_name=c.phcom_name
and ph.ph_name=c.ph_name and p.phcom_adress=ph.ph_adress and c.supervisor >=1; |
| select * from doctor where experience in(select max(experience) from doctor);                                                                                       |
| select distinct d.* from drug d,pharmacy p, sold_by s where p.ph_name=s.ph_name and
s.tradename=d.trade_name;                                                      |
| select d.*, count(ph_name) from drug d group by ph_name having count(ph_name)=1;







4
select name,count(i.id), count(i.id)/(select count(*)from MUSICIAN) as Average from INSTRUMENT i, PLAY p where i.id=p.instid group by i.id;

5
select a.title from ALBUM a, PLAY p,INSTRUMENT i where a.SSN=p.SSN and p.instid=i.id and i.name="flute" and exists(select a.title from ALBUM a, PLAY p, INSTRUMENT i where a.SSN=p.SSN and p.instid=i.id and i.name="Guitar")and a.SSN in (select SSN from ALBUM where noofsongs >=(select avg(noofsongs)from ALBUM));

6
select m.* from MUSICIAN m, PLAY p, INSTRUMENT i where m.SSN=p.SSN having count(p.instid)=count(i.id);




6

select d.sp_type,avg(d.charge) from ( select a.*,b.capacity,c.address,b.sp_type from installation a inner join solar_panel b on a.pv_module=b.pv_module inner join user c on c.building_no=a.building_no where a.ptype="commercial")as d GROUP by d.sp_type;
