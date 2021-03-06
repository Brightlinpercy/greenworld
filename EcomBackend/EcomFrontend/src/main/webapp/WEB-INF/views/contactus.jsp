<style>




.container .map {
	width: 45%;
	float: left;
}

.container .contact-form {
	width: 53%;
	margin-left: 2%;
	float: left;
}

.container .contact-form .title {
	font-size: 2.5em;
	font-family: "Roboto", sans-serif;
	font-weight: 700;
	color: #242424;
	margin: 5% 8%;
}

.container .contact-form .subtitle {
	font-size: 1.2em;
	font-weight: 400;
	margin: 0 4% 5% 8%;
}

.container .contact-form input, .container .contact-form textarea {
	width: 330px;
	padding: 3%;
	margin: 2% 8%;
	color: #242424;
	border: 1px solid #B7B7B7;
}

.container .contact-form input::placeholder, .container .contact-form textarea::placeholder
	{
	color: #242424;
}

.container .contact-form .btn-send {
	background: #4CAF50;
	width: 180px;
	height: 60px;
	color: #FFFFFF;
	font-weight: 700;
	margin: 2% 8%;
	border: none;
}
</style>
<title>Contact Us</title>

<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto');
</style>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d112061.09262729759!2d77.208022!3d28.632485!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x644e33bc3def0667!2sIndior+Tours+Pvt+Ltd.!5e0!3m2!1sen!2sus!4v1527779731123"
			width="100%" height="650px" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
	</div>
	<div class="contact-form">
		<h1 class="title">Contact Us</h1>
		<h2 class="subtitle">We are here to assist you.</h2>
		<form action="">
			<input type="text" name="name" placeholder="Your Name" /> <input
				type="email" name="e-mail" placeholder="Your E-mail Adress" /> <input
				type="tel" name="phone" placeholder="Your Phone Number" />
			<textarea name="text" id="" rows="8" placeholder="Your Message"></textarea>
			<button class="btn-send">Get a Call Back</button>
		</form>
	</div>
</div>


