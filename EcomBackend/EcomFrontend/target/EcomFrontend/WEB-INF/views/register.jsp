<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.title {
	font-size: 2.5em;
	font-family: "Roboto", sans-serif;
	font-weight: 700;
	color: #242424;
	margin: 5% 8%;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 50%; /* Full width */
	height: 50%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	border: 1px solid #888;
	width: 100%; /* Could be more or less, depending on screen size */
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>

<div class="container" style="margin-top: 2%">
<c:if test="${success}">
		<div class="alert alert-success" role="alert">login
			Successful</div>
	</c:if>
	<c:if test="${error}">
		<div class="alert alert-danger" role="alert">${message}</div>
	</c:if>
	<form:form class="modal-content animate" action="addcustomer" modelAttribute="regobject">

		<label for="uname"><b>Name</b></label>
		<form:input type="text" placeholder="Enter name" name="uname" path="customername" />
		<form:errors path="customername" cssStyle="color:Red"></form:errors>
		<label for="cont"><b>Contact No</b></label>
		<form:input type="text" placeholder="Enter Contact No" name="cont" path="phoneno" />
		<form:errors path="phoneno" cssStyle="color:Red"></form:errors>
		<label for="email"><b>Email id</b></label>
		<form:input type="text" placeholder="Enter Mail id" name="email" path="customermailid"/>
		<form:errors path="customermailid" cssStyle="color:Red"></form:errors>
		<label for="psw"><b> Password</b></label>
		<form:input type="password" placeholder="Enter Password" name="psw" path="password" />
<form:errors path="password" cssStyle="color:Red"></form:errors>
		<button type="submit">Submit</button>
	</form:form>
</div>

<script>
	// Get the modal
	var modal = document.getElementById('id01');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>

</body>
</html>
