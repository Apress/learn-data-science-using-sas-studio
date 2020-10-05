*Political Parties Illustrated on Maine’s Counties for 2012 Presidential Elections;

/* Set the graphics environment */
goptions reset=all cback=white border htitle=12pt htext=10pt;  

 /* Create a sample data set */
data voters;
   input State County Republican Democrat;
if democrat> republican then party=1;
else if democrat< republican then party=2;
   datalines;
23 1 28989 22232
23 3 17777 15196
23 5 101950 57821
23 7 9367 6369
23 9 17569 12324
23 11 35068 26519
23 13 13223 8248
23 15 11315 8899
23 17 16330 11996
23 19 38811 36547
23 21 4149 4530
23 23 11821 8429
23 25 12216 11800
23 27 11296 9058
23 29 7803 7550
23 31 61551 43900
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
   title "Political Parties Illustrated on Maine’s Counties for 2012 Presidential Elections";
  
run;
quit;
