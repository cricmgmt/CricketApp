<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Iowa City Falcons</title>
	<meta name="layout" content="main2" />
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<style type="text/css">
	/* General styles */
	body { margin: 0; padding: 0; font: 83%/1.5 Arial,Helvetica,sans-serif; color: #111; background-color: #FFF; }
	h2 { margin: 0px; padding: 10px; font-family: Georgia, "Times New Roman", Times, serif; font-size: 210%; font-weight: normal; color: #FFF; background-color: #CCC; border-bottom: #BBB 2px solid; }
	p#copyright { margin: 20px 10px; font-size: 90%; color: #999; }
	
	/* Form styles */
	div.form-container { margin: 10px; padding: 5px; background-color: #FFF; border: #EEE 1px solid; }
	
	p.legend { margin-bottom: 1em; }
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
	<div class="form-container">
	<g:hasErrors bean="${playerInstance}">
		<div class="errors">
			<g:renderErrors bean="${playerInstance}" as="list" />
		</div>
	</g:hasErrors>	
	<g:form controller="homePage" action="save" class="contact">	
	<p class="legend"><strong>Note:</strong> Required fields are marked with an asterisk (<em>*</em>)</p>	
	<fieldset>
		<legend>Player Details</legend>
			<div><label for="uname">Username <em>*</em></label> <input id="uname" type="text" name="uname" value="${playerInstance?.username}"  /></div>
			<div><label for="pwd">Password <em>*</em></label> <input id="pwd" type="password" name="pwd" value="${playerInstance?.password}"  /></div>
			<div><label for="cpwd">Confirm Password <em>*</em></label> <input id="cpwd" type="password" name="cpwd" value=""  /></div>
			<div><label for="email">Email Address <em>*</em></label> <input id="email" type="text" name="email" value="${playerInstance?.email}" />
				<p class="note">Iowa City Falcons will never sell or disclose your email address to anyone.</p>
			</div>
			<div><label for="fname">First Name <em>*</em></label> <input id="fname" type="text" name="fname" value="${playerInstance?.firstname}" size="50" /></div>
			<div><label for="lname">Last Name <em>*</em></label> <input id="lname" type="text" name="lname" value="${playerInstance?.lastname}" size="50" /></div>
	</fieldset>
	
	<fieldset>
		<legend>Contact Information</legend>
			<div><label for="address1">Address 1 <em>*</em></label> <input id="address1" type="text" name="adr" size="50" value="${playerInstance?.address}"/></div>
			<div><label for="address2">Address 2</label> <input id="address2" type="text" size="50" /></div>
			<div><label for="state" >State <em>*</em></label> <input id="state" type="text" name="state" value="${playerInstance?.state}"  size="12" />	</div>
			<div><label for="city" >City <em>*</em></label> <input id="city" type="text" name="city" value="${playerInstance?.city}"  size="12" />	</div>
			<div><label for="telephone">Telephone</label> <input id="telephone" type="text" name="cno" size="10" value="${playerInstance?.contactNo}" />
				<p class="note"> Example 1234567890 No Hyphens</p>
			</div>
	</fieldset>	
	
	<fieldset>
		<legend>Player Profile</legend>			
			<div>
				<label for="type">Player Category </label>	
				<g:select name="category" from="${['Batsman', 'Bowler', 'Wicket Keeper', 'All Rounder']}" value="${playerInstance?.category}" noSelection="['':'Please Select...']"/>			
			</div>
			<div>
				<label for="type">Select Team </label>				
				<g:select id="teamSelection" name="teamnames" from="${teams}" value="" noSelection="['':'Please Select...']"></g:select>
				<g:link controller="homePage", action="createTeam">OR register your team here</g:link>
				 			
			</div>		
			<div>
				<label for="info">Additional Info </label>
				<textarea id="info" name="info" cols="40" rows="5"></textarea>
			</div>			
	</fieldset>	
	
	<div class="buttonrow">
		<input type="submit" value="Submit" class="button" />

		<input type="button" value="Discard" class="button" />
	</div>

	</g:form>
	
	</div><!-- /form-container -->
</body>
</html>

