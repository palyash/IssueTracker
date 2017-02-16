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
<br>
<g:if test='${params.errorMsg}'>
<div class="alert alert-danger">${params.errorMsg}</div>
</g:if>
<form action='saveUser' method="POST" id="loginForm" class="cssform" autocomplete="off">
			<p>
				<label for="username">Username:</label>
				<input type="text" class="text_" name="username" id="username"/>
			</p>

			<p>
				<label for="password">Password:</label>
				<input type="password" class="text_" name="password" id="password"/>
			</p>

			<p>
				<input type="submit" id="submit" value="Login"/>
			</p>
		</form>