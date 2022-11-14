var i, i_2, N: integer;
arra : array [1..30] of integer;
orro : array [1..30] of integer;
begin
  randomize;
  for i := 1 to 30 do 
    begin
      arra[i] := random(67) - 99;
      if arra[i] mod 2 = 0 then
        orro[i-i_2] := arra[i]
      else
        inc(i_2);
    end;
  writeln('Массив А: ', arra);
  writeln('Массив В: ', orro);
end.