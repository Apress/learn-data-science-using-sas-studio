data voters_format;
Format Name $21. ;
infile "/folders/myfolders/sasuser.v94/Voters_A.csv" dlm=',' firstobs=2;
input NAME $ YOB $  ENROLL $ DESIGNATE $ DT_ACCEPT $  CG  CTY $ DT_CHG $  DT_LAST_VPH $;

*creating age as a new variable;
age=2020-YOB;
run;

data voters_retain;
retain NAME YOB age ENROLL DESIGNATE DT_ACCEPT  CG  CTY DT_CHG  DT_LAST_VPH;
set voters_format;

if age= 340 then Delete;
run;

proc print data=voters_retain;
run;

