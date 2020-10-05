ods graphics / reset width=6.4in height=4.8in;

proc sgmap plotdata=WORK.NYC_CRIME_DIM;

        esrimap url= 			'http://server.arcgisonline.com/arcgis/rest/services/World_Street_Map/MapServer';
    
     title 'Number of crimes in NYC Boroughs';        

    	bubble x=Longitude y=Latitude size=count / group=Borough               		datalabel=count datalabelpos=center 
		datalabelattrs=(color=CX0f0e0e size=7pt weight=bold)               		name="bubblePlot";    
     keylegend "bubblePlot" / title ='Borough';        
run;    

ods graphics / reset;
title;   
