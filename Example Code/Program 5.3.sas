DATA MYDATA;
SET sashelp.class;

SELECT(age);
 when (10) status="child";
 WHEN (11,12) status="preteen";
 OTHERWISE status="teenager";
END;
PROC PRINT DATA=MYDATA;
RUN;
