*Political Parties Illustrated on Maine’s Counties for 2016 Presidential Elections;
/* Set the graphics environment */
goptions reset=all cback=white border htitle=12pt htext=10pt;  

 /* Create a sample data set */
data voters;
   input State County Republican Democrat;
if democrat> republican then party=1;
else if democrat< republican then party=2;
   datalines;
23 1 28189 22975
23 3 19419 13377
23 5 57697 102935
23 7 7900 7001
23 9 13682 16107
23 11 29296 31753
23 13 9148 12440
23 15 9727 10241
23 17 12172 16214
23 19 41601 32832
23 21 5403 3098
23 23 9304 10679
23 25 14998 9092
23 27 10378 10442
23 29 9037 6358
23 31 50388 55828
;
run;

proc gproject data=maps.counties out=newmap;
where state=23 ;
id state county;
run;

pattern1 v=s c=blue;
pattern2 v=M3X0 c=red;
proc gmap data=voters map=newmap all;
   id state county;
   choro party / nolegend ;
   title "Political Parties Illustrated on Maine’s Counties for 2016 Presidential Elections";
  
run;
quit;
