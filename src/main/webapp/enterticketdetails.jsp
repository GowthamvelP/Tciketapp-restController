<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
	<h4 style="margin-left: 620px">TICKET DETAILS</h4>
	<div class="container">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Enter Your Ticket Details</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" action="/create/ticket">
                    <fieldset>                  
			    	  	<div class="form-group">
			    			    <input class="form-control" placeholder="UserId" name="userId" type="hidden" value="${LOGGED_IN_USER.id}">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Type" name="Type" type="text" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Subject" name="Subject" type="text" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Description" name="Description" type="text" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Priority" name="Priority" type="text" value="">
			    		</div>
			    		<div class="checkbox">
			    	    	
			    	    </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Submit">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>


</body>
</html>