
<style>

.container:after, .container:before {
	content: "";
	display: block;
	clear: both;
}

/* Start navbar */
.nav {
	background-color: #9bf442;
	border-bottom: 1px solid #ececec;
	min-height: 25px;
	height: auto;
}

.nav .nav-heading {
	float: left
}

.nav .nav-heading .toggle-nav {
	padding: 2px 10px;
	border-radius: 5px;
	border: none;
	display: none;
	background-color: transparent;
}

.nav .nav-heading>a {
	text-decoration: none;
	color: #000;
	line-height: 60px;
	font-weight: 400;
	font-size: 19px;
}

/* Start menu */
.nav .menu {
	float: right;
}

.nav .menu:after {
	content: "";
	clear: both;
	display: block;
}

.nav .list {
	float: right;
	margin: 0;
}

.nav .list>li {
	float: left;
	list-style: none;
}

.nav .list>li>a {
	color: #555;
	text-decoration: none;
	display: block;
	line-height: 60px;
	padding: 0 35px;
}

.nav .list>li>a:hover, .nav .list>li.active>a {
	color: #333
}

/* Start drodpwn menu */
.categories {
	position: relative;
}

.nav .list .categories .drop-down {
	list-style: none;
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #FFF;
	border: 1px solid #ccc;
	padding: 5px 0;
	min-width: 160px;
	width: auto;
	white-space: nowrap;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	display: none;
	z-index: 99999
}

.nav .list .drop-down>.seprator {
	height: 1px;
	width: 100%;
	margin: 9px 0;
	background-color: #e5e5e5
}

.drop-down>li>a {
	color: #333;
	display: block;
	padding: 3px 20px;
	text-decoration: none;
}

.show {
	display: block
}

/* Sub dropdown menu */
.categories .drop-down .sub-drop-down {
	position: relative
}

.categories .drop-down .sub-drop-down:hover .sub-dropdown {
	display: block;
}

.categories .drop-down .sub-dropdown {
	position: absolute;
	top: -20px;
	left: 107%;
	list-style: none;
	background-color: #ffffff;
	border: 1px solid #cccccc;
	border-radius: 3px;
	padding: 10px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	display: none;
}

.categories .drop-down .sub-dropdown:before {
	content: "";
	display: block;
	position: absolute;
	top: 20px;
	left: -20px;
	border-top: 10px solid transparent;
	border-left: 10px solid transparent;
	border-bottom: 10px solid transparent;
	border-right: 10px solid #cccccc
}

.categories .drop-down .sub-dropdown>li>a {
	color: #555;
	padding: 5px 0;
	display: block
}
/* End sub dropdown menu */
/* Dark theme */
.dark-nav {
	background-color: #228B22
}

.dark-nav .list>li>a {
	color: #ffB
}

.dark-nav .list>li>a:hover {
	color: red;
}

.dark-nav .list>li.active>a {
	color: #FFF
}

.dark-nav .nav-heading>a {
	color: #EEE
}

.dark-nav .nav-heading .toggle-nav {
	color: #EEE
}

/* End Dark theme */

/* Start media query for navbar */
@media ( max-width : 767px) {
	.nav .container {
		padding-right: 0;
		padding-left: 0;
	}
	.nav .nav-heading {
		width: 100%;
		padding-left: 15px;
		padding-right: 15px;
		border-bottom: 1px solid #ffe7e7
	}
	.nav .nav-heading .brand {
		float: left
	}
	.nav .nav-heading .toggle-nav {
		display: block;
		float: right;
		margin-top: 14px;
	}
	.nav .menu {
		width: 100%;
		padding-left: 15px;
		padding-right: 15px;
		display: none;
	}
	.nav .list {
		float: none;
		width: 100%;
	}
	.nav .list>li {
		float: none;
		width: 100%;
	}
	.nav .list>li>a {
		padding: 12px 0;
		line-height: 1
	}
	.nav .list .categories .drop-down {
		background-color: transparent;
		border: none;
		position: static;
		-webkit-box-shadow: none;
		box-shadow: none;
		padding: 0
	}
	.categories .drop-down .sub-dropdown {
		position: static;
		background-color: transparent;
		border: none;
		-webkit-box-shadow: none;
		box-shadow: none;
		padding-left: 20px;
	}
	.categories .drop-down .sub-dropdown>li>a {
		color: #ff8;
	}
	.categories .drop-down .sub-dropdown:before {
		display: none
	}
	/* Simple reset for dark theme */
	.dark-nav .menu {
		background-color: #ff28ff
	}
	.dark-nav .nav-heading {
		border-bottom-color: #ff343c
	}
	.dark-nav .list .drop-down>li>a {
		color: #AAA
	}
	.dark-nav .list .categories .drop-down .seprator {
		background-color: #2a2d38
	}
}
</style>


<header>
	<!--  Remove dark nav  -->
	<nav class="nav dark-nav">
		<div class="container">
			<div class="nav-heading">
				<button class="toggle-nav" data-toggle="open-navbar1">
					<i class="fa fa-align-right"></i>
				</button>
				<div class="navbar navbar-expand-sm">
					<a class="navbar-brand" href="#"> <img src="resources/images/Capture2.PNG"
						alt="logo" style="width: 50%;">
					</a>
				</div>

			</div>
			<div class="menu" id="open-navbar1">
				<ul class="list">
					<li><a href="index">Home</a></li>

					<li><a href="aboutus">About us</a></li>
					<li><a href="contactus">Contact us</a></li>
					<li><a href="login">Login</a></li>
					<li><a href="register">Register</a></li>
					<li><a href="category">Category</a></li>
					<li><a href="seller">Seller</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>

