data e;
SUM=0;
i=1;
DO WHILE(i LT 10);
  SUM=SUM + i;
  output; 
  i=i+2;
  
END; 

run;