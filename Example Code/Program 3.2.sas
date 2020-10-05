

  



ods graphics / reset width=6.4in height=4.8in  imagemap;


proc sgplot data= WORK.MAINECOUNTIESPARTIES NOAUTOLEGEND;
  






scatter x=counties y=Republican / 
 markerattrs=(
         color=red     )
;
scatter x=counties y=Democratic / 
 markerattrs=(
         color=Blue     symbol=circlefilled)
;


     xaxis
             grid                 ;

     yaxis
             grid  label="Republican:Red Democrat:Blue"              ;



run;

ods graphics / reset;

