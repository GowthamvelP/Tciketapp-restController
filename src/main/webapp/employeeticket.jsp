<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<title>employee tickets</title>
</head>
<body>

	<h3>
		Welcome ${LOGGED_IN_EMPLOYEE.name} !!!( <a href="../check/logout">Logout</a>)
	</h3>
	<form accept-charset="UTF-8" role="form"
		action="/employee/ticketdetails">
		<fieldset>
			<div class="form-group">
				<div align="center">
					<input class="form-control" placeholder="Employee Id" name="empId"
						type="hidden" required style="width: 300px;" align="center"
						value="${LOGGED_IN_EMPLOYEE.id}">

					<div class="form-group">
						<div align="center">
							<input class="form-control" placeholder="User Id" name="userId"
								type="text" required style="width: 300px; bottom: 10px"
								align="center">

							<div class="checkbox" style=""></div>

							<input class="btn btn-lg btn-success btn-block" type="submit"
								value="Submit" style="width: 150px;" align="center">
						</div>
					</div>
				</div>
		</fieldset>
	</form>
	<h3>Ticket Details</h3>
	<%-- 	To Test Values : ${User_Details} --%>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>TicketId</th>
				<th>Reply</th>


			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${list}" varStatus="i">
				<tr>
					<td>${c.id}</td>
					<td>${c.ticket.id}</td>
					<td>${c.reply}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br />
</body>
</html>