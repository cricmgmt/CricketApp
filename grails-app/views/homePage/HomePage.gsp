<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Iowa City Falcons</title>
<link rel="stylesheet" href="${resource(dir:'css',file:'style.css')}" /> 
</head>

<body>
	<!-- top navigation start -->
	<div id="topNav">
		<a href="index.html" title="Iowa City Falcons"><img src="${resource(dir:'images',file:'logo.jpg')}" width="179" height="35" border="0" /></a>
		<ul>

			<li><a href="#" title="Home" class="hover">Home</a></li>
			<li><a href="#" title="About us">About Us</a></li>
			<li><a href="#" title="Support">Support</a></li>
			<li><g:link controller="homePage", action="registrationPage" title="Register">Register</g:link></li>
			<li><a href="#" title="Ideas">Ideas</a></li>
			<li><a href="#" title="Profits">Profits</a></li>

			<li><a href="#" title="Contact">Contact</a></li>
		</ul>
	</div>
	<!-- top navigation end -->
	<!-- body start -->
	<div id="body">
		<!-- top shadow start -->
		<div id="topShadow"></div>

		<!-- top shadow end -->
		<!-- body pannel start -->
		<div id="bodyPannel">
	<!-- code for login form -->
		<g:hasErrors bean="${existingUser}">
            			<div class="errors">
                			<g:renderErrors bean="${existingUser}" as="list" />
            			</div>
        </g:hasErrors>
			<!-- login form start-->
			<g:form controller="homePage" action="login" class="search">			
			  <h2>members <span>area</span></h2>
			  <label>your name</label><input name="username" type="text" id="username" value="${existingUser?.username}" />

			  <label>password</label><input name="password" type="password" id="password" "${existingUser?.password}" />
			  <p>remember my password</p><input name="" type="checkbox" value="" class="check" /><input name="login" type="submit" id="login" value="login" title="Login" class="submit" />
			</g:form>
			<!-- login form end-->
		  <div id="eventLink">
				<h2>events <span>links</span></h2>
				<ul>

					<li><a href="#">Memorial Day Cricket Match. </a></li>
					<li><a href="#">Cedar Rapids Cricket Tournament. </a></li>
					<li><a href="#">Weekend practice and fitness schedule for June 2011.</a></li>
					<li><a href="#">Weekly meeting minutes.</a></li>
				</ul>
			<a href="#" title="read more" class="more">read more</a>

			</div><br class="spacer" />
		  <div id="midle">		  	
			  <h2>Iowa City Falcons - <span>about us</span></h2>
				<p>Iowa City Falcons Team is formed to have some fun time by playing cricket during the weekends in Iowa City & Coralville Area. We are pleased to welcome people who is living in Iowa City & Coralville and is interested to join</p>
				<p>our team. For any questions, please contact us on 111-111-1111.</p>
			<a href="#" title="read more" class="more">read more</a><br class="spacer" />

			</div>
			<div id="colorBg">
				<div id="futurePlans">
					<h2 class="text1">future <span>plans</span> </h2>
					<ul>
						<li><a href="#">Conduct a mini world cup cricket event. Go Falcons!!</a> To particiapte in mini-world cup event held by Iowa City Falcons, each team can register themselves and their players on our website.</li>

					</ul><br class="spacer" />
					<p><a href="#" title="read more" class="more">read more</a> </p>
					<div id="newsLetter">
						<span class="nltop"></span>
						<form method="post" action="#" name="newsletter" class="newsLetter">
						  <h2 class="text2">newsletter <span>signup</span></h2>
						  <label>your email id</label><input name="email" type="text" id="email" />

						  <input name="signup" type="submit" class="submit" id="signup" value="signup" title="Signup" />
						  <br class="spacer" />
						</form><br class="spacer" />
					<span class="nlbottom"></span></div>
				</div>
				<div id="contact">
					<span class="ctop"></span>
						<form method="post" action="#" name="newsletter" class="contact">
						<h2 class="text3">contact <span>form</span></h2>

						<label>your name</label><input name="contactname" type="text" id="contactname" />
						<label>phone no</label><input name="phno" type="text" id="phno" />
						<label>email id</label><input name="contactemail" type="text" id="contactemail" />
						<label>comments</label><textarea name="comments" cols="20" rows="10" id="comments"></textarea>
						<br class="spacer" />
						<input name="submit" type="submit" class="submit" id="submit" value="submit" title="Signup" />

						<input name="reset" type="reset" class="reset" id="reset" value="reset" title="Reset" />
					</form><br class="spacer" />
					<span class="cbottom"></span>
				</div>
			</div>
		</div>
		<!-- body pannel end -->
		<!-- top shadow start -->		
		<div id="bottomShadow"></div><br class="spacer" />

		<!-- bottom shadow end -->
	</div>
	<!-- body end -->
	<!-- footer start -->
	<div id="footer">		
		<ul>

			<li><a href="#" title="Home" class="hover">Home</a>|</li>
			<li><a href="#" title="About Us">About Us</a>|</li>
			<li><a href="#" title="Support">Support</a>|</li>
			<li><g:link controller="homePage", action="registrationPage" title="Register">Register</g:link></li>
			<li><a href="#" title="Ideas">Ideas</a>|</li>
			<li><a href="#" title="Profits">Profits</a>|</li>
			<li><a href="#" title="Contact">Contact</a></li>
		</ul><br class="spacer" />
		<p>@ Rohit-Sachin. All rights reserved.</p><br class="spacer" />
	  <p class="tworld">Designed By : Rohit & Sachin</a></p>
	</div>

	<!-- footer end -->	
</body>
</html>
