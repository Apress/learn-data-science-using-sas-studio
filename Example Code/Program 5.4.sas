DATA MYDATA;
SET sashelp.class;

SELECT;
 WHEN (age=15 and sex="F") research="include";
 OTHERWISE research="not include";
END;
PROC PRINT DATA=MYDATA;
RUN;
