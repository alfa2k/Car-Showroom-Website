<!doctype html>
<html>
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  
	<title>Filters</title>
	
	<link rel="stylesheet" href="../css/home_style.css">
		
	<script>	
	
		function goHome(){
			
			window.open("Index.cfm","_self")
		}
		
	
	</script>
	
	<script>
	// Get the button
	var mybutton = document.getElementById("scroll-to-top-button");

	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {scrollFunction()};

	function scrollFunction() {
  	if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 10) {
    	mybutton.style.display = "block";
  	} else {
    mybutton.style.display = "none";
  	}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() 
	{
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
    }

	</script>
	
	<script>
		
	function hideElements(){
		
		var x = document.getElementsById('cardnum');
		var y =	document.getElementsById('cardnam');
		var z =	document.getElementsById('cardcvv');
		var a = document.getElementsById('cvv');
		var b = document.getElementsById('cardname');
		var c = document.getElementsById('cardnumber');
		var d = document.getElementById('pym');
		
		var f = document.getElementById('cash');
		
		if(f.checked){
			
			
			x.style.display='none';
			y.style.display='none';
			z.style.display='none';
			a.style.display='none';
			b.style.display='none';
			c.style.display='none';
			d.style.display='none';
			
		}
		
	}
	
	
	</script>
	
	<!-- Scripts -->
	
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
	
	<cfquery name="Dashboard" datasource="Fateen190343">
	
	select * from Range where Range_Availability=yes;
	
	</cfquery>
	
		
	<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.container{
	
	position:absolute;
	max-height: 200%;
	max-width: 90%;
	width: 100%;
	border-radius: 10px;
	padding: 5px 40px;
	margin-top:100%;
	background-color: #8D99AE;
	box-shadow: 0 10px 15px rgba(0,0,0,0.1);
	
}

.container header{
	
	margin-top: 2%;
	position: relative;
	font-size: 20px;
	font-weight: 600;
	color:black;
	
}

.container header::before{
	
	content: "";
	position: absolute;
	left: 0;
	bottom: -2px;
	height: 3px;
	width: 27px;
	border-radius: 8px;
	background-color: #2B2D42;
	
}

.container form{
	
	position: relative;
	margin-top: 10px;
	min-height: 600px;
	background-color: #8D99AE;

}

.container form .details{
	
	margin-top: 30px;
	color: black;
	
}

.container form .title{
	display: block;
	margin-bottom: 10px;
	font-size: 18px;
	font-weight: 500;
	margin: 6px 0;
	color: black;
	text-decoration: underline;
}

.container form .fields{
	
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap;
}

form .fields .input-field{
	
	display:flex;
	margin: 4px 0;
	width: calc(100%/2 - 10px);
	flex-direction: column;
	
}

.input-field label{
	
	font-size: 15px;
	font-weight: 500;
	color: black;
	
}

.input-field input{
	
	height: 42px;
	outline: none;
	padding: 0 15px;
	border-radius: 5px;
	font-size: 16px;
	font-weight: 400;
	color:#333;
	border: 1px solid #aaa;
	margin: 8px 0;
	
}

.input-field input:is(:focus,:valid){
	
	box-shadow: 0 5px 7px rgba(0,0,0,0.13);
}

.input-field input[type="date"]{
	color: #8D99AE;
	
}
.input-field input[type="date"]:valid{
	color: black;
	
	
}

.form1 .nextBtn{
	
	display: flex;
	align-items: center;
	
	justify-content: center;
	height: 45px;
	max-width: 200px;
	background-color:#2B2D42 ;
	width: 100%;
	border:none;
	outline: none;
	color: aliceblue;
	border-radius: 5px;
	margin: 20px 0;
	transition: all 0.3s linear;
	cursor: pointer;
	
}

.form1 .nextBtn:hover{
	
	background-color:#8D99AE;
	border: double thin;
	border-color: #2B2D42 ;
}
		
		option:checked{
			
			visibility: visible;
			display: contents;
		}
		
	</style>
	
</head>
	


<body>
	
	
<div class="banner">
	
		<button onclick="topFunction()" id="scroll-to-top-button" title="Go to top">&#94;</button>
		
		<video autoplay loop muted plays-inline class="back-vid"><source src="../vids/Ocean - 74888.mp4" type="video/mp4"></video>
		
		<nav class="fixed-top">
			
			<img src="../logo/Sindbad Car Showroom-1.png" class="logo" alt="Logo" onClick="goHome()">
			
			<ul>
				<b><li><a href="Index.cfm">HOME</a></li>
				<cfoutput query="Dashboard">
					<li><a href="Range.cfm?theRange=#Dashboard.Range_ID#" title="Go To #Range_Title#">#Range_Title#</a></li>
				</cfoutput>
				<li><a href="Queries.cfm" title="Go to #Query_Title#">QUERIES</a></li></b>
			</ul>	
			
			</nav>
			
			<br>
			
			<div class="content">
		
			<h1>Filter Page</h1>
		
			</div>
		
			<cfif isDefined('form.select_Range')>
	
				<cfset page.select_Range = form.select_Range>
			
			</cfif>
	
			<cfif isDefined('form.select_Model')>
	
				<cfset page.select_Model = form.select_Model>
	
			</cfif>

	<cfoutput>	
	
	  <div class="container">
	  
	  	<header>Filter Form</header>
		  
		  <form id="form1" name="form_filter" method="post">
		  
		  	<div class="form-first">
			  
			  <div class="details cars">
			  
			  	<span class="title">SELECT CAR DETAILS</span>
				  
				  <div class="fields">
				  
				  	<div class="input-field">
						
						<label>SELECT RANGE</label>
						
						  <cfquery name="get_Range" datasource="Fateen190343">
     
							  SELECT Range_ID, Range_Title FROM Range

						  </cfquery>


  							<select name="select_Range" required="yes" onchange="submit()" style="background-color:azure; height: 25px; width: 50%; border-radius: 5px; padding: 10px; margin-bottom: 20px; color:black; display: block">
     	
								<option selected disabled>Select Range</option>
     
								<cfloop query="get_Range">
         	
									<option value="#Range_id#" selected="selected"><cfif isDefined('form.select_Range')><cfif form.select_Range eq "#Range_id#"></cfif></cfif>#Range_Title#</option>
									
									
    	
								</cfloop>
								
					  		</select>
 
	
				  			<cfif isDefined('form.select_Range')>
								
								<label selected disabled>SELECT MODEL</label>
	
								<cfquery name="get_Model" datasource="Fateen190343">
        	
									SELECT Model_id, Model_Title FROM Model WHERE Range_ID = '#page.select_Range#'; 
   	
								</cfquery>

   	
							<select name="select_Model" required="yes" onchange="submit()" style="background-color:azure; height: 25px; width: 50%; border-radius: 5px; padding: 10px; margin-bottom: 20px; color: black;">
      	
								<option>Select Model</option>
     
							<cfloop query="get_Model">
         	
								<option value="#Model_id#"  selected="selected"> <cfif isDefined('form.select_model')><cfif form.select_model eq "#Model_id#"></cfif></cfif>#Model_Title#</option>
      	
							</cfloop>
	
				  			</cfif>
	   	
							</select>
						
			  				<cfif isDefined('form.select_Model')>
								
								<label selected disabled>SELECT VEHICLE</label>
	
								<cfquery name="get_Vehicle" datasource="Fateen190343">
        	
									SELECT  * FROM (Range INNER JOIN Model ON Range.[Range_ID] = Model.[Range_ID]) INNER JOIN Vehicle ON Model.[Model_ID] = Vehicle.[Model_ID] Where Vehicle.Model_ID = '#page.select_Model#' ORDER BY Vehicle.Price; 
   		
								</cfquery>

   	
								<select name="selectVehicle_id" required="yes" onchange="submit()" style="background-color:azure; height: 25px; width: 50%; border-radius: 5px; padding: 10px; margin-bottom: 20px; color: black;">
      	
									<option>Select Vehicle</option>
     
									<cfloop query="get_Vehicle">
         	
										<option value="#Vehicle_id#"  selected="selected"> <cfif isDefined('form.selectVehicle_id')><cfif form.selectVehicle_id eq "#Vehicle_id#"></cfif></cfif>#Production_year#,#Colour#,#NumberFormat(Price,'_____.__')#</option>
          	
									</cfloop>
		
			  					</cfif>
     	
		  						</select>
		
								</cfoutput>
		
									<cfif isDefined('form.selectVehicle_id')>
			
										<cfoutput><cfset the_vehicle_id = #form.selectVehicle_id#>
	
											<h3><a href="Vehicle.cfm?theVehicle=#the_vehicle_id#" title="Go to Vehicle Page">Checkout</a></h3>
	
										</cfoutput>
	
										</cfif>
					  
					</div>
					 				  	  
		  </form>
	  
	  </div>
									
	<hr>
	 
</body>
	
</html>



