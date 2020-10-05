ods graphics / reset width=6.4in height=4.8in imagemap;


proc sgplot data=  WORK.SP_OIL_GOLD noautolegend ;




 vbar Year
 / 
 response=Stock_Market_Returns     group=Stock_Market_Returns groupdisplay=cluster
    datalabel    ;

        
      yaxis
                 grid                 ;



run;

ods graphics / reset;


ods graphics / reset width=6.4in height=4.8in imagemap;


proc sgplot data=  WORK.SP_OIL_GOLD noautolegend;




 vbar Year
 / 
 response=oil_price     group=oil_price groupdisplay=cluster
     datalabel   ;

        
      yaxis
                 grid                 ;



run;

ods graphics / reset;

ods graphics / reset width=6.4in height=4.8in imagemap;


proc sgplot data=  WORK.SP_OIL_GOLD noautolegend ;




 vbar Year
 / 
 response=gold_prices     group=gold_prices groupdisplay=cluster
 datalabel         ;

        
      yaxis
                 grid                 ;



run;

ods graphics / reset;


