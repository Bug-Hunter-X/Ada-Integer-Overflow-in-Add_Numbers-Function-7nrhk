```ada
function Add_Numbers (A, B: Integer) return Integer is
   Result : Integer;
begin
   -- Check for potential overflow before performing addition
   if (B > 0 and A > Integer'Last - B) or (B < 0 and A < Integer'First - B) then
      raise Constraint_Error with "Integer overflow in Add_Numbers";
   else
      Result := A + B;
   end if;
   return Result;
end Add_Numbers;

procedure Main is
   X : Integer := 5;
   Y : Integer := 10;
   Z : Integer;
begin
   Z := Add_Numbers(X, Y);
   Ada.Text_IO.Put_Line("Sum is: " & Integer'Image(Z));
   -- Example of potential overflow
   X := Integer'Last - 1;
   Y := 2;
   begin
       Z := Add_Numbers (X, Y);
       Ada.Text_IO.Put_Line("Sum is: " & Integer'Image(Z));
   exception
       when Constraint_Error =>
           Ada.Text_IO.Put_Line("Integer overflow occurred");
   end;
end Main;
```