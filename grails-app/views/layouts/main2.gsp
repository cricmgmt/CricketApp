<html>
    <head>
    	<title><g:layoutTitle default="CricketApp" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'style.css')}" />  
        <g:layoutHead />       
    </head>
    <body>
	<!-- top navigation start -->
	<div id="topNav">
		<a href="index.html" title="Iowa City Falcons"><img src="${resource(dir:'images',file:'logo.jpg')}" width="179" height="35" border="0" /></a>
		<ul>
			<li><g:link controller="homePage" action="homePage" class="hover">Home</g:link></li>
			<li><a href="#" title="About us">About Us</a></li>
			<li><a href="#" title="Support">Support</a></li>
			<li><g:link controller="homePage" action="registrationPage">Register</g:link></li>
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
			<g:layoutBody />
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
			<li><g:link controller="homePage" action="homePage" class="hover">Home</g:link>|</li>
			<li><a href="#" title="About Us">About Us</a>|</li>
			<li><a href="#" title="Support">Support</a>|</li>
			<li><g:link controller="homePage" action="registrationPage">Register</g:link></li>
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