var i: integer;
arra : array [1..20] of integer;
begin
  randomize;
  writeln('Введите 20 целых чисел: (За вас всё решили) ');
  for i := 1 to 20 do
    begin
      arra[i] := random(100) - 50;
      if arra[i] > 0 then
        arra[i] := 0
      else
         if arra[i] < 0 then
            arra[i] := sqr(arra[i]);
    end;
    write(arra);
end.