*Political Parties Illustrated on Maine’s Counties for 2000 Presidential Elections;
/* Set the graphics environment */
goptions reset=all cback=white border htitle=12pt htext=10pt;  

 /* Create a sample data set */
data voters;
   input State County Republican Democrat;
if democrat> republican then party=1;
else if democrat< republican then party=2;
   datalines;
23 1 26251 19948
23 3 17196 16555
23 5 74203 58543
23 7 7593 6459
23 9 12983 12732
23 11 31198 23967
23 13 9453 8968
23 15 8634 9457
23 17 13649 11835
23 19 32868 35620
23 21 3745 4845
23 23 8844 8052
23 25 11538 10684
23 27 8477 8689
23 29 6701 7958
23 31 46618 42304
;
run;

proc gproject data=maps.counties out=newmap;
where state=23 ;
id state county;
run;

pattern1 v=M2N0 c=red;
pattern2 v=s c=blue;
proc gmap data=voters map=newmap all;
   id state county;
   choro party / nolegend ;
   title "Political Parties Illustrated on Maine’s Counties for 2000 Presidential Elections";
  
run;
quit;
