var i, i_2, L, min: integer;
arra : array [1..20] of integer;
begin
  randomize;
  for i := 1 to 20 do arra[i] := random(100) - 25;
  for i := 1 to 20 do
    begin
      if (arra[i] > 0) and (L <> 1) then
        begin
          writeln('Удалили элеменет первый пол.элем: ', arra[i]);
          arra[i] := 0;
          inc(L);
        end;
      if L = 1 then
        break;
     end;
     
  min := 100;   
  for i := 1 to 20 do
      if min > arra[i] then
          min := arra[i];
  
  i := 1;
  for i:= 1 to 20 do
    if min <> arra[i] then
      inc(i_2)
    else
    begin
      inc(i_2);
      writeln('Удалим min элемент: ', arra[i_2]);
      arra[i_2] := 0;
      break;
      end;      
  writeln('Итоговый массив: ', arra);
end.