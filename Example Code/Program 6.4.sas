data voters_format;
Format Name $21. ;
infile "/folders/myfolders/SAS4Days/Voters_A.csv" dlm=',' firstobs=2;
input NAME $ YOB $  ENROLL $ DESIGNATE $ DT_ACCEPT $  CG  CTY $ DT_CHG $  DT_LAST_VPH $;

*creating age as a new variable;
age=2020-YOB;

run;
proc print ;
run;
