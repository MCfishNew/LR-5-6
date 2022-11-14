   var i, inc1, inc2 , inc3, min, max: integer;
arra : array [1..20] of integer;
begin
  randomize;
  for i := 1 to 20 do arra[i] := random(65) - 52;
  max := 0;
  min := 65;
  for i := 1 to 20 do
    begin
      if arra[i] > max then
          max := arra[i];
      if (arra[i] > 0) and (arra[i] < min) then
          min := arra[i];
      if (arra[i] mod 5 = 0) then
        inc3 := arra[i];
    end;
    
    for i:= 1 to 20 do // функция нахождения позиции элем
      if arra[i] <> max then
          inc(inc1)
      else
        break;
      
    for i:= 1 to 20 do // функция нахождения позиции элем
      if arra[i] <> min then
          inc(inc2)
      else
        break;
    
  writeln(arra);
  writeln ('Максимальный элемент массива: ', max, ' Его положение: ', inc1);
  writeln ('Минимальный положительный элемент массива: ', min, ' Его положение: ', inc2);
  writeln ('Послдний элемент кратеный 5: ', inc3);
end.