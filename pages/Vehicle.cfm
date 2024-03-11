<!doctype html>
<html>
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>Vehicles</title>
	
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
	
	<cfquery name="Link" datasource="Fateen190343">
	
	select * from model,vehicle where model.Model_ID=vehicle.Model_ID and Vehicle.Model_ID='#Trim(url.theVehicle)#';
	
	</cfquery>
		
	<cfquery name="Address" datasource="Fateen190343">
	
	select * from vehicle where Vehicle_ID='#Trim(url.theVehicle)#';
	
	</cfquery>
	
	<cfquery name="Vehicles" DATASOURCE="Fateen190343">
	
		select  * from (Range INNER JOIN Model ON Range.[Range_ID] = Model.[Range_ID]) INNER JOIN Vehicle ON Model.[Model_ID] = Vehicle.[Model_ID] Where Vehicle.Model_ID = '#url.theVehicle#';
	
	</cfquery>
		
	<style>
		
	.Secondary-nav
	{	
	position: absolute;
	left: 20px;
	padding:5px;
	margin-top:30px;
	}
			
	.Secondary-nav ul
	{
    width:150%;
    height:100%;
    
    border-width:1px;
	border-radius: 5px;
    list-style-type:none;
    padding-left: 0pt;
	}
		
	.Secondary-nav ul li{
	
	list-style: none;
	position: relative;
	
	}
		
	.Secondary-nav ul li a{
	
	text-decoration: none;
	color: azure;
	font-size: 18px;
	
	}
		
	.Secondary-nav ul li a::after{
	
	content: '';
	height: 3px;
	width: 0;
	background: azure;
	position:absolute;
	left: 0;
	bottom: -10px;
	transition: 1s;
	
	}

	.Secondary-nav ul li a:hover::after{
	
	width:80%
	}
		
	.info h2{
	
	color:azure; 
	margin-left: 70px;
	margin-top: 10px;
			
	}
		
	.info p{
	
	margin-left: 70px;
	width: 70%;
	text-align: justify;
	color:azure; 
		
			
	}
		

	
	.tiles article {
			-moz-align-items: center;
			-webkit-align-items: center;
			-ms-align-items: center;
			align-items: center;
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
			display: flex;
			-moz-transition: -moz-transform 0.25s ease, opacity 0.25s ease, -moz-filter 1s ease, -webkit-filter 1s ease;
			-webkit-transition: -webkit-transform 0.25s ease, opacity 0.25s ease, -webkit-filter 1s ease, -webkit-filter 1s ease;
			-ms-transition: -ms-transform 0.25s ease, opacity 0.25s ease, -ms-filter 1s ease, -webkit-filter 1s ease;
			transition: transform 0.25s ease, opacity 0.25s ease, filter 1s ease, -webkit-filter 1s ease;
			padding: 4em 4em 2em 4em ;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			cursor: default;
			height: 40vh;
			max-height: 40em;
			min-height: 23em;
			overflow: hidden;
			position: relative;
			width: 100%;
		}
		
		.styled-table {
   		 border-collapse: collapse;
   		 margin: 25px 0;
   		 font-size: 0.9em;
   		 font-family: sans-serif;
   		 min-width: 400px;
   		 box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
		 width: 97%;
		 padding: 5px;
		 margin: 20px;
		 align-content: center;
		}
		
		.styled-table th{
			
			width:5%;
			align-content: center;
		}
		
		td{
			text-align: center;
		}
	
	
	</style>
	
</head>
	


<body>
	
	
<div class="banner">
	
		<button onclick="topFunction()" id="scroll-to-top-button" title="Go to Home" style="font-size: 11px"><a href="Index.cfm">HOME > RANGE > MODEL > VEHICLE</a></button>
		
		<video autoplay loop muted plays-inline class="back-vid"><source src="../vids/Above - 105793.mp4" type="video/mp4"></video>
		
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
		
		<div class="Secondary-nav">
		<ul style="align-content: space-around">
			<b> <li><u>Vehicle</u></li>
				<cfoutput query="Vehicles">
				<li><br><a href="">#Vehicle_ID#</a></li>
				</cfoutput>
			</b>
		</ul>
		</div>	
		
		<div class="content">
		
			<cfoutput query="Address">
			<h1>#Fuel_Consumption# Version</h1>
			</cfoutput>
		
		</div>
	
	</div>
		
		<table class="styled-table">
		
    <thead>
        <tr>
            <th>Price</th>
            <th>Mileage</th>
			<th>Fuel Type</th>
            <th>Fuel Consumption</th>
			<th>Engine Capacity</th>
			<th>Colour</th>
            <th>Cylinders</th>
			<th>Transmission</th>
			<th>Production</th>
        </tr>
		
    </thead>
    <tbody>
		<cfoutput query="Address">
        <tr>
            <td>#Price#</td>
            <td>#Mileage#</td>
			<td>#Fuel_Type#</td>
            <td>#Fuel_Consumption#</td>
			<td>#Engine_Capacity#</td>
			<td>#Colour#</td>
            <td>#Cylinders#</td>
			<td>#Transmision#</td>
			<td>#Production_year#</td>
        </tr>
        </tr>
		</cfoutput>

    </tbody>
</table>

<cfquery name="images" datasource="Fateen190343">

select * from BigImages where Vehicle_ID='#Trim(url.theVehicle)#';

</cfquery>

<cfoutput query="images">
	
<img src="#URL#" alt="#TitleAttribute#" width="100%" height="100%">
	
</cfoutput>
		
							<section class="tiles">	
							<cfoutput query="Address">
								
							<article>
									<header class="major">
				
										<h3>Do You Want to Purchase #Fuel_Consumption#</h3>
										
										<a href="Purchase.cfm?thePurchase=#Address.Vehicle_ID#" class="button small next scrolly">To Purchase #Fuel_Consumption# Vehicle Types Click Here</a>			
									</header>
								</cfoutput>
								
								</article>
								
			
		
				
								
	<hr>
								
 <div class="footer-dark">
        <footer>
			<div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="padding: 5px">Contact Us</h3>
                        <ul>
                            <li style="display: inline-block">Phone Number: +968 92025058 |</li>
                            <li style="display: inline-block">Fax Number: +968 24242424 |</li>
                            <li style="display: inline-block">Address: Al Hail, Muscat |</li>
							<li style="display: inline-block">Email: sindbadcars@car.om |</li>
                        </ul>
						<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d116959.4877606172!2d58.07876471640625!3d23.6407443!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3e8dfc9369db9d95%3A0x57afe2923c208e99!2sJ6R9%2B7GW%20National%20University%20of%20Science%20and%20Technology%20(College%20of%20Engineering%2C%20Caledonian%20Campus)%2C%20Seeb!3m2!1d23.640744299999998!2d58.2188404!5e0!3m2!1sen!2som!4v1671213485793!5m2!1sen!2som" width="950" height="300" style="border:0; border-radius: 10px; margin-left: 25px" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        
               
                    </div>
					
            </div>
				
        </footer>
			
    </div>
	 
</body>
	
</html>



