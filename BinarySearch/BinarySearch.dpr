program BinarySearch;
const
  Linha: array[1..20] of integer = (02, 04, 05, 07, 10, 15, 16, 19, 20, 23, 32, 33, 43, 52, 55, 65, 71, 83, 87, 98);
var
  Key: integer;

  function BSearch(Key: integer; Linha: array of integer): integer;
  var
    Esquerda, Meio, Direita: Integer;
  begin

    Esquerda := 0;
    Direita := 19;

    Result := -1;

    while (Esquerda <= Direita) and (Result = -1) do
      begin
        Meio := (Esquerda + Direita) div 2;

        if (Key = Linha[Meio]) then
          Result := Meio
        else if (Key < Linha[Meio]) Then
          Direita := Meio - 1
        else
          Esquerda := Meio + 1;
      end;

  end;

begin
  Writeln('02, 04, 05, 07, 10, 15, 16, 19, 20, 23, 32, 33, 43, 52, 55, 65, 71, 83, 87, 98');
  Read;
  Writeln('Informe um N�mero da Sequ�ncia a cima: ');
  Readln(Key);
  writeln('A posi��o do valor ', Key, ' est� no �ndice: ', BSearch(Key, Linha));
  Readln;
end.
