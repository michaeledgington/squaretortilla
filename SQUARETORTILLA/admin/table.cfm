
    <div ng-controller="Ctrl">   
        <button ng-click="addData()">Add Data</button>
        
        <h2>This table uses columns defined in controller</h2>          
        <table my-table 
            ao-columns="tblColumns" 
            ao-column-Defs="[{ 'bSortable': false, 'aTargets': [1] }]" 
            aa-data="tblData" >
        </table>        

        <br/>
        <h2>This table uses explicit columns in dom, but can still use aoColumnDefs for fine grained control</h2>
        <h3>- using explicit columns provides a better designer experience </h3>
        <table my-table aa-data="tblData" ao-column-Defs="columnDefs" >
            <thead>
            <tr>
                <th>Surname</th>
                <th style="width:70px">First name</th>
            </tr>
            </thead>
        </table>

        <h2>This table uses columns and core DataTable options defined in controller</h2>  
        
        <table my-table="overrideOptions" 
            ao-columns="tblColumns" 
            aa-data="tblData" >
        </table>
        

        <br/>        
    </div>
