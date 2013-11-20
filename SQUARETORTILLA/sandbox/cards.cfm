<cfif IsDefined("form.cardname")>
  <cfinvoke 
 component="cfc.marketinginfo"
 method="cardinfo">
  <cfinvokeargument name="formData" value="#form#"/>
  </cfinvoke>
</cfif>

<cfform preservedata="no">
  <table>
    <tr>
      <td>Name</td>
      <td><cfinput type="text" name="cardname" validateat="onSubmit" required="yes" id="cardname"></td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><cfinput type="text" name="phone" validateat="onSubmit" required="yes" id="phone"></td>
    </tr>
    <tr>
      <td>email</td>
      <td><cfinput type="text" name="email" validateat="onSubmit" validate="email" required="yes" id="email"></td>
    </tr>
    <tr>
      <td>Keyword</td>
      <td><cfinput type="text" name="keyword" id="keyword"></td>
    </tr>
    <tr>
      <td>Brokerage Name</td>
      <td><cfinput type="text" name="brokeragename" id="brokeragename"></td>
    </tr>
    <tr>
      <td>House Style</td>
      <td><cfselect name="housestyle" id="housestyle">
        <option value="north">north</option>
        <option value="south">south</option>
        <option value="coastal">coastal</option>
        </cfselect></td>
    </tr>
    <tr>
      <td>Theme Color</td>
      <td><cfselect name="themecolor" id="themecolor">
        <option value="red/blue">red/blue</option>
        <option value="black/white">black/white</option>
        </cfselect></td>
    </tr>
    <tr>
      <td><cfinput type="submit" name="Submit" value="Submit"></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</cfform>

<cfif IsDefined("form.cardname")>


                <CFFILE action="read" file="http://squaretortilla.com/mob/welcome-email.html"
                    variable="emailTextBody"> 
                    
                    
                    <CFSET emailTextBody =REReplace(emailTextBody, "{namepop}", form.cardname , 'all') />


<cfmail  to="michaeledgington@gmail.com"
        from="orders@squaretortilla.com"
        subject="Card Order" type="html">
  Marketing Order
  
  #emailTextBody#
 <!--- <CFIF isDefined("form.cardname")>
    <CFDUMP var="#form#" />
  </CFIF>--->
</cfmail>


 <!--- <cflocation url="submittedinfo.cfm" addtoken="no">--->
</cfif>
<cfdump var="#form#" label="form scope">