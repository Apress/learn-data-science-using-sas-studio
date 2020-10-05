*Political Parties Illustrated on Maine’s Counties for 2008 Presidential Elections;
/* Set the graphics environment */
goptions reset=all cback=white border htitle=12pt htext=10pt;  

 /* Create a sample data set */
data voters;
   input State County Republican Democrat;
if democrat> republican then party=1;
else if democrat< republican then party=2;
   datalines;
23 1 31017 22671
23 3 19345 15898
23 5 105218 56186
23 7 10113 6627
23 9 18895 12686
23 11 37238 27482
23 13 13728 8816
23 15 11886 9287
23 17 17940 12863
23 19 41614 37495
23 21 4430 4785
23 23 12152 8721
23 25 13335 11867
23 27 11967 9423
23 29 8246 8077
23 31 64799 42389
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
   title "Political Parties Illustrated on Maine’s Counties for 2008 Presidential Elections";
  
run;
quit;
