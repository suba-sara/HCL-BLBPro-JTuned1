Begin
   execute immediate 'drop table userdetails';
EXCEPTION
   WHEN OTHERS THEN NULL;
END;
/
create table userdetails(
   userid NUMBER(5) NOT NULL,
   firstname VARCHAR2(25) NOT NULL,
   lastname VARCHAR2(25) NOT NULL,
   email VARCHAR2(25) NOT NULL,
   mobileno NUMBER(10) NOT NULL,
   address VARCHAR2(25) NOT NULL, 
   username VARCHAR2(25) default NULL,
   password VARCHAR2(25) default NULL,
   PRIMARY KEY (userid)
);

-- Generate ID using sequence and trigger
drop sequence user_seq;
create sequence user_seq start with 1 increment by 1;

create or replace trigger user_seq_tr
 before insert on userdetails for each row
 when (new.userid is null)
begin
 select user_seq.nextval into :new.userid from dual;
end;
/

insert into userdetails(userid,firstname,lastname,email,mobileno,address,username,password)
values(1,'Hcl','Tech','hcltech@gmail.com',9087654321,'Bangalore','hcltech','hcltech');

insert into userdetails(userid,firstname,lastname,email,mobileno,address,username,password)
values(2,'Hcl','Soft','hclsoft@gmail.com',8087654321,'Chennai','hclsoft','hclsoft');


/////////////////////////////////////////////////////////////////////////////////////////////////


Begin
	execute immediate 'drop table donordetails';
EXCEPTION
   WHEN OTHERS THEN NULL;
END;
/
create table donordetails(
   donorid NUMBER(5) NOT NULL,
   donorname VARCHAR2(25) NOT NULL,
   hospitalname VARCHAR2(25),
   mobileno NUMBER(10) NOT NULL,
   gender VARCHAR2(6),
   email VARCHAR2(25) NOT NULL,
   bloodgroup VARCHAR2(5)
   address VARCHAR2(25), 
   units NUMBER(5),
   PRIMARY KEY (donorid)
);

-- Generate ID using sequence and trigger
drop sequence donor_seq;
create sequence donor_seq start with 1 increment by 1;

create or replace trigger donor_seq_tr
 before insert on donordetails for each row
 when (new.donorid is null)
begin
 select donor_seq.nextval into :new.userid from dual;
end;
/

insert into donordetails(donorid,donorname,hospitalname,mobileno,gender,email,bloodgroup,address,units)
values(1,'Raj','RHospital',9087654321,'Male','raj@gmail.com',A+ve,'Bangalore',1);

insert into donordetails(userid,firstname,lastname,email,mobileno,address,username,password)
values(2,'Kamal','RHospital',9082254321,'Male','kamal@gmail.com',AB+ve,'Bangalore',1);

