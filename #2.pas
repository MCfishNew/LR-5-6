var i, inc1, a, b: integer;
arra : array [1..20] of integer;
begin
  a := 1;
  randomize;
  writeln('Введите 20 целых чисел [от -22 до 93] (через пробел) :  ');
  for i := 1 to 20 do
    begin
      read(arra[i]);
      if (arra[i] < 93) and (arra[i] > -22) then
        b := b + arra[i];
    end;
    
  for i := 1 to 20 do
    begin
      arra[i] := random(93) - 22;
      if i mod 2 = 1 then
        if arra[i] mod 2 = 0 then
          inc(inc1);
      if arra[i] mod 2 = 1 then
        a := a * arra[i];
    end;
    writeln('Кол-во чётких чисел на нечетких местах: ', inc1);
    writeln('Произведене нечетких чисел: ', a);
    writeln('Сумма чисел введенных с клав.: ', b);
end.