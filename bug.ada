```ada
function Add_Numbers (A, B: Integer) return Integer is
begin
  return A + B;
end Add_Numbers;

procedure Main is
   X : Integer := 5;
   Y : Integer := 10;
   Z : Integer;
begin
   Z := Add_Numbers(X, Y);
   Ada.Text_IO.Put_Line("Sum is: " & Integer'Image(Z));
end Main;
```