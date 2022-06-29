-- to register complaints
declare
orderid number(10,0);
cmpl varchar2(1000 Byte);
begin
orderid:=&orderid;
cmpl:='&cmpl';
complaints(cmpl,orderid);
end;
-- to add delivery date
declare
orderid number(10,0);
begin
orderid:=&orderid;
delivered(orderid);
end;
-- to add entry of items
declare
usr number ;
ordr number;
jean number;
bedsh number;
tshirt number;
shirt number;
total number;
begin
usr:=&usr;
ordr:=&order;
jean:=&jean;
bedsh:=&bedsh;
tshirt:=&tshirt;
shirt:=&shirt;
total:=&total;
entry(usr,ordr,jean,bedsh,shirt,tshirt,total);
end;
--to add new user
declare 
Room_no number(3) ;
Roll_no number(10);
Phone_no number(10);
User_id number(20) ;
User_name varchar(10);
Hostel varchar2(1);
begin 
Room_no := &roomno;
Roll_no := &rollno;
Phone_no := &phone;
User_id := &userid;
User_name := '&usrname';
Hostel := '&hostel';

userentry(Room_no,Roll_no,Phone_no,User_id,User_name,Hostel);
end;

select * from user_table;
select * from order_details;
select * from complaint_table;
select * from order_table;