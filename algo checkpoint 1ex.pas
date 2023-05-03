program Sum;

var
  num1, num2, distinct: array of integer;
  i, j, k, sum: integer;
  v: boolean;

begin
 
  writeln('Enter the first elements:');
  readln(num1);

  
  writeln('Enter the second elements:');
  readln(num2);

  
  for i := 0 to Length(num1) - 1 do
  begin
    
    v := False;
    for j := 0 to Length(distinct) - 1 do
    begin
      if num1[i] = distinct[j] then
      begin
        v := True;
      
      end;
    end;


    if not v then
    begin
      k := Length(distinct);
      SetLength(distinct, k + 1);
      distinct[k] := num1[i];
    end;
  end;


  for i := 0 to Length(num2) - 1 do
  begin
    
    v := False;
    for j := 0 to Length(distinctElements) - 1 do
    begin
      if num2[i] = distinct[j] then
      begin
        v := True;
       
      end;
    end;

    
    if not v then
    begin
      k := Length(distinct);
      SetLength(distinct, k + 1);
      distinct[k] := num2[i];
    end;
  end;

 
  sum := 0;
  for i := 0 to Length(distinct) - 1 do
  begin
    sum := sum + distinct[i];
  end;

  writeln('The sum of the distinct elements is: ', sum);
end.
