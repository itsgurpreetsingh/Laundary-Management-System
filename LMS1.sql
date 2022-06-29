declare
     value number;
     cursor C1(d number) is
     select * from User_Table where User_id=d;
     rec C1%rowtype;
begin
    value:=&userid;
     open C1(value);
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
Insert into User_Table
values(347,102003070,9915413111,31232,'Gurpreet','k');