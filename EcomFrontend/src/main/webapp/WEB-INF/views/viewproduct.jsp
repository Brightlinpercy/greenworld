
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cr" value="${pageContext.request.contextPath}" />

<style type="text/css">
.bloc_left_price {
	color: #c01508;
	text-align: center;
	font-weight: bold;
	font-size: 150%;
}

.category_block li:hover {
	background-color: #007bff;
}

.category_block li:hover a {
	color: #ffffff;
}

.category_block li a {
	color: #343a40;
}

.text {
	display: block;
	width: 300px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">


<div class="container-fluid" style="margin-top: 2%">
	<div class="row">
		<div class="col-2 col-sm-2">
			<div class="card bg-light mb-3">
				<div class="card-header bg-primary text-white text-uppercase">
					<i class="fa fa-list"></i> Categories
				</div>
				<ul class="list-group category_block">
					<li class="list-group-item"><a
						href="viewproduct">All</a></li>

					<c:forEach items="${categorylist}" var="c">
						<li class="list-group-item"><a
							href="${cr}selectbycat?catid=${c.categoryid}">${c.categoryname}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="card bg-light mb-3"></div>
		</div>
		<div class="col-10">
			<div class="row">
				<c:forEach items="${productlist}" var="viewallprod">
					<div class="col-4">

						<div class="card">
							<img class="card-img-top"
								src="${cr}resources/productimages/${viewallprod.productid}.jpg"
								width="70" height="350" alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">
									<span class="text">${viewallprod.productname}</span>
								</h4>
								<div class="row">

									<p class="btn btn-info btn-block">Rs.${viewallprod.price}</p>
									<a href="${cr}/viewoneproduct?proid=${viewallprod.productid}"
										class="btn btn-success btn-block"><p>View Product</p></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
