<cfhttp method="get" url="http://squaretortilla.com/bing/daily.csv" name="csvData"> 

<cfoutput>#isQuery(csvData)#</cfoutput>

<cfloop query="csvdata" >
    <p>
<cfloop list="#csvdata.columnlist#" index="i">
    <cfoutput>
            #csvdata['#i#'][currentRow]# <br>
 
    </cfoutput>    
</cfloop>
</p>
</cfloop>


