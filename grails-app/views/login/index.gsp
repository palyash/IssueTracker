<!DOCTYPE html>
<html lang="en">
<head>
  <title>Issue Tracker</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{ background-color:rgb(255, 255, 204);}
header{
    
    padding: 1em;
    color: white;
    background-color: rgb(102, 51, 0);
    clear: left;
    text-align: center;
   
}
article{
    margin-left: 170px;

    padding: 1em;
    overflow: hidden;
}
</style>
</head>
<body>
<div class="container">
  <header><h1>ISSUE TRACKER</h1></header>
<div class="panel-body">
<article>
<form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
			<p>
				<label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
				<input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
			</p>

			<p>
				<label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
				<input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
			</p>

			<p id="remember_me_holder">
				<input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
				<label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
			</p>

			<p>
				<input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
			</p>
</form>
<oauth:connect provider="facebook" id="facebook-connect-link"><button type="button" class="btn btn-primary">Login with Facebook</button></oauth:connect>
  </article>
</div>
</div>

</body>
</html>
