var i, N1, N2, sum_1, sum_2 : integer;
begin
  write('Введите два числа: ');
  read(N1, N2);
  var arra : array of integer;
  var orro : array of integer;
  SetLength(arra, N1);
  SetLength(orro, N2);
  
  write('Введите 1-й набор чисел: ');
  while i <> N1 do
    begin
      read(arra[i]);
      sum_1 := sum_1 + arra[i];
      inc(i);
    end;
  i:= 0;
  
  write('Введите 2-й набор чисел: ');
  while i <> N2 do
    begin
      read(orro[i]);
      sum_2 := sum_2 + orro[i];
      inc(i);
    end;
  i:= 0;
  
  if sum_1 > sum_2 then
    begin
    while i <> N1 do 
      begin
        arra[i] := arra[i] * 10;
        inc(i);
      end;
      writeln('Массив А увеличен в 10 раз: ', arra);
    end
    
  else // сумма массива А меньше Б
    begin
    while i <> N2 do
      begin
       orro[i] := orro[i] * 10;
       inc(i);
      end;
      writeln('Массив В увеличен в 10 раз: ', orro);
    end;
end.