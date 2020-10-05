proc sql;
create table newlib.europeancars as
select * from sashelp.cars where origin = "Europe" ;
quit;
