data f;
SUM=0;
DO i=1,3,5,7,9;
  SUM=SUM + i;
  output;
END; 

run;


