data voters_enroll;
Format Name $21. ;
infile "/folders/myfolders/sasuser.v94/Voters_A.csv" dlm=',' firstobs=2;
input NAME $ YOB $  ENROLL $ DESIGNATE $ DT_ACCEPT $  CG  CTY $ DT_CHG $  DT_LAST_VPH $;
run;

data voters_democrat;
set voters_enroll;
if enroll='D';
run;

data voters_republican;
set voters_enroll;
if enroll='R';
run;

proc print data=voters_enroll (obs=3);
run;

proc print data=voters_democrat (obs=3);
run;
proc print data=voters_republican (obs=3);
run;