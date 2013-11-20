<cfquery datasource="square" name="ListingShort">
    SELECT MLS_Id,List_Price,Public_Address,Street_Number,Street_Name,Unit_Number,City,Zip_Code,Subdivision_Name,Bedroom,Baths_Total,Full_Baths,Half_Baths,Square_Feet,Lot_Sqft,Garage_Capacity,Garage_Type,High_School,Junior_School,Property_Description,Listing_Office_Name,Listing_Office_Id,Listing_Agent_Name,Listing_Agent_Phone,Listing_Agent_Id,Short_Sale,Open_House_Flag,Last_Image_Update,Price_Change_Date,Image_Count,Latitude,Longitude
    FROM GLVAR_daily
    WHERE MLS_Id = '#url.mlsid#' 
</cfquery>




<cfhttp url="http://dev.virtualearth.net/REST/v1/Locations/US/NV/#ListingShort.Zip_Code#/#ListingShort.City#/#ListingShort.Street_Number#%20#ListingShort.Street_Name#?o=xml&key=AgM3wR0ojSpxYaJeh6WS7p2kcckECqVQ5HkrweFcZCcyOjE3mYVvIrF_WzbETMeb" timeout = "2" method="GET">
 

<cfset xbinglocation = xmlparse(cfhttp.filecontent)>


<cfset lat=xbinglocation.Response.ResourceSets.ResourceSet.Resources.Location.Point.Latitude.XmlText>


<cfset long=xbinglocation.Response.ResourceSets.ResourceSet.Resources.Location.Point.Longitude.XmlText>


<cfquery datasource="square" name="addGeo">
UPDATE glvar_daily
SET Latitude = #lat#,
	Longitude = #long#
    WHERE MLS_Id = '#url.mlsid#'

</cfquery>











<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>
<cfdump var="#lat#" label="resourceSets"><br />
<cfdump var="#long#" label="resourceSets"><br />
<cfdump var="#xbinglocation#">


</body>
</html>