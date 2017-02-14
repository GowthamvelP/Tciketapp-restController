<html>
<head>

<script src="js/jquery-3.1.1.min.js"></script>


<script>
	$(document).ready(function() {
		console.log("Jquery Loaded");
		/* $.getJSON("/api/courses" , function(data) {
			console.log(data);
			console.log(JSON.stringify(data));
			localStorage.setItem("COURSES", JSON.stringify(data));
		});	 */
		
		loadCoursesFromLocalStorage();
	});

	function loadCourses() {

		$.getJSON("/api/courses", function(data) {
			console.log(data);
			console.log(JSON.stringify(data));
			localStorage.setItem("COURSES", JSON.stringify(data));
		});
	}
	
	function loadCoursesFromLocalStorage(){
		
		var coursesObj = localStorage.getItem("COURSES");
		var courses = coursesObj == null ? [] : JSON.parse(coursesObj);
		console.log("Fetching courses from localstorage:" + JSON.stringify(courses));
		
	}
</script>

</head>
<body>
	<h1 style="margin-left: 390px">TICKET MANAGEMENT SYSTEM</h1>
	<h2 style="margin-left: 395px">
		<font color="green"> <b><a href="Register.jsp">User
					Registration and login</a></b>
		</font>
	</h2>
<body bgcolor="FFE9E4 ">

	<h2 style="margin-left: 575px">
		<b><a href="employeeregister.jsp">Employee Registration and
				login</a></b>

	</h2>
</body>
</html>
