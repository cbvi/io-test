with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main with
   SPARK_Mode
is
   type Int_List is array (Integer range <>) of Integer;

   List : constant Int_List (1 .. 3) := (23, 66, 93);
   Int : Integer;
   Next : Integer;
begin
   Ada.Text_IO.Put_Line (Integer'Image (List (3)));

   Ada.Integer_Text_IO.Get (Item => Int);

   Ada.Text_IO.Put_Line (Integer'Image (Int));

   if Int >= List'First and Int <= List'Last then
      Next := List (Int);
      Ada.Text_IO.Put_Line (Integer'Image (Next));
   end if;

   Ada.Text_IO.New_Line;
end Main;
