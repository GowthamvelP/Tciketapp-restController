<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login Credentials</title>

<script src="js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		console.log("Jquery Loaded");
		$("#addCourseBtn").on('click' , function(e) {
			e.preventDefault();
			save();
			return false;
		});
	});
	
	function save(){
		
		var courseObj = { "name" : $("#coursename").val() , "desc" : $("#description") , "sub" : $("#subject")};
		console.log(JSON.stringify(courseObj));
		$.post("api/courses/save", courseObj , function(data) {
			console.log(data);
			if ( data != null){
				console.log("Unable to insert:"+ data);
			}
		});
		
	}
	function logout(){
		localStorage.removeItem("COURSES");	
	}
	</script>
</head>
<body>
<h3> Welcome ${LOGGED_IN_USER.name} !!!( <a href="../check/logout" onClick="logout()">Logout</a>)</h3>
	<h3>Have you ever created tickets</h3>
	<a href="../usertickets.jsp">
		<button type="button" class="btn btn-success">Yes</button>
	</a>
	<a href="../enterticketdetails.jsp">
		<button type="button" class="btn btn-danger">No</button>
	</a>
	<h3>WANT TO UPDATE DESCRIPTION?</h3>
	<a href="../changedescription.jsp"> <br>
		<button type="button" class="btn btn-primary">Update</button>
	</a>
	<h3>WANT TO UPDATE STATUS?</h3>
	<a href="../changedescription.jsp"> <br>
		<button type="button" class="btn btn-warning">Update</button>
	</a>
</body>
</html>