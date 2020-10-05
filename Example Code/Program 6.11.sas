data all;
set voters_democrats voters_republicans;
run;

proc print data=all;
run;
