<cfsetting showdebugoutput="yes">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Debugging</title>
</head>

<body>
<cfset firstname="David">
<cfset	lastname="Smith">
<cfset fullname=variables.firstname & " " & variables.lastname>
<cfoutput> Welcome #variables.fullname#</cfoutput>

<cfset num1=100>
<cfset num2="299">
<cfset totalnum=num1 + num2>

<cfoutput> The total number is #variables.totalnum# </cfoutput>

<cfdump var="#variables#">

<cfset myArray = arrayNew(1)>
<cfset myArray[1] = "Larry">
<cfset myArray[2] = "Moe">
<cfset myArray[3] = "Curly">



<cfdump var="#myArray#">

<cfset myStruct = structNew()>
<cfset myStruct["Firstname"] = "David">
<cfset myStruct.lastname = "Smith">
<cfset myStruct["city"] = "Salt Lake City">

<cfdump var="#myStruct#">

<!---<cfset myNumber = 1>
<cfset myNumber = ++>
<cfset myNumber = ++>
<cfset myNumber = ++>

<cfoutput> Total Number #myNumber# </cfoutput>--->




</body>
</html>