<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/4.0.0/jquery.min.js"></script>
<link rel="icon" href="resources/images/Capture2.PNG" type="image/gif" size="16*16">
<title>Green World</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div style="min-height: 400px;">
<c:if test="${aboutPage}">
			<jsp:include page="aboutus.jsp" />
		</c:if>
		<c:if test="${contactPage}">
			<jsp:include page="contactus.jsp" />
		</c:if>
		<c:if test="${loginPage}">
			<jsp:include page="login.jsp" />
		</c:if>
		<c:if test="${registerPage}">
			<jsp:include page="register.jsp" />
		</c:if>
		<c:if test="${sliderPage}">
			<jsp:include page="slider.jsp" />
		</c:if>
		<c:if test="${categoryPage}">
			<jsp:include page="category.jsp" />
		</c:if>
		<c:if test="${sellerPage}">
			<jsp:include page="seller.jsp" />
		</c:if>
		<c:if test="${productPage}">
			<jsp:include page="product.jsp" />
		</c:if>
		<c:if test="${viewproductPage}">
			<jsp:include page="viewproduct.jsp" />
		</c:if>
		<c:if test="${viewoneproductPage}">
			<jsp:include page="viewoneproduct.jsp" />
		</c:if>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>