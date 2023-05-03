FUNCTION product(v1, v2: array of real; n: integer): real;
VAR
  i: integer;
  ps: real;
BEGIN
  ps := 0;
  FOR i := 0 TO n-1 DO
    ps := ps + v1[i] * v2[i];
  END;
  dot_product := ps;
END;

VAR
  v1, v2: array[0..99] of real; 
  ps: real;

BEGIN
  
  Write('the number of pairs: ');
  ReadLn(n);

  FOR i := 1 TO n DO
  BEGIN
    
    WriteLn('the elements of vector v1: ');
    FOR j := 0 TO n-1 DO
      ReadLn(v1[j]);

    WriteLn('the elements of vector v2: ');
    FOR j := 0 TO n-1 DO
      ReadLn(v2[j]);

    
    ps := dot_product(v1, v2, n);

    
    IF ps = 0 THEN
      WriteLn('Vectors are orthogonal')
    ELSE
      WriteLn('Vectors are not orthogonal');

  END;
END.
