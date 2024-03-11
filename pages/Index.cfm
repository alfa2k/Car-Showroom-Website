<!doctype html>
<html>
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Home</title>
	
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
	
	<cfquery name="Query" datasource="Fateen190343">
	
		select * from Queries;
	
	</cfquery>
	
</head>

<body>
	
	
<div class="banner">
	
		<button onclick="topFunction()" id="scroll-to-top-button" title="Go to top" style="font-size: 11px">HOME</button>
		
		<video autoplay loop muted plays-inline class="back-vid" style="filter: blur(1.5px)"><source src="../vids/pexels-yaroslav-shuraev-5418124 (1).mp4" type="video/mp4"></video>
		
		<nav class="fixed-top">
			
			<img src="../logo/Sindbad Car Showroom-1.png" class="logo" alt="Logo" onClick="goHome()">
			
			<ul>
			
				<b><li><a href="Index.cfm">HOME</a></li>
				<cfoutput query="Dashboard">
					<li><a href="Range.cfm?theRange=#Dashboard.Range_ID#" title="Go To #Range_Title#">#Range_Title#</a></li>
				</cfoutput>
				<li><a href="Queries.cfm" title="Go to Queries">QUERIES</a></li></b>
				
			</ul>
		
		</nav>
		
		<div class="content">
		
			
			<h1>Sindbad Car Showroom</h1>
			<a href="Registration.html">Register</a>
		
		</div>
	
	</div>
	
							<section class="tiles">	
							<cfoutput query="Dashboard">
								
							<article>
								
									<span class="image">
									<img src="../image/Showroom-Car.jpg" alt="" />
									</span>
									<header class="major">
				
										<h3>#Range_Info#</h3>
										
										<a href="Range.cfm?theRange=#Dashboard.Range_ID#" title="Go To #Range_Title#">To Know More About #Range_Title# Cars Click Here</a>
										

										<div class="major-actions">
											
										</div>
				
									</header>
								</article>
					</cfoutput>
								
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



