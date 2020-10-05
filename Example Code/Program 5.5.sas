data b;
SUM=0;
DO ILOOP=1 to 10 by 2;
  SUM=SUM + ILOOP;
  output; *The OUTPUT statement tells SAS to write the current observation to a SAS data set immediately, 
  not at the end of the DATA step;
  
END; 

run;