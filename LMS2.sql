select* from complaint_table;
select* from order_details;
select * from user_table;
select * from order_table;

//for printing information of order
declare
     cursor C1(d number) is
     select * from order_details where order_id=d;
     rec C1%rowtype;
begin
     open C1(595);
     Loop
         fetch C1 into rec;
         exit when C1%notfound;
         dbms_output.put_line('order_id '||rec.order_id);
         dbms_output.put_line('Jeans :'||rec.Jeans);
         dbms_output.put_line('Bedsheet '||rec.Bedsheet);
         dbms_output.put_line('Shirt '||rec.Shirt);
         dbms_output.put_line('T-Shirt '||rec.Tshirt);
         
     end loop;
     close C1;
end;

//print user's detail
declare
     cursor C1(d number) is
     select * from User_Table where User_id=d;
     rec C1%rowtype;
begin
     open C1(31232);
     Loop
         fetch C1 into rec;
         exit when C1%notfound;
         dbms_output.put_line('Room_No '||rec.Room_no);
         dbms_output.put_line('Roll_No '||rec.Roll_no);
         dbms_output.put_line('Phone_No '||rec.Phone_no);
         dbms_output.put_line('User_id '||rec.User_id);
         dbms_output.put_line('User_name '||rec.User_name);
         dbms_output.put_line('Hostel '||rec.Hostel);
         
     end loop;
     close C1;
end;

//print no of orders of user
declare
     cursor C3(userid number) is
     select * from order_table where User_id=userid;
     rec C1%rowtype;
begin
     open C3(31231);
     Loop
         fetch C3 into rec;
         exit when C1%notfound;
         
     end loop;
     close C3;
end;
insert into user_table
values(646,102003064,9723772211,31233,'Atul','O');
insert into user_table
values(647,102003050,9723472211,31234,'Kunal','M');
insert into user_table
values(648,102003068,9723732211,31235,'Amit','O');

create or replace procedure entry(usr in number,ordr in Number,jeans in Number,bedsheet in number,shirt in number,tshirt in number,total in number)
is
begin
insert into order_details 
values(ordr,jeans,bedsheet,shirt,tshirt);
insert into order_table
values(usr,sysdate,null,total,ordr);
end;

create or replace procedure delivered(orde in number)
is 
begin 
update order_table
set date_of_receival=sysdate
where order_id=orde;
end;
declare
jean number;
bedsh number;
shirt number;
tshirt number;
total number;
usr number;
ordr number;

declare
usr number :=&usr;
ordr number:=&order;
jean number:=&jean;
bedsh number:=&bedsh;
tshirt number:=&tshirt;
shirt number:=&shirt;
total number:=&total;
begin
entry(usr,ordr,jean,bedsh,shirt,tshirt,total);
end;

