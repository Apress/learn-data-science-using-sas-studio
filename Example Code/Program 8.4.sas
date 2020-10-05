*Political Parties Illustrated on Maine’s Counties for 2004 Presidential Elections;
/* Set the graphics environment */
goptions reset=all cback=white border htitle=12pt htext=10pt;  

 /* Create a sample data set */
data voters;
   input State County Republican Democrat;
if democrat> republican then party=1;
else if democrat< republican then party=2;
   datalines;
23 1 30503 24519
23 3 19569 17564
23 5 94846 65384
23 7 9465 7378
23 9 18048 14405
23 11 35616 29761
23 13 12690 10103
23 15 11351 10370
23 17 16618 14196
23 19 40417 40318
23 21 4409 5299
23 23 11107 9497
23 25 13555 12953
23 27 11555 10309
23 29 8391 8619
23 31 58702 49526
;
run;

proc gproject data=maps.counties out=newmap;
where state=23 ;
id state county;
run;

pattern1 v=M3X0 c=red;
pattern2 v=s c=blue;
proc gmap data=voters map=newmap all;
   id state county;
   choro party / nolegend ;
   title "Political Parties Illustrated on Maine’s Counties for 2004 Presidential  Elections";
  
run;
quit;
