<!doctype html>
<html>
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  
	<title>Purchase</title>
	
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
	
	<cfquery name="Link" datasource="Fateen190343">
	
	select * from model,vehicle where model.Model_ID=vehicle.Model_ID and Vehicle.Model_ID='#Trim(url.thePurchase)#';
	
	</cfquery>
		
	<cfquery name="Address" datasource="Fateen190343">
	
	select * from vehicle where Vehicle_ID='#Trim(url.thePurchase)#';
	
	</cfquery>
	
	<cfquery NAME="Vehicles" DATASOURCE="Fateen190343">
	
		select  * from (Range INNER JOIN Model ON Range.[Range_ID] = Model.[Range_ID]) INNER JOIN Vehicle ON Model.[Model_ID] = Vehicle.[Model_ID] Where Vehicle.Model_ID = '#url.thePurchase#';
	
	</cfquery>
	
		<script type="text/javascript">

		function showcard(){

			var select = document.getElementById('cc'); 
			if(select.checked == 1) {
				document.getElementById("cardnum").disabled = false;
				document.getElementById("cardcvv").disabled = false;
			}
			else {
				document.getElementById("cardnum").disabled = true;
				document.getElementById("cardcvv").disabled = true;				
			}
		}
		
		function showMonths(){

			var select = document.getElementById('ip'); 
			if(select.checked == 1) {
				document.getElementById("months").disabled = false;
			}
			else {
				document.getElementById("months").disabled = true;
			}
		}

		function calcualteEMI(){
			var select = document.getElementById('months'); 
			
			
			if(select.value > 0 && select.value <= 12) {
				document.getElementById("int").value = (Number(document.getElementById('price').value) * 1.025).toFixed(2);
			}
			else if(select.value > 12 && select.value < 24) {
				document.getElementById("int").value = (Number(document.getElementById('price').value) * 1.039).toFixed(2);
			}
		}
		
	</script>
		
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
		
			<h1>Purchase Page</h1>
		
			</div>
		
		
	
	  <div class="container">
	  
	  	<header>Purchase Form</header>
		  
		  <form class="form1" name="form_registration" action="" method="post" onSubmit="return validate()">
		  
		  	<div class="form-first">
			  
			  <div class="details cars">
			  
			  	<span class="title">SELECTED CAR DETAILS</span>
				  
				  <div class="fields">
				  
				  	<div class="input-field">
						
						<cfoutput query="Address">
						
						<label>VEHICLE ID</label>
					
						<input name="vehicle_id" type="text" value="#Vehicle_ID#" readonly>
							
						</cfoutput>
					  
					</div>
					  
					  <cfoutput query="Address">
					  
					  <div class="input-field">
						
						<label>REGISTRATION NUMBER</label>
					
						<input name="registration_number" type="text" value="#Registration_Number#" readonly>
					 
					  </cfoutput>
					  
					</div>
					  
					  <cfoutput query="Address">
						  
					  <div class="input-field">
						
						<label>PRICE</label>
					
						<input id="price" name="price" type="number" value="#Price#" readonly>
						  
						</cfoutput>
					  
					</div>
					 
				  
				  </div>
			  
			  </div>
				
				
			<div class="details payment">
			  
			  	<span class="title">PAYMENT METHOD</span>
				  
				  <div class="fields">
				  
				  	 <div class="input-field">
						
						<label>CREDIT CARD</label>
					
						<input name="pay" id="cc" type="radio" onclick="showcard();" required>
					  
					</div>
					  
					   <div class="input-field">
						
						<label>CASH</label>
					
						<input name="pay" id="cash" type="radio" onclick="showcard();" required>
					  
					</div>
					   
				  </div>
			  
			  </div>
				
				

				
				<div class="details cards">
			  
			  	<span class="title" id="pym">PAYMENT DETAILS</span>
				  
				  <div class="fields">
				  
				  	 <div class="input-field">
						
						<label id="cardnum">CARD NUMBER</label>
					
						<input id="cardnumber" name="card number" type="text" placeholder="Enter Card Number" required disabled>
					  
					</div>
					  
					   <div class="input-field">
						
						<label id="cardcvv">ENTER SECURITY CODE</label>
					
						<input id="cvv" name="cvv" type="text" placeholder="Enter Your CVV" required disabled>
					  
					</div>
					  
							<div class="details payment mode">
			  
			  	<span class="title">PAYMENT MODE</span>
				  
				  <div class="fields">
				  
				  	 <div class="input-field">
						
						<label>SINGLE TIME</label>
					
						<input name="spay" id="sp" type="radio" value="Single Pay" onclick="showMonths();"  style="width: 100px">
					  
					</div>
					  
					   <div class="input-field">
						
						<label>INSTALLMENTS</label>
					
						<input name="spay" id="ip" type="radio" value="Installments" onclick="showMonths();calcualteEMI();"  style="width: 100px">
					  
					</div>
					   
				  </div>
			  
			  </div>
					  
				<br>
					  
			<div class="details installments">
			  
			  	<span class="title" id="pym">INTEREST DETAILS</span>
				  
				  <div class="fields">
				  
				  	 <div class="input-field">
						
						<label id="cardnum">MONTHS</label>
					
						<input id="months" name="months" type="number" placeholder="Enter Number of Months" required disabled>
					  
					</div>
					  
					   <div class="input-field">
						
						<label id="cardcvv">INTEREST RATE</label>
					
						<input id="int" name="int" type="text" placeholder="Your Interest Is -" value="" readonly onchange="calcualteEMI()">
					  
					</div>
					 
				  
				  </div>
					
					<input class="nextBtn" type="submit" onClick="validate()" value="Register">
						
						<i class="uil uil-navigator"></i>
				
			  
			  </div>
			  
			  
			 </div>
		  
		  </form>
	  
	  </div>
									
	<hr>
	 
</body>
	
</html>



