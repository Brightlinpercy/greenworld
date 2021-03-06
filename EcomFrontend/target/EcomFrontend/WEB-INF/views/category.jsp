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

.custab {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}

.custab:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
}
</style>
<div class="container" style="margin-top: 2%">
	<c:if test="${success}">
		<div class="alert alert-success" role="alert">transaction
			Successful</div>
	</c:if>
	<c:if test="${error}">
		<div class="alert alert-danger" role="alert">${message}</div>
	</c:if>
	<div class="row">
		<c:if test="${!editmode}">
			<h1 class="title">Category</h1>
			<c:set var="action" value="addcategory"></c:set>
		</c:if>
		<c:if test="${editmode}">
			<h1 class="title">Edit Category</h1>
			<c:set var="action" value="updatecategory"></c:set>
		</c:if>

		<form:form class="modal-content animate" action="${action}"
			modelAttribute="catobject">
			<c:if test="${editmode}">
				<form:hidden path="categoryid" />
			</c:if>
			<label for="uname"><b> CategoryName</b></label>
			<form:input type="text" placeholder="Enter Categoryname" name="uname"
				path="categoryname" />
			<form:errors path="categoryname" cssStyle="color:Red"></form:errors>
			<label for="cat"><b>Category Description</b></label>
			<form:textarea name="text" id="" rows="8"
				placeholder="Enter description" path="categorydesc" />
			<form:errors path="categorydesc" cssStyle="color:Red"></form:errors>

			<button type="submit">Submit</button>
		</form:form>

	</div>
	<div class="row">
		<div class="col-lg-12">
			<table class="table table-striped custab">
				<thead>

					<tr>
						<th>CATEGORY ID</th>
						<th>CATEGORY NAME</th>
						<th>CATEGORY DESCRIPTION</th>
						<th class="text-center">EDIT/DELETE</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${categorylist}" var="cat">
						<tr>
							<td>${cat.categoryid}</td>
							<td>${cat.categoryname}</td>
							<td>${cat.categorydesc}</td>
							<td><a class='btn btn-info btn-xs'
								href="editcategory?catname=${cat.categoryname}"><span
									class="glyphicon glyphicon-edit"></span> Edit</a> <a
								href="deletecategory?catname=${cat.categoryname}"
								class="btn btn-danger btn-xs"><span
									class="glyphicon glyphicon-remove"></span> Del</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


	</div>
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
