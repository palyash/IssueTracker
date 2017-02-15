<form action="/login/authenticate" method="POST" id="loginForm" class="cssform" autocomplete="off">
			<p>
				<label for="username">Username:</label>
				<input type="text" class="text_" name="username" id="username"/>
			</p>

			<p>
				<label for="password">Password:</label>
				<input type="password" class="text_" name="password" id="password"/>
			</p>

			<p id="remember_me_holder">
				<input type="checkbox" class="chk" name="remember-me" id="remember_me" />
				<label for="remember_me">Remember me</label>
			</p>

			<p>
				<input type="submit" id="submit" value="Login"/>
			</p>
		</form>
		<oauth:connect provider="facebook" id="facebook-connect-link">Connect to Facebook</oauth:connect>