<cfquery datasource="photogallerydb" name="qphotos"> 
SELECT caption, filename, price from photo
ORDER BY caption DESC
</cfquery>

<cfquery datasource="photogallerydb" name="qphotographer">
SELECT * FROM photographer WHERE featured = 1

</cfquery>
<cfquery datasource="photogallerydb" name="qphoto2">
SELECT * FROM photo WHERE photograherid = #qphotographer.photographerid#
</cfquery>
<cfsetting showdebugoutput="no">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Using Query</title>
<link href="../css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
<style>
.oddRot {
	background-color:white;
}
.evenRot {
	
	background-color:#666;
}
</style>
</head>

<body>
<cfdump var="#qphoto2#">

<table class="table " >
  <tr>
    <th>Caption</th>
    <th>File Name</th>
    <th>Price</th>
    </tr>
    <cfoutput query="qphotos">
    
  <tr >
    <td>#qphotos.caption#</td>
    <td>#qphotos.filename#</td>
    <td>#dollarFormat(qphotos.price)#</td>
  </tr>
  </cfoutput>
</table>
<!---<cfoutput query="qphotos">
  <div><strong>#qphotos.caption#</strong> (#dollarFormat (qphotos.price)#)</div>
</cfoutput>--->
<cfoutput>Featured Photographer: #qphotographer.firstname# #qphotographer.lastname#</cfoutput>
<a  data-toggle="modal" href="../myModal" >Recipes And Preparation Details</a> <a href="##" class="btn btn-danger" rel="popover" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title">hover for popover</a>
<div class="modal hide" id="myModal">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">×</button>
    <h3>Chicken Tacos</h3>
  </div>
  <div class="modal-body">
    <p>Ingredients
For the chicken:
1/2 cup extra-virgin olive oil
10 garlic cloves, minced
5 yellow onions minced
4 pounds boneless, skinless chicken breast, diced into 1/2-inch chunks
Salt and freshly ground black pepper
1/4 cup all-purpose flour
2 serrano chiles, sliced thin
2 tablespoons sweet paprika
2 tablespoons smoked paprika
2 tablespoons cumin seeds, toasted
2 tablespoons dried oregano
4 to 5 cups chicken stock or water
For the tacos:
2 red onions, sliced thin
1 head iceberg lettuce, sliced thin
12 radishes, sliced thin
6 small tomatoes, diced
1 pint sour cream
2 bunches cilantro, leaves roughly chopped
1 (15-ounce) can pinto or black beans, drained and rinsed
1 to 2 packages corn or flour tortillas (enough for 6 to 8 medium size tacos)
Directions
Heat a large saute pan over medium heat and pour in enough olive oil to coat the bottom of the pan. Add the garlic and onions and cook until soft and nicely caramelized, about 10 to 12 minutes.

In the meantime, season the chicken with salt and pepper. Sprinkle the flour over the chicken and toss to coat. Heat another large saute pan over medium-high heat and add 3 tablespoons of olive oil. Cook the chicken until it is lightly browned, about 6 to 8 minutes.

Once the onion mixture is caramelized and softened, add the serranos, paprikas, cumin, and oregano. When the chicken is done, transfer it to the pan with the onions. Pour in the broth or water and bring to a boil. Reduce the heat and simmer until the sauce is thick and delicious, approximately 20 minutes. Adjust seasoning with salt and pepper.

To serve the tacos: Put the toppings and chicken filling in bowls and allow guests to build their own tacos.</p>
  </div>
  <div class="modal-footer">
    <a href="##" class="btn" data-dismiss="modal">Close</a>
    <a href="##" class="btn btn-primary">Save changes</a>
  </div>
</div>
<script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-tooltip.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-popover.js"></script> 

 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-sendtext.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-contactinfo.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/jquery.autoSuggest.packed.js"></script> 
    <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/jquery.autocomplete-min.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-button.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-collapse.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-carousel.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap-typeahead.js"></script> 
  <script type="text/javascript" src="file:///Lion/Users/dalcool/Documents/Projects/www/js/application.js"></script> 
<script src="file:///Lion/Users/dalcool/Documents/Projects/www/js/jquery.js"></script> 
<script src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="file:///Lion/Users/dalcool/Documents/Projects/www/js/bootstrap.js" type="text/javascript"></script>
</body>


</html>