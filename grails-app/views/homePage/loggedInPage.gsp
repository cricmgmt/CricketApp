<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Iowa City Falcons</title>	
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<link rel="stylesheet" href="${resource(dir:'css',file:'welcome.css')}" />	
		<style type="text/css">
	/* General styles */
	body { margin: 0; padding: 0; font: 83%/1.5 Arial,Helvetica,sans-serif; color: #111; background-color:#F8EFD3; }
	h2 { margin: 0px; padding: 10px; font-family: Georgia, "Times New Roman", Times, serif; font-size: 210%; font-weight: normal; color: #FFF; background-color: #CCC; border-bottom: #BBB 2px solid; }
	p#copyright { margin: 20px 10px; font-size: 90%; color: #999; }
	
	/* Form styles */
	div.form-container { margin: 10px; padding: 5px; background-color:#F8EFD3; border: #EEE 1px solid; }
	
	p.legend { margin-bottom: 1em; color:blue; font:bold 26px/33px  "Trebuchet MS", Arial, Helvetica, sans-serif; text-align: center;}
	p.test{margin-bottom: 1em; color:red; font:bold 20px/27px  "Trebuchet MS", Arial, Helvetica, sans-serif; text-align: center;}
	p.legend em { color: #C00; font-style: normal; }
	
	div.errors { margin: 0 0 10px 0; padding: 5px 10px; border: #FC6 1px solid; background-color: #FFC; }
	div.errors p { margin: 0; }
	div.errors p em { color: #C00; font-style: normal; font-weight: bold; }
	
	div.form-container form p { margin: 0; }
	div.form-container form p.note { margin-left: 170px; font-size: 90%; color: #333; }
	div.form-container form fieldset { margin: 10px 0; padding: 10px; border: #DDD 1px solid; }
	div.form-container form legend { font-weight: bold; color: #666; }
	div.form-container form fieldset div { padding: 0.25em 0; }
	div.form-container label, 
	div.form-container span.label { margin-right: 10px; padding-right: 10px; width: 150px; display: block; float: left; text-align: right; position: relative; }
	div.form-container label.error, 
	div.form-container span.error { color: #C00; }
	div.form-container label em, 
	div.form-container span.label em { position: absolute; right: 0; font-size: 120%; font-style: normal; color: #C00; }
	div.form-container input.error { border-color: #C00; background-color: #FEF; }
	div.form-container input:focus,
	div.form-container input.error:focus, 
	div.form-container textarea:focus {	background-color: #FFC; border-color: #FC6; }
	div.form-container div.controlset label, 
	div.form-container div.controlset input { display: inline; float: none; }
	div.form-container div.controlset div { margin-left: 170px; }
	div.form-container div.buttonrow { margin-left: 180px; }	
	</style>
</head>
<body>
	<!--header start -->
	<div id="header">
		<a href="#" class="member">members login</a>	
		<ul class="nav">
			<li><g:link controller="homePage" action="homePage" class="home">Home</g:link></li>
			<li><a href="#" title="About us">About Us</a></li>
			<li><a href="#" title="Support">Support</a></li>
			<li><g:link controller="homePage" action="registrationPage">Register</g:link></li>
			<li><a href="#" title="Ideas">Ideas</a></li>
			<li><a href="#" title="Profits">Profits</a></li>
			<li><a href="#" title="Contact">Contact</a></li>
		</ul>
	</div>
	<!--header end -->
	<!--body start -->
	<div id="body">
		<p class="top"></p>
		<div id="tbody">
			<div class="form-container">	
				<p class="legend"><strong>Welcome </strong> ${fullname} !!</p>				
				<g:form controller="homePage" action="addTeam" class="contact">	
				<fieldset>
					<legend>Your Account Details</legend>
						<div><label for="fname">First Name</label> <span id="fname" name="fname">${fname }</span></div>
						<div><label for="lname">Last Name </label> <span id="lname">${lname }</span></div>
						<div><label for="email">E-mail</label> <span id="email">${email}</span></div>
						<div><label for="team">Team</label><span id="team" >${team}</span></div>
						<div><label for="cat">Player Category </label><span id="cat" >${cat}</span></div>
						<div><label for="ulogin">User Login</label><span id="ulogin" >${ulogin}</span></div>
				</fieldset>
				
				<div class="buttonrow">
					<div><g:link controller="homePage", action="homePage" title="Register">Click here for login</g:link></div>
				</div>	
				</g:form>
				</div><!-- /form-container -->
		</div>
		<p class="bot"></p>
		<br class="spacer" />
	</div>
	<!--body end -->
	<!--footer start -->
	<div id="footer">
		<ul>
			<li><g:link controller="homePage" action="homePage" class="hover">Home</g:link>|</li>
			<li><a href="#" title="About Us">About Us</a>|</li>
			<li><a href="#" title="Support">Support</a>|</li>
			<li><g:link controller="homePage" action="registrationPage">Register</g:link></li>
			<li><a href="#" title="Ideas">Ideas</a>|</li>
			<li><a href="#" title="Profits">Profits</a>|</li>
			<li><a href="#" title="Contact">Contact</a></li>
		</ul>
		<p class="copyright">&nbsp; @ Rohit-Sachin. All rights reserved.</p>
		<p class="design">Designed By: Rohit & Sachin</p>
	</div>
	<!--footer end -->
</body>
</html>