<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="//d85wutc1n854v.cloudfront.net/live/css/screen_preview_legacy.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>ASSIGN EMPLOYEE</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="//d85wutc1n854v.cloudfront.net/live/css/screen_preview_legacy.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>employee details</title>
</head>
<body>
	<h3>
		Welcome ${LOGGED_IN_EMPLOYEE.name} !!!( <a href="../check/logout">Logout</a>)
	</h3>
	<h4 style="margin-left: 175px">RE-ASSIGN EMPLOYEE</h4>

	<div class="col-md-4 col-md-offset-1"
		style="top: 45px; margin-left: 160px;">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Update here</h3>
			</div>
			<div class="panel-body">
				<form accept-charset="UTF-8" role="form" action="/employee/reassign">
					<fieldset>
						<div class="form-group">
							<input class="form-control" placeholder="Ticket Id"
								name="ticketId" type="text">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="User Id" name="userId"
								type="text">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Employee Id"
								name="empId" type="text">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Reply" name="reply"
								type="text">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Status" name="status"
								type="text" required>
						</div>
						<div class="checkbox"></div>
						<input class="btn btn-lg btn-success btn-block" type="submit"
							value="Reassign">
					</fieldset>
				</form>
			</div>
		</div>
	</div>



	<h4 style="margin-left: 740px">Delete Ticket</h4>

	<div class="col-md-4 col-md-offset-1" style="top: 15px;">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Provide solution</h3>
			</div>
			<div class="panel-body">
				<form accept-charset="UTF-8" role="form"
					action="/employee/admindelete">
					<fieldset>
						<div class="form-group">
							<input class="form-control" placeholder="Ticket Id"
								name="ticketId" type="text" required>
						</div>
						<div class="checkbox"></div>
						<input class="btn btn-lg btn-primary btn-block" type="submit"
							value="Delete">
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<h2 style="margin-left: 395px">
		<b><a href="employeeticket.jsp">more</a></b>
	</h2>


</body>
</html>
