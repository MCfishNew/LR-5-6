var i, i_2, i_3, min: integer;
arra : array [1..20] of integer;
begin
  randomize;
  for i := 1 to 20 do arra[i] := random(100) - 25;
  for i := 1 to 20 do
    begin
      if (arra[i] < 0)then
        begin
          inc(i_3);
          arra[i] := 0;
        end;
     end;
   
  writeln('Кол-во удалённых отрицательных элем: ', i_3);
  write('Элем.массива: ');
  for i:= 1 to 20 do 
    begin
    if arra[i] <> 0 then
      write(arra[i], ' ');
    end;   
end.