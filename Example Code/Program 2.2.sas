/*Program 2.1: Snippet Example*/
/*--HBar Plot--*/

title 'Mileage by Type';
proc sgplot data=sashelp.cars ;
  hbar type / response=mpg_city  stat=mean  limits=both;
  yaxis display=(nolabel) grid;
  xaxis display=(nolabel);
  run;
