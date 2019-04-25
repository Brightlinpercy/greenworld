<style>

h3 {
	color: rgba(31, 181, 172, .9);
}

.text {
	color: rgba(31, 181, 172, .9);
	text-align: center;
}

.folded-corner:hover .text {
	visibility: visible;
	color: #000000;;
}

.Services-tab {
	margin-top: 20px;
}

/*
  nav link items
*/
.folded-corner {
	padding: 25px 25px;
	position: relative;
	font-size: 90%;
	text-decoration: none;
	color: #999;
	background: transparent;
	transition: all ease .5s;
	border: 1px solid rgba(31, 181, 172, .9);
}

.folded-corner:hover {
	background-color: rgba(31, 181, 172, .9);
}

/*
  paper fold corner
*/
.folded-corner:before {
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	border-style: solid;
	border-width: 0 0px 0px 0;
	border-color: #ddd #000;
	transition: all ease .3s;
}

/*
  on li hover make paper fold larger
*/
.folded-corner:hover:before {
	background-color: #D00003;
	border-width: 0 50px 50px 0;
	border-color: #eee #000;
}

.service_tab_1 {
	background-color: #000;
}

.service_tab_1:hover .fa-icon-image {
	color: #000;
	transform: rotate(360deg) scale(1.5);
}

.fa-icon-image {
	color: rgba(31, 181, 172, .9);
	display: inline-block;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	line-height: 1;
	font-size-adjust: none;
	font-stretch: normal;
	-moz-font-feature-settings: normal;
	-moz-font-language-override: normal;
	text-rendering: auto;
	transition: all .65s linear 0s;
	text-align: center;
	transition: all 1s cubic-bezier(.99, .82, .11, 1.41);
}
</style>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>CSS paper fold with hover effect</title>
<link rel="stylesheet" href="css/style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>
	<div class="container">
		<div class="row">
			<ul>
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 Services-tab  item">
					<div class="folded-corner service_tab_1">
						<div class="text">
							<i class="fa fa-image fa-5x fa-icon-image"></i>
							<p class="item-title">
							<h3>Vision</h3>
							</p>
							<!-- /.item-title -->
							<p>To create a Greener World & Contribute a bit against
								Global Warming.To create spaces around us green & healthy " To
								achieve this we aim to open 100+ green stores in every city of
								India & help promote people gift plant - gift life.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 Services-tab item">
					<div class="folded-corner service_tab_1">
						<div class="text">
							<i class="fa fa-lightbulb-o fa-5x fa-icon-image"></i>
							<p class="item-title">
							<h3>Mission</h3>
							</p>
							<!-- /.item-title-->
							Dedicated to growing an excellent assortment of superior plants
							and provide our customers with the best service possible. Create
							for our employees a stimulating, safe, challenging and rewarding
							environment.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 Services-tab item">
					<div class="folded-corner service_tab_1">
						<div class="text">
							<i class="fa fa-truck fa-5x fa-icon-image"></i>
							<p class="item-title">
							<h3>Marketing</h3>
							</p>
							<!-- /.item-title -->
							<p>Categorization of plants helps us to find wide range of
								customers. Various offers to customers helps us attract wide
								range of customers.We promote our nursery through
								advertisements,broadcasting.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 Services-tab item">
					<div class="folded-corner service_tab_1">
						<div class="text">
							<i class="fa fa-diamond fa-5x fa-icon-image"></i>
							<p class="item-title">
							<h3>Branding</h3>
							</p>
							<!-- /.item-title -->
							<p>GreenBranding helps us integrate all aspects of our unique
								brand across the entire retail facility. Visually we create
								impact with our logo, colors, style,fleet graphics and more.
								Brand really means quality among customers.</p>
						</div>
					</div>
				</div>
			</ul>
		</div>
	</div>





</body>
</html>
