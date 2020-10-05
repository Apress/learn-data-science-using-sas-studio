/*--HBar Plot--*/

title 'Average Salary by Team';
proc sgplot data=sashelp.baseball ;
  hbar team / response=salary  stat=mean  ;
  yaxis display=(nolabel) grid;
  xaxis display=(nolabel);
  run;