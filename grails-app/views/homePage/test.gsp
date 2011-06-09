<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main2" />		
		<script type="text/javascript">
  			var rpxJsHost = (("https:" == document.location.protocol) ? "https://" : "http://static.");
  			document.write(unescape("%3Cscript src='" + rpxJsHost +
			"rpxnow.com/js/lib/rpx.js' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<script type="text/javascript">
  			RPXNOW.overlay = true;
  			RPXNOW.language_preference = 'en';
		</script>

		<script type="text/javascript">
			function makeUpper(val) {
				val.value = val.value.toUpperCase().trim();
			}
		</script>
	</head>
	<body>		
		<table id="main" border="0" cellpadding="0" cellspacing="0">
		<tbody>
			<td valign="top" id="center"></td>
			<td valign="top" id="center" style="padding-left:10px;padding-right:10px;">
			<h3 style="padding-top:10px;padding-bottom:15px;">Your ACT Web Account</h3>
			<table border="0" cellpadding="25" cellspacing="0" width="755" style="margin-bottom:15px; margin-right:15px;">
				<tbody>
					<tr valign="top">
					<td width="50%" style="background:#FAFAFA; border:1px solid #DDD;">
						<h3 style="font-size:15px; text-align:left;padding:0;margin:0;">Login or Signup</h3>
						<p style="font-size:13px; text-align:left;padding:0;margin:0; margin-bottom:12px;">Using your existing account with:</p><br/>
						<g:if env="production">
						<!-- 	<a class="rpxnow" onclick="return false;" href="https://ictestdeveloper.rpxnow.com/openid/v2/signin?token_url=http%3A%2F%2F172.16.148.137%2Fprototype%2FloginPage%2FloginReturn"> Sign In </a> -->
							<a class="rpxnow" onclick="return false;" href="https://ictestdeveloper.rpxnow.com/openid/v2/signin?token_url=http%3A%2F%2Flocalhost%2Fprototype%2FloginPage%2FloginReturn"> Sign In </a> 
						</g:if>
						<g:if env="development">
						<!-- 	<a class="rpxnow" onclick="return false;" href="https://ictestlogin.rpxnow.com/openid/v2/signin?token_url=http%3A%2F%2Flocalhost%3A9090%2Fprototype%2FloginPage%2FloginReturn"> Sign In </a> -->
							<a class="rpxnow" onclick="return false;" href="https://ictestdeveloper.rpxnow.com/openid/v2/signin?token_url=http%3A%2F%2F172.16.158.50%3A8088%2Fprototype%2FloginPage%2FloginReturn"> Sign In </a>     
						</g:if>						
					</td>
					<td width="80%" style="background:#FAFAFA; border:1px solid #DDD;">
					<h3 style="font-size:15px; text-align:left;padding:0 0 13px 0;margin:0;">Login using your existing ACT account</h3>
					<div id="loginFormContainer">
					<span id="feedback"/>
					<g:hasErrors bean="${existingUser}">
            			<div class="errors">
                			<g:renderErrors bean="${existingUser}" as="list" />
            			</div>
            		</g:hasErrors>
					<g:form controller="loginPage" action="login">
						<table border="0">
						<tbody>
							<tr><td align="left"><label style="font-weight:normal;" for="username">Username or Email</label></td></tr>
							<tr>
								<td><input type="text" name="username" id="username" size="20" maxlength="20" value="${existingUser?.username}" onchange="makeUpper(this);">
									&nbsp;<span class="small" style="font-weight:normal;"><a href="actibeCAcdUidAssist.jsp" tabindex="7">Forgot User ID?</a></span>
								</td>
							</tr>
							<tr><td  align="left"><label style="font-weight:normal;" for="password">Password</label></td></tr>
								<tr>
									<td><input type="password" name="password" id="password" "${existingUser?.password}" size="20" maxlength="20" >
									&nbsp;<span style="font-weight:normal;" class="small"><a href="actibeCAcdPwdAssist.jsp">Forgot password?</a></span>
									</td>
								</tr><br/>
								<tr><td><input type="submit" id="loginButton" value="Login"></td></tr>
								<tr><td><br/></td></tr>
								<tr><td><label style="font-weight:normal;" for="signup">Want a ACT account?</label></td></tr>
								<tr><td align="left"><g:link controller="loginPage" action="createACTAccount">Sign up</g:link></td></tr>
						</tbody>
						</table>
					</g:form>
					</div>
					</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tbody>
		</table>		
		
	</body>
</html>