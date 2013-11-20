
<cfparam name="url.board" default="CRMLS">
<cfparam name="url.house_number" default="">
<cfparam name="url.street" default="">
<cfparam name="price" default="">
<cfparam name="url.mlsid" default="">
<cfparam name="url.lat" default="">
<cfparam name="url.lng" default="">
<cfparam name="remarks" default="">
<cfparam name="url.mlsid" default="">
<cfset urlboard = #url.board#>
<cfset urllat = #url.lat#>
<cfset urllong = #url.lng#>


<cfhttp url="http://feed.mobilityre.com/#urlboard#/search/?lat=#urllat#&lng=#urllong#&radius=0.5" timeout = "6" method="GET">
<cfif val(cfhttp.statusCode) EQ 200>
  <cfset mlsReturn = xmlparse(cfhttp.filecontent)>
</cfif>
 <cfset resulttotal=mlsReturn.Response.TOTAL.XmlText>







<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   <link rel="shortcut icon" sizes="196x196" href="APP-ICON.png">
   <link rel="shortcut icon" sizes="128x128" href="APP-ICON.png">
<link rel="apple-touch-icon" sizes="128x128" href="APP-ICON.png">
<link rel="apple-touch-icon-precomposed" sizes="128x128" href="APP-ICON.png">


    <title>Map</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="sticky-footer.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>
<script src="../../../gmap/markerwithlabel.js"></script>
<script src="infobox.js"></script>
<script>

google.maps.visualRefresh = true;

var map;
var bubble = 'http://img.tx2me.com.s3.amazonaws.com/img/bubble.png';
var goldStar = {
  path: 'M58.116,102H10.5C5.538,102,1,97.462,1,92.5v-83C1,4.538,5.538,1,10.5,1h170c4.963,0,8.5,3.538,8.5,8.5v83c0,4.962-3.537,9.5-8.5,9.5h-47.116L95.75,139.634L58.116,102z',
  fillColor: "green",
  fillOpacity: 1,
  scale: 0.3,
  strokeColor: "green",
  strokeWeight: 1
};


function initialize() {
  var mapOptions = {
    zoom: 16,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);


  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);
									   

		var marker = new google.maps.Marker({
				position: pos,
				
				map: map
		 });
		 
	
	 // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  var homeControlDiv = document.createElement('div');
  var homeControl = new HomeControl(homeControlDiv, map);

  homeControlDiv.index = 1;
  map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(homeControlDiv);
	
var findme = pos;
<!---var house = new google.maps.LatLng(<cfoutput>#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[3].LAT.XmlText#</cfoutput>,<cfoutput>#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[3].LNG.XmlText#</cfoutput>);
var house2 = new google.maps.LatLng(<cfoutput>#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[2].LAT.XmlText#</cfoutput>,<cfoutput>#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[2].LNG.XmlText#</cfoutput>);
--->
var house = new google.maps.LatLng(40.625643,-111.859178);
var house2 = new google.maps.LatLng(40.62631,-111.857923);





/**
 * The HomeControl adds a control to the map that simply
 * returns the user to findme. This constructor takes
 * the control DIV as an argument.
 * @constructor
 */
function HomeControl(controlDiv, map) {

  // Set CSS styles for the DIV containing the control
  // Setting padding to 5 px will offset the control
  // from the edge of the map
  controlDiv.style.padding = '5px';

  // Set CSS for the control border
  var controlUI = document.createElement('div');
  controlUI.style.backgroundColor = '#009345';
  controlUI.style.borderColor = '#fff';
  controlUI.style.borderStyle = 'solid';
   controlUI.style.borderRadius = '8px';
  controlUI.style.borderWidth = '1px';
  controlUI.style.cursor = 'pointer';
  controlUI.style.textAlign = 'center';
  controlUI.style.marginBottom = '30px';
  controlUI.title = 'Click to set the map to Home';
  controlDiv.appendChild(controlUI);

  // Set CSS for the control interior
  var controlText = document.createElement('div');
  controlText.style.fontFamily = 'Arial,sans-serif';
  controlText.style.fontSize = '14px';
  controlText.style.paddingLeft = '8px';
  controlText.style.paddingRight = '8px';
  controlText.style.paddingTop = '4px';
   controlText.style.paddingBottom = '4px';
  controlText.style.color = '#fff';
  
  controlText.innerHTML = 'Find Me';
  controlUI.appendChild(controlText);

  // Setup the click event listeners: simply set the map to
  // findme
  google.maps.event.addDomListener(controlUI, 'click', function() {
    map.setCenter(findme)
  });

}
	
	
	              
      

	
	//end of findme css
	 
	var marker1 = new MarkerWithLabel({
       position: house, 
       map: map,
       labelContent: "<span style='color:#FFF; font-weight:bold'>$425K</span> ",
       labelAnchor: new google.maps.Point(30, 44),
       labelClass: "labels", // the CSS class for the label
       labelStyle: {opacity: 1.0},
       icon: {}
     });
	 
	 
	 
	  var iw1 = new google.maps.InfoWindow({
       content: "Home For Sale"
     });
	 
	 
	 var marker3 = new MarkerWithLabel({
       position: house2,
       map: map,
       labelContent: "<span style='color:#FFF; font-weight:bold;'>$605K </span> ",  
       labelAnchor: new google.maps.Point(30, 44),
       labelClass: "labels", // the CSS class for the label
       labelStyle: {opacity: 1.0},
       icon: {}
     });
	 
	 
	 var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
      '<div id="bodyContent">'+
      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
      'sandstone rock formation in the southern part of the '+
      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
      'south west of the nearest large town, Alice Springs; 450&#160;km '+
      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
      'features of the Uluru - Kata Tjuta National Park. Uluru is '+
      'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
      'Aboriginal people of the area. It has many springs, waterholes, '+
      'rock caves and ancient paintings. Uluru is listed as a World '+
      'Heritage Site.</p>'+
      '<p>Attribution: Uluru, <a href="http://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'http://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '(last visited June 22, 2009).</p>'+
      '</div>'+
      '</div>';
	 
	 
	 var iw3 = new google.maps.InfoWindow({
       content: contentString,
	   maxWidth: 500,
	  pixelOffset: new google.maps.Size(0, -35)
     });
	 
	 
	 
     var marker2 = new MarkerWithLabel({
       position: pos,
       map: map,
	 
       labelContent: "You!",
       labelAnchor: new google.maps.Point(30, 44),
       labelClass: "labels", // the CSS class for the label
       labelStyle: {opacity: 0}
     });

    
	
	var iw2 = new google.maps.InfoWindow({
       content: "You ar here!"
     });

	
	
	
	
	
	
	
	
	
	
	
     
	 
     google.maps.event.addListener(marker1, "click", function (e) { iw1.open(map, this); });
	  google.maps.event.addListener(marker2, "click", function (e) { iw2.open(map, this); });
     google.maps.event.addListener(marker3, "click", function (e) { iw3.open(map, this); });
     
    
	
	
	
	
  
      
	
	
	
	
	
	
	
 
			  
	/*var infowindow = new google.maps.InfoWindow({
		position: house,
		
		
	});		*/
	
	/* var infoBox = new InfoBox({latlng: infowindow.getPosition(), map: map, content: '$250K'});		*/	  
	
      map.setCenter(pos);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

/*function handleNoGeolocation(errorFlag) {
  if (errorFlag) {
    var content = 'Error: The Geolocation service failed.';
  } else {
    var content = 'Error: Your browser doesn\'t support geolocation.';
  }

  var options = {
    map: map,
    position: new google.maps.LatLng(60, 105),
    content: content
  };

  var infowindow = new google.maps.InfoWindow(options);
  map.setCenter(options.position);
}*/

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
   <style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
#map-canvas, #map_canvas {
	height: 95%;
}
 @media print {
html, body {
	height: auto;
}
#map-canvas, #map_canvas {
	height: 650px;
}
}
#panel {
	position: absolute;
	top: 5px;
	left: 50%;
	margin-left: -180px;
	z-index: 5;
	background-color: #fff;
	padding: 5px;
	border: 1px solid #999;
}
.labels {
	/*background:#29A3DA;*/
	color: #FFF;
	
	font-family: "Arial", sans-serif;
	font-size: 10px;
	
	text-align: center;
	
	width:65px;
	height:45px;
	
	white-space: nowrap;
	padding:4px;
	padding-top:10px;

	

	background: url(http://img.tx2me.com.s3.amazonaws.com/img/bubble.svg) no-repeat ;
}


#showme {
	padding: 15px;
	color: #777777;
	z-index:10000;
	position:absolute;
	top:0px;
	height:50px;
	background-color: #f8f8f8;
	border-color: #e6e6e6;
	width:100%;
	
}
#bottombar {
	padding: 15px;
	color: #777777;
	z-index:10000;
	position:absolute;
	bottom:0px;
	height:50px;
	background-color: #f8f8f8;
	border-color: #e6e6e6;
	width:100%;
	
}
#bottombar a{
	
	color: #777777;
	
	
}
</style>


  </head>

  <body>

    <!-- Wrap all page content here -->
   

   <div id="map-canvas"></div>
    

    <div id="bottombar">
    
  <div class="row">
  <div class="col-xs-4">Search Filters</div>
  <div class="col-xs-4">List View</div>
  <div class="col-xs-4"><a onClick="window.location.reload()" href="#">Refresh</a></div>
 

</div>
     
            
          <!---  <cfdump var="#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[1].LAT.XmlText#">
            <cfdump var="#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[1].LNG.XmlText#">
            <cfdump var="#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[2].LAT.XmlText#">
            <cfdump var="#mlsReturn.RESPONSE.PROPERTIES.ELEMENT[2].LNG.XmlText#">
            <cfdump var="#mlsReturn#">--->
    </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
