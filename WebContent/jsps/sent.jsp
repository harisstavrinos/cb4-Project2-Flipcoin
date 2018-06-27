<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<script src="jquery-3.3.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

<style>
<%@
include file="../resources/inboxMessage.css"%>
</style>

<script type="text/javascript">	
<%@ include file="../resources/inboxMessage.js"%>	
</script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<!-- <link href="../resources/css/bootstrap.min.css" rel="stylesheet"> -->
<title>Sent Messages</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>




<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<!-- <link href="./resources/inboxMessage.css" rel="stylesheet"> -->
<!-- <script type="text/javascript" src="./resources/inboxMessage.js"></script> -->

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
			<form class="form-inline" action="action_page.php">
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
					<br> <br>
					<div class="inbox-menu">
						<div class="btn-group-vertical">
							<a href="newMessage.htm">
								<button id="newMessage" class="btn btn-success">New
									Message</button>
							</a> <a href="inbox.htm">
								<button id="inbox" class="btn btn-info">

									<i class="fa fa-inbox"></i> Inbox

								</button> 
							</a> <a href="trash.htm">
									<button id="trash" class="btn btn-info">
										<i class="fa fa-trash-o"></i> Trash
									</button>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<br>
					<div class="col-sm-11">
						<h5 class="text-center">Sent Messages</h5>
					</div>
					<div class="col-sm-11">

						<div id="messages">


							<table>
								<tr>
									
									<th>To:</th>
									<th>Subject</th>
									<th>Date</th>
								</tr>

								<c:forEach var="message_data" items="${message_list}"
									varStatus="st">
									<tr>
										
										<td class='clickable-row' data-href='readMessage/${message_data.id}.htm'><c:out
												value="${ message_data.reciever }"></c:out></td>
										<td class='clickable-row' data-href='readMessage/${message_data.id}.htm'><c:out
												value="${ message_data.subject }"></c:out></td>
										<td class='clickable-row' data-href='readMessage/${message_data.id}.htm'><c:out
												value="${ message_data.dateAsString }"></c:out></td>
									</tr>
								</c:forEach>

							</table>
						</div>

					</div>
				</div>
			</div>

		</div>




		<!-- footer -->
		<div class="row">
			<div class="col-sm-12" style="text-align: center">

				<p style="color: white">Kataklida 2 !!!!</p>
				<p style="color: white">&copy; 2017-2018</p>
			</div>
		</div>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
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


	<script src="https://select2.github.io/dist/js/select2.full.js"></script>
	<link href="../resources/inboxMessage.css" rel="stylesheet">
	<!-- <script type="text/javascript" src="../resources/inboxMessage.js"></script>  -->
</body>
</html>