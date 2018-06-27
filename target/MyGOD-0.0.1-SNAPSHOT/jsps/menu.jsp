<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Main Menu</title>





<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<!-- <link href="./resources/menu.css" rel="stylesheet"> -->
<!-- <link href="../navbar/userNavbar.html" rel="import"> -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



<style>
<%@ include file="../resources/menu.css"%>
</style>

<script type="text/javascript">
	
<%@ include file="../resources/menu.js"%>
	
</script>

</head>
<body>


	<header> <nav
		class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="col-sm-2">
		<!--   Brand -->
		<!-- <button id="openNav" class="w3-button  w3-xlarge w3-dark-grey" onclick="w3_open()">&#9776;</button> -->
		<a class="navbar-brand" href="menu.jsp">Logo</a>
	</div>

	<!--    Links -->
	<div class="col-sm-7">
	<h5 style="text-align: center;color: white;">Welcome to CoinFlip</h5>
		<!-- <ul class="navbar-nav justify-content-center">
			<li class="nav-item"><a class="nav-link" href="menu.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="inbox.htm">Notifications
					<span class="badge">(5)</span>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="#">Settings</a></li>
		</ul> -->
	</div>


	<!-- isos prepei na aferethei to sigkekrimeno button -->
	<div class="col-sm-3" >
		<!-- <ul class="nav justify-content-end">
			<form class="form-inline" action="action_page.php">
				<input class="form-control mr-sm-1" type="text" placeholder="Search">
				<input type="submit" class="btn btn-danger" value="Log out">
			</form>
		</ul> -->
		
		
		<!-- Example split danger button -->
<div class="dropdown" id="userButton">
<button onclick="myFunctionDropdown()" id="dropbtn" class="btn btn-secondary"><i class="fa fa-user"></i> ${sessionScope.currentUser}</button>
  <div id="myDropdown" class="dropdown-menu">
    <!-- <a href="#home">Home</a> -->
   <a class="dropdown-item" href="#"><i class="fa fa-sign-out"></i> Log Out</a>
  </div>
</div>
	<script type="text/javascript">

	var myFunctionDropdown= function () {
	    document.getElementById("myDropdown").classList.toggle("show");
	}

	// Close the dropdown if the user clicks outside of it
	window.onclick = function(event) {
	  if (!event.target.matches('#dropbtn')) {
	    var dropdowns = document.getElementsByClassName("dropdown-menu");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
	</script>
	</nav> </header>



	<!-- menu -->
	<div class="container-fluid">
		<!-- <div class="col-sm-12"> -->
			
					 <div class="row" > 
						 <div class="col-sm-1" id="sideMenu">  
							
							<div id="sideButtons" class="btn-group">
							<button class="btn btn-secondary"><a href="#"><i class="fa fa-bar-chart"></i> Markets</a></button>
							<button class="btn btn-secondary"><a href="#"><i class="fa fa-university"></i> Orders</a></button>
							<button class="btn btn-secondary"><a href="#"><i class="fa fa-btc"></i> Balances</a></button>
						<a href="inbox.htm">	<button class="btn btn-secondary"><i class="fa fa-comments-o"></i> Inbox</button></a>
							</div>	
						</div>  
						
						<div class="col-sm-4" id="coins">
						
						<br>
						<div class="active-cyan-4 mb-4">
    					<input class="form-control" type="text" id="searchCoin" onkeyup="myFunction()" placeholder="Search for coins.." aria-label="Search">
						</div>
						<!-- <input type="text" id="searchCoin" onkeyup="myFunction()" placeholder="Search for coins..">  -->
						
						
						
						 <!-- <div id="coins2">  -->
						
						 <table id="coins2"><thead>
						 <tr><th>Id</th><th>Name</th>
						 </thead><tbody>
						 <tr><td></td><td></td></tr>
						 </tbody>
						 
						 </table>
						 
						 
						 
						 
						  <script type="text/javascript">	
						  <%@ include file="../resources/coinTable.js"%>	
						  </script>
						  <!-- </div> -->
						  <script type="text/javascript">	
						  <%@ include file="../resources/searchCoin.js"%>	
						  </script>
						  </div>
				
			
				
				<!-- TradingView Widget BEGIN -->
<!--  <div class="tradingview-widget-container">
  <div class="tradingview-widget-container__widget"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/markets/cryptocurrencies/prices-all/" rel="noopener" target="_blank"><span class="blue-text">Cryptocurrency Markets</span></a> by TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-screener.js" async>
  {
  "width": "1000",
  "height": "500",
  "defaultColumn": "overview",
  "screener_type": "crypto_mkt",
  "displayCurrency": "USD",
  "locale": "en"
}
  </script>
</div> -->
<!-- TradingView Widget END-->
				

						
						
							<div class="col-sm-7" style="padding-left: 2%;">					 
							 
							 <h3 id="coinName"  style="text-align: center;">BTC name</h3><br>
						
							<!-- lineChart -->
							<%-- <script type="text/javascript">	
						  <%@ include file="../resources/lineChart.js"%>	
						  </script> 
							
							<div id="chartContainer" style="height: 370px; width: 100%;"></div> --%>
							
							
							
							<!-- Candlestick chart -->
							<%-- <script type="text/javascript">	
						  <%@ include file="../resources/candleStickChart.js"%>	
						  </script>
							 <div id="chartContainerCandle" style="height: 370px; width: 100%;"></div> --%> 
							
							
							<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
							<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> 
	<%-- 						
	<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>		
							
						 --%>
							
							<div class="main">
								<!-- <h3>Grafimata</h3> -->
								
							</div>
						 
						<br>
						
						<div class="row" id="buySellOrders" > 
						<div id="buyCoin" class="col-sm-6" >
						<fieldset style="border:3px solid white;">
						<legend style="text-align: center">Buy Coins</legend>
						  <form class="form-horizontal" action="">
						  
						  
						      
						      
						      <div class="form-group" style="margin: 0%;padding: 0%;">
						            <label class="control-label col-sm-2" for="amount" >Amount:</label>
						                  <div class="col-sm-12" >
						                          <input type="number" step="0.01" min="0" class="form-control" id="buyAmount" placeholder="Amount" name="amount">
						                  </div>
						      </div>
						      
						      <div class="form-group" style="margin: 0%;padding: 0%;">
						            <label class="control-label col-sm-2" for="price" >Price:</label>
						                  <div class="col-sm-12" >
						                          <input type="number" step="0.01" min="0" class="form-control" id="buyPrice" placeholder="Price" name="price">
						                  </div>
						      </div>
						      
						      
						      <div class="form-group">
						      		<div class="col-sm-offset-2 col-sm-12">
						      			<button type="button" id="placeBuyOrder" class="btn btn-secondary">Buy</button>
						            </div>
						     </div>
						     
						     </form>
						     </fieldset>
						</div>
						
						<script type="text/javascript" >	
						<%@ include file="../resources/order.js"%>	
						  </script>
						
						<div id="sellCoin" class="col-sm-6" >
						<fieldset style="border:3px solid white;">
						<legend style="text-align: center">Sell Coins</legend>
						  <form class="form-horizontal" action="#">
						      
						      <div class="form-group" style="margin: 0%;padding: 0%;">
						            <label class="control-label col-sm-2" for="amount" >Amount:</label>
						                  <div class="col-sm-12" >
						                          <input type="number" step="0.01" min="0" class="form-control" id="amount" placeholder="Amount" name="amount">
						                  </div>
						      </div>
						      <div class="form-group" style="margin: 0%;padding: 0%;">
						            <label class="control-label col-sm-2" for="price" >Price:</label>
						                  <div class="col-sm-12" >
						                          <input type="number" step="0.01" min="0" class="form-control" id="price" placeholder="Price" name="price">
						                  </div>
						      </div>
						      
						      <div class="form-group">
						      		<div class="col-sm-offset-2 col-sm-12">
						      			<button type="submit" class="btn btn-secondary">Sell</button>
						            </div>
						     </div>
						     </form>
						     </fieldset>
						</div>			
						<!--end row  -->
						</div>
						
						<!-- transaction page  -->
						<div class="row" > 
						<div class="col-sm-6" >
						<fieldset style="border:3px solid white;">
						<legend style="text-align: center">Buy Coins Orders</legend>
						
						
						 <div  class="tableTransaction">
						<!-- <thead>
						  <tr><th>Quantity</th><th>Price</th>
						 </thead><tbody>
						 <tr><td></td><td></td></tr>
						 </tbody>
						  -->
						  
						 
						 </div>

						</fieldset>
						</div>
						
						<div class="col-sm-6" >
						<fieldset style="border:3px solid white;">
						<legend style="text-align: center">Sell Coins Orders</legend>
						
						
						 <div  class="tableTransaction3">
						<!-- <thead>
						  <tr><th>Quantity</th><th>Price</th>
						 </thead><tbody>
						 <tr><td></td><td></td></tr>
						 </tbody>
						  -->
						  
						 
						 </div>

						</fieldset>
						</div>
						
						<script type="text/javascript" >	
						<%@ include file="../resources/coinTransaction.js"%>	
						  </script>
						
						
						
						<!--end row  -->
						</div>
						
						
						
						
						
						</div>
						<button onclick="topFunction()" id="myBtn" style="border-radius: 50%;" title="Go to top"><i class="fa fa-chevron-circle-up" aria-hidden="true"></i></button>

				</div> 
		</div>

		<!-- footer -->
		<div class="container-fluid" style="margin-bottom:0">
		<div class="row">
			<div class="col-sm-12" style="text-align: center">

				<p style="color: white">Kataklida 2 !!!!</p>
				<p style="color: white">&copy; 2017-2018</p>
			</div>
		</div>
	</div>

	

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>

	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<link href="https://select2.github.io/dist/css/select2.min.css"
		rel="stylesheet">


	
	<!-- <link href="../resources/inboxMessage.css" rel="stylesheet"> -->
	<!-- <script type="text/javascript" src="../resources/inboxMessage.js"></script>  -->
	
</body>
</html>