<cfquery name="importcsv" datasource="square"> 

        LOAD DATA INFILE 'GLVAR_Res_Daily.txt'
        INTO TABLE square.glvar
            FIELDS TERMINATED BY '|'
            LINES TERMINATED BY '\n'

</cfquery>