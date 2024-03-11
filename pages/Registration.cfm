<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sindbad Registration Form</title>
    <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	  
	<link rel="stylesheet" href="../css/styling.css">

	
  </head>
  <body>
	  	
	  <cfquery name="Check" datasource="Fateen190343">
	  
	  select * from Client where Phone_No = '#form.Phone_Num#';
	  
	  </cfquery>
	  
	  <cfif Check.recordCount gt 0>
	  
	  <a href="Index.cfm" style="color: azure; text-align: center; font: 200; border: thin; border-radius: 5px; border-color: azure; float: left; clear: left"><h2 style="color: azure">Account Already Exists, Proceed to Checkout</h2>
	  
	  </a>
		  
	  <cfelse>
    	  	
	  <cfquery name="Registration" datasource="Fateen190343">
		  
	    insert into Client(Client_Forename, Client_Surname, Client_Address_Line1, Client_Address_Line2, Town, Email_Address, Phone_no, Country_Code, Date_of_Birth) values('#form.firstname#','#form.surname#','#form.address1#','#form.address2#','#form.region#','#form.email#','#form.Phone_Num#','#form.ccode#','#form.dob#'); 
		
	  
	  </cfquery>
		  
	
	  
	  <a href="Index.cfm" style="color: azure; text-align: center; font: 200; border: thin; border-radius: 5px; border-color: azure; float: left; clear: left;"><h2 style="color: azure">Succesfully Registered<h2>
	  </a>
  	 </cfif>
		  
	</body>
	
</html>