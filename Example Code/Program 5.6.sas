data d;
SUM=0;
i=1;
DO UNTIL (i GT 9);
  SUM=SUM + i;
  output;
  i=i+2;
   
END; 

run;