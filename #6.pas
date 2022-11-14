var i ,like, N1: integer;
var wort : string;
begin
  write('Введите число: ');
  read(N1);
  var arra : array of integer;
  SetLength(arra, N1);
  
  if N1 = 1 then
    wort := ' число: '
  else if (N1 = 2) or (N1 = 3) or (N1 = 4) then
    wort := ' числа: '
  else
    wort := ' чисел: '; 
  
  write('Введите ', N1, wort);
  while i <> N1 do
    begin
      read(arra[i]);
      inc(i);
    end;
    
  for i := 1 to N1-1 do
    begin
      if arra[i-1] <= arra[i] then
        inc(like);
      
    end;
    if (like = N1-1) then
      writeln('Массив упорядочен: ', arra)
    else
      writeln('Массив не упорядочен: ', arra);
end.