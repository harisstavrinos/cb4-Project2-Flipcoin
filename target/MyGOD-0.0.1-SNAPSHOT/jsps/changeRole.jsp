<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->
<!-- <script type="text/javascript" src="js/jquery.autocomplete.min.js"></script> -->
<!-- <script type="text/javascript" src="js/currency-autocomplete.js"></script>  -->





<title>Change Role</title>
<style>
<%@
include file="../resources/changeRole.css"%>
</style>

<script type="text/javascript">	
<%@ include file="../resources/changeRole.js"%>	
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
		<ul class="navbar-nav justify-content-center">
			<li class="nav-item"><a class="nav-link" href="menu.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="inboxMessage.jsp">Notifications
					<span class="badge">(5)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="inboxMessage.jsp">Inbox</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Settings</a></li>
		</ul>
	</div>


	<!-- isos prepei na aferethei to sigkekrimeno button -->
	<div class="col-sm-3">
		<ul class="nav justify-content-end">
			<form class="form-inline" action="/action_page.php">
				<!-- <input class="form-control mr-sm-1" type="text" placeholder="Search"> -->
				<input type="submit" class="btn btn-danger" value="Log out">
			</form>
		</ul>
	</div>
	</nav> </header>

	<div class="container-fluid">

		<div class="col-sm-12">
			<div class="row">
				<div class="col-md-3">
					<br> <br> <br>
					<div class="inbox-menu">
						<div class="btn-group-vertical">
							<a href="sendMessage.html">
								<button id="newMessage" class="btn btn-danger">New
									Message</button>
							</a> <a href="inboxMessage.jsp">
								<button id="inbox" class="btn btn-info">

									<i class="fa fa-inbox"></i> Inbox

								</button>
							</a> <a href="sentMessage.jsp">
								<button id="inbox" class="btn btn-info">

									<i class="fa fa-rocket"></i> Sent

								</button>
							</a> <a href="trashMessage.jsp">
								<button id="trash" class="btn btn-info">

									<i class="fa fa-trash-o"></i> Trash

								</button>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="panel-body message">
						<br>
						<div class="col-sm-11">
							<h6 class="text-center">Update User</h6>
						</div>
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="to" class="col-sm-4 control-label">Choose
									User:</label>
								<div class="col-sm-11" >
									<!-- dropliste me olous tous users kai search paidio gia na pliktrologisei to onoma -->
									<i class="fa fa-search" aria-hidden="true"></i> 
									<input id="tags" type="text" placeholder="Search Username..." />
									<br> <br>

									<!-- <table id="myTable">
										isos to sosto einai naeinai mono ena tr k ena td
										<tr>
											<td><button type="button" class="btn btn-info"
													value="Zac">Zac</button></td>
											<td><button type="button" class="btn btn-info"
													value="Zac222">Zac222</button></td>
											<td><button type="button" class="btn btn-info"
													value="Chriss">Chriss</button></td>
											<td><button type="button" class="btn btn-info"
													value="JR">JR</button></td>
											<td><button type="button" class="btn btn-info"
													value="Zaxos">Zaxos</button></td>
											<td><button type="button" class="btn btn-info"
													value="Charis">Charis</button></td>

										</tr>
									</table> -->
								</div>
							</div>
							<label class="col-sm-2 control-label">Choosen User:</label> <label
								id="nameOfUser" class="col-sm-2 control-label"></label>
							<div class="col-sm-7">
								<table id="roleTable">
									<!-- isos to sosto einai naeinai mono ena tr k ena td -->
									<tr>
										<td><label class="col-sm-3 control-label">Role:</label></td>
										<td><button type="button" class="btn btn-info">Simple
												User</button></td>
										<td><button type="button" class="btn btn-info">Admin</button></td>
									</tr>

								</table>
							</div>
							<hr>
							<div class="col-sm-7">
								<table>
									<tr>
										<td class="col-sm-3"><label>Delete User:</label></td>
										<td class="col-sm-2"><button class="btn btn-success">Yes</button></td>
										<td class="col-sm-2"><button class="btn btn-danger">No</button></td>
									</tr>
								</table>
							</div>






							<!-- <div class="form-group">
								<label for="message" class="col-sm-1 control-label">Message:</label>

								<div class="col-sm-11">
									<textarea class="form-control select2-offscreen" id="message"
										maxlength="250" name="body" rows="9" cols="9"
										placeholder="Type your Message" tabindex="-1"></textarea>
									<br> (Maximum characters: 250)<br> <span id="charLeft">
									</span> Characters left
								</div>
							</div> -->


							<!-- </form> -->

							<div class="form-group">
								<div class="col-sm-6">
									<div class="btn-group ">
										<button type="submit" class="btn btn-success">&nbsp;&nbsp;&nbsp;Submit&nbsp;&nbsp;&nbsp;</button>
										<!-- 		<button type="submit" class="btn btn-danger">Clean</button> -->
										<!-- <button type="reset" id="reset" class="btn btn-secondary" value="Reset">Reset</button> -->
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- <script>
				function w3_open() {
					document.getElementById("main").style.marginLeft = "10%";
					document.getElementById("mySidebar").style.width = "10%";
					document.getElementById("mySidebar").style.display = "block";
					document.getElementById("openNav").style.display = 'none';
				}
				function w3_close() {
					document.getElementById("main").style.marginLeft = "0%";
					document.getElementById("mySidebar").style.display = "none";
					document.getElementById("openNav").style.display = "inline-block";
				}
            </script> -->




	<!-- footer -->
	<div class="row">
		<div class="col-sm-12" style="text-align: center">

			<p style="color: white">Kataklida 2 !!!!</p>
			<p style="color: white">&copy; 2017-2018</p>
		</div>
	</div>

	<!-- 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
		 -->


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>


	<!-- 	<link href="https://select2.github.io/dist/css/select2.min.css"
		rel="stylesheet"> -->
	<!-- <script src="https://select2.github.io/dist/js/select2.full.js"></script> -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.devbridge-autocomplete/1.4.7/jquery.autocomplete.min.js"></script>


</body>
</html>