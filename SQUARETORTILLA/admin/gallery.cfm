<div class="container">
          <p>&nbsp;</p>
		<p>&nbsp;</p>
		
<div class="row-fluid">
<div class="span4">Here is a span 20 
</div>	
<div class="span8 ">	
	
	<!--- <table ng-table class="table">
        <tr ng-repeat="user in city">
            <td data-title="City'" >{{user.city_mls}}</td>
            <td data-title="'State'">{{user.state}}</td>
        </tr>
    </table> --->
	
	 	
        
        <table ng-table class="table">
    <tr ng-repeat="user in users">
        <td data-title="'Name'">{{user.name}}</td>
        <td data-title="'Age'">{{user.age}}</td>
    </tr>
    </table>

		</div>	
	</div>
</div>