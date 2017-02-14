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
<title>user tickets</title>
</head>
<body>

	<h3>Click Enter to know your details</h3>

	<form accept-charset="UTF-8" role="form" action="/users/ticketdetails">
		<fieldset>
			<div class="form-group">
				<div align="center">
					<div class="form-group">
						<input class="form-control" placeholder="UserId" name="userId"
							type="hidden" value="${LOGGED_IN_USER.id}">
					</div>

					<div class="checkbox" style=""></div>

					<input class="btn btn-lg btn-success btn-block" type="submit"
						value="ENTER" style="width: 150px;" align="center">
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
				<th>Subject</th>
				<th>Description</th>
				<th>Type</th>
				<th>Priority</th>
				<th>Created Date</th>
				<th>Status</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${list}" varStatus="i">
				<tr>
					<td>${c.id}</td>
					<td>${c.subject}</td>
					<td>${c.description}</td>
					<td>${c.type}</td>
					<td>${c.priority}</td>
					<td>${c.createdDate}</td>
					<td>${c.status}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br />
</body>
</html>