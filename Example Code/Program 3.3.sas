ods graphics / reset width=6.4in height=4.8in imagemap ;

proc sgplot data=  WORK.CANDIDATES2012 noautolegend;

	footnote2 "The candidates, 1: Obama 2:Romney 3:Johnson, 4:Stein 5:Paul 6:Anderson 7:Reed";

	vbar x / colorresponse=x colorstat=mean colormodel=(blue red silver green) ;
	xaxis display=(nolabel);       
	yaxis grid;

run;
ods graphics / reset;
footnote2; 
