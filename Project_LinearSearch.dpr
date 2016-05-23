program Project_LinearSearch;
const
  Linha: array[1..20] of integer = (20, 16, 23, 05, 10, 19, 83, 32, 33, 52, 04, 55, 15, 07, 02, 98, 65, 43, 71, 87);
var
  Key: integer;

function LinearSearch(Key: integer; Linha: array of integer): integer;
var
  i, n, iLast: Integer;
begin
  i := 0;

  n := Length(Linha) - 1;

  iLast := Linha[n];
  Linha[n] :=  Key;

  while (Linha[i] <> Key) do Inc(i);

  Linha[n] := iLast;

  if Linha[i] = Key then
    Result := i
  else
    Result := -1;

end;

begin
  Writeln('20 16 23 05 10 19 83 32 33 52 04 55 15 07 02 98 65 43 71 87');
  Read;
  Writeln('Informe um N�mero da Sequ�ncia a cima: ');
  Readln(Key);
  Writeln('A posi��o do valor ', Key, ' est� no �ndice: ', LinearSearch(Key, Linha));
  Readln;
end.
