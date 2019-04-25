<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], textarea, select,input[type=file] {
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

<div class="container" style="margin-top: 2%">
	<c:if test="${success}">
		<div class="alert alert-success" role="alert">Transaction
			Successful</div>
	</c:if>
	<c:if test="${error}">
		<div class="alert alert-danger" role="alert">${message}</div>
	</c:if>

	<div class="row">
		<c:if test="${!editmode}">
			<h1 class="title">Product</h1>
			<c:set var="action" value="addproduct"></c:set>
		</c:if>
		<c:if test="${editmode}">
			<h1 class="title">Edit Product</h1>
			<c:set var="action" value="updateproduct"></c:set>
		</c:if>



		<form:form class="modal-content animate" action="${action}"
			modelAttribute="prodobject" enctype="multipart/form-data">
			<div class="container">
				<c:if test="${editmode}">
					<form:hidden path="productid" />
				</c:if>

				<label for="productname"><b>Product name</b></label>
				<form:input type="text" placeholder="Enter productname"
					path="productname" />
				<form:errors path="productname" cssStyle="color:Red"></form:errors>
				<label for="productdesc"><b>Product Description</b></label>
				<form:textarea name="text" id="" rows="8"
					placeholder="Enter description" path="productdesc" />
				<form:errors path="productdesc" cssStyle="color:Red"></form:errors>

				<label for="stock"><b> stock</b></label>
				<form:input type="text" placeholder="Enter stock" path="stock" />
				<form:errors path="stock" cssStyle="color:Red"></form:errors>

				<label for="price"><b> Price</b></label>
				<form:input type="text" placeholder="Enter price" path="price" />
				<form:errors path="price" cssStyle="color:Red"></form:errors>

				<label for="category"><b>Category</b></label>

				<form:select path="productcategory.categoryid"
					placeholder="select-one">
					<c:forEach items="${categorylist}" var="cat">
						<form:option value="${cat.categoryid}">${cat.categoryname}</form:option>
					</c:forEach>
				</form:select>
				<label for="seller"><b>Seller</b></label>

				<form:select path="productseller.sellerid">
					<c:forEach items="${sellerlist}" var="sel">
						<form:option value="${sel.sellerid}">${sel.sellername}</form:option>
					</c:forEach>
				</form:select>
				<label for="pimage"><b>Product Image</b></label>

				<form:input type="file" name="fileToUpload" id="fileToUpload"
					path="pimage" required="true" />
				<button type="submit">Submit</button>
			</div>
		</form:form>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<table class="table table-striped custab">
				<thead>

					<tr>
						<th>PRODUCT ID</th>
						<th>PRODUCT NAME</th>
						<th>PRODUCT DESCRIPTION</th>
						<th>STOCK</th>
						<th>PRICE</th>
						<th>CATEGORY</th>
						<th>SELLER</th>
						<th>Product Image</th>
						<th class="text-center">EDIT/DELETE</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${productlist}" var="prod">
						<tr>
							<td>${prod.productid}</td>
							<td>${prod.productname}</td>
							<td>${prod.productdesc}</td>
							<td>${prod.stock}</td>
							<td>${prod.price}</td>
							<td>${prod.productcategory.categoryname}</td>
							<td>${prod.productseller.sellername}</td>
							<td><img src="resources/productimages/${prod.productid}.jpg" height="75" width="75"/></td>
							
							<td><a class='btn btn-info btn-xs'
								href="editproduct?productid=${prod.productid}"><span
									class="glyphicon glyphicon-edit"></span> Edit</a> <a
								href="deleteproduct?productid=${prod.productid}"
								class="btn btn-danger btn-xs"><span
									class="glyphicon glyphicon-remove"></span> Del</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


	</div>



</div>
</body>
</html>
