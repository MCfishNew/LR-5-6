var i, i_2, i_3, L, min: integer;
arra : array [1..20] of integer;
begin
  randomize;
  for i := 1 to 20 do 
    begin
      arra[i] := random(100) - 25;
      if (arra[i] mod 2 = 0) and (L <> 1) then 
        begin
          inc(L);
          i_3 := i;
          writeln('Первое чётное число: ', arra[i_3]);
        end;
    end;
  
  for i := 1 to 20 do
      if arra[i] mod 2 = 0 then
          inc(i_2);
      
  arra[i_3 + 1] := i_2; 
  writeln('Кол-во чётких чисел: ', i_2);
  writeln('Итоговый массив: ', arra); // единственный минус программы в том, что мы теряем элемент после первого четного числа
end.