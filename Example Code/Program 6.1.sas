data voters_label;
set work.voters;
label
FIRST_NAME='Name' 
YOB='Year Of Birth'
ENROLL='Enrollment Code' 
DESIGNATE='Special Designations' 
DT_ACCEPT='Date Accepted (Date of Registration)' 
CG='Congressional District'
CTY='County ID'
DT_CHG='Date Changed'
DT_LAST_VPH='Date Of Last Statewide Election with VPH';
run;

proc print label;
run;
