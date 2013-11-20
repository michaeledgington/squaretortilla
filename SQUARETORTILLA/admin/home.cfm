<div class="container">
        
          <p>&nbsp;</p>
		
          <p>&nbsp;</p>
          <h2>{{message}}</h2>
          {{city_data}}
		<div class="row-fluid">
  <div class="span6 "><img src="http://armls.rets.mobilityre.com.s3.amazonaws.com/4990226/1.jpg" 
		alt="PIC" class="img-thumbnail" shows-message-when-hovered message="Im picture 1"></div>
  <div class="span6 "><img src="http://armls.rets.mobilityre.com.s3.amazonaws.com/4990226/1.jpg" 
		alt="PIC" class="img-thumbnail" shows-message-when-hovered message="Im picture 2"></div>

	
			<div class="container">
				 <p><strong>Filter:</strong> {{tableParams.filter()|json}}

    <table>
        <tr ng-repeat="user in city_list">
            <td data-title="'First Name'" filter="{ 'first_name': 'text' }">
                {{user.first_name}}
            </td>
            <td data-title="'Last Name'">
                {{user.last_name}}
            </td>
        </tr>
    </table>
				
		</div>
		
    <div class="row-fluid">
	<div class="span12">
      <p><button type="submit" class="btn btn-default" ng-click="logout()">Sign out</button></p>
	</div>
    </div>
 

      </div>