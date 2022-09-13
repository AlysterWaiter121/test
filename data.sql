select * from patient where age=20 and pssn in(select pssn from checks where dssn in(select dssn from doctor where speciality="opthalmologist"));
select d.*,count(p.pssn) from doctor d, prescribe p where p.dssn=d.dssn and p.date like "2013%" group by p.dssn having count(p.pssn) > 1;
select * from doctor where Experience in (select max(Experience) from doctor);
select p.* from pharma_co p,contract c, pharmacy ph where ph.phname=c.phname and p.pcname=c.pcname and ph.phaddr=p.pcaddr group by c.pcname having count(c.pcname)>=1;
select d.* from drug d,sell s,contract c where d.tradename=s.tradename and s.phname=c.phname and c.phname="MedLife";
select s.phname as Pharmacy_name, s.tradename from sell s,pharmacy p, drug d where s.phname=p.phname and d.tradename=s.tradename;

select d.sp_type, avg(d.charge) from (select a.*, b.capacity, c.address, b.sp_type from installation a inner join solar_panel b on a.pv_module = b.pv_module inner join user c on c.building_no =a.building_no where a.ptype = "commerical") as d GROUP by d.sp_type;

additional
1 select m.* from album a, musician m

where a.ssn = m.ssn

group by a.ssn

having count(a.ssn)>=ALL(select count(ssn) from album group by ssn);

2) select m.* from musician m, play p where m.ssn = p.ssn

group by p.ssn

having count (p.ssn) >= 1;

3) select PA. Pname, count (PR.Dssn) as NoOfDoc from PRESCRIBE PR, PATIENT PA

where PA. Pssn = PR.Pssn and PR.Pdate like "2013-07%"

group by PR. Pssn; 4) select PC.* from PHARMA COMP PC, CONTRACT C where PC. PC Name = C.PC Name

group by C.PC Name

having count (C. PC_Name) >=

ALL (select count (PC. PC_Name) from CONTRACT C, PHARMA_COMP PC where C.PC_Name = PC. PC Name group by C.PC_Name);

5) select V.*, sum (I.ICharge) as Total from VENDOR V, INSTALLED BY I

where V.TIN = I.TIN

group by I.TIN

having sum(I.ICharge)>=

ALL (select avg(I.ICharge) from INSTALLED BY I);

6 select V.* from VENDOR V, INSTALLED BY I where I.TIN = V.TIN and exists (select * from INSTALLED_BY);