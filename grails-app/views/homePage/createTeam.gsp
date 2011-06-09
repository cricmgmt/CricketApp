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
	
	p.legend { margin-bottom: 1em; color:red }
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
	<g:hasErrors bean="${teamInstance}">
		<div class="errors">
			<g:renderErrors bean="${teamInstance}" as="list" />
		</div>
	</g:hasErrors>	
	<g:form controller="homePage" action="addTeam" class="contact">	
	<p class="legend"><strong>Note:</strong> All fields are required to register a team</p>	
	<fieldset>
		<legend>Team Details</legend>
			<div><label for="tname">Team Name </label> <input id="tname" type="text" name="tname" value="${teamInstance?.teamName}"  /></div>
			<div><label for="tstate">State </label> <input id="tstate" type="text" name="tstate" value="${teamInstance?.city}"  /></div>
			<div><label for="tcity">City</label> <input id="tcity" type="text" name="tcity" value="${teamInstance?.state}"  /></div>
			<div><label for="tdate">Team Formation Date</label><g:datePicker name="tdate" value="${teamInstance?.dateCreated}" precision="day" tabindex="4"/></div>
	</fieldset>
	
	<div class="buttonrow">
		<input type="submit" value="Submit" class="button" />

		<input type="button" value="Discard" class="button" />
	</div>

	</g:form>
	
	</div><!-- /form-container -->
</body>
</html>