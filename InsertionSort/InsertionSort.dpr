program InsertionSort;
const
  Linha: array[1..20] of integer = (20, 16, 23, 05, 10, 19, 83, 32, 33, 52, 04, 55, 15, 07, 02, 98, 65, 43, 71, 87);
var
  i: integer;

  procedure ISort(Linha: array of integer);
  var
    i, j, Aux: Integer;
  begin

    for i := 1 to (Length(Linha)) do
      begin
        Aux := Linha[i];
        j := i - 1;
        while (j >= 0) and (Linha[j] > Aux) do
          begin
            Linha[j + 1] := Linha[j];
            j := j - 1;
          end;
        Linha[j + 1] := Aux;
      end;

    for j := 0 to (length(Linha) - 1) do
      begin
        write(Linha[j]:2, ', ');
      end;

  end;

begin
  for i := 1 to 20 do
    begin
      Write(Linha[i]:2, ', ');
    end;
  Readln;
  Writeln('20, 16, 23, 05, 10, 19, 83, 32, 33, 52, 04, 55, 15, 07, 02, 98, 65, 43, 71, 87');
  Readln;
  Writeln('O Vetor ordenado ser�: ');
  Read;
  ISort(Linha);
  Readln;
end.
