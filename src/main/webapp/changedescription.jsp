<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
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
<title>update desc here</title>
</head>
<body>
	<h4 style="margin-left: 155px">Update Description</h4>

	<div class="col-md-4 col-md-offset-2"
		style="top: 45px; margin-left: 140px;">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Update your Decscription here</h3>
			</div>
			<div class="panel-body">
				<form accept-charset="UTF-8" role="form"
					action="/update/description">
					<fieldset>
						<div class="form-group">
							<input class="form-control" placeholder="User Id" name="userId"
								type="hidden" value="${LOGGED_IN_USER.id}">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Ticket Id"
								name="ticketId" type="text">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Description"
								name="Description" type="text">
						</div>
						<div class="checkbox"></div>
						<input class="btn btn-lg btn-primary btn-block" type="submit"
							value="Submit">
					</fieldset>
				</form>
			</div>
		</div>
	</div>



	<h4 style="margin-left: 100px">Update Status</h4>
	<div class="col-md-4 col-md-offset-1" style="top: 15px;">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Update your Status here</h3>
			</div>
			<div class="panel-body">
				<form accept-charset="UTF-8" role="form"
					action="/update/description">
					<fieldset>
						<div class="form-group">
							<input class="form-control" placeholder="User Id" name="userId"
								type="hidden" value="${LOGGED_IN_USER.id}">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Ticket Id"
								name="ticketId" type="text">
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="Status" name="Status"
								type="text">
						</div>
						<div class="checkbox"></div>
						<input class="btn btn-lg btn-warning btn-block" type="submit"
							value="Submit">
					</fieldset>
				</form>
			</div>
		</div>
	</div>


</body>
</html>