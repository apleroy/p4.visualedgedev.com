   <div class="navigation"> 
              <div class = "logo">LIST GENERATOR</div>
              
                  <div class = "navigation_links">
                      <form id="login_form" method='POST' action='/users/p_login'>
                        Email<input type='text' name='email'>
                        Password<input type='password' name='password'>
                        <input type='submit' id="submit" value='Log In'>

                        <?php if(isset($error)): ?>
                          <div class='error'>
                              Login failed. Please double check your email and password.
                          </div>
                          <br>
                        <?php endif; ?>
                      </form>
                  </div>
            </div>
  <div class="container">


<div id="signup_form_div">

	<!--Signup Form -->
	<form id="signup_form" method='POST' action='/users/p_signup'>
		First Name<br>
		<input type='text' name='first_name'><br>
		<br>
		Last Name<br>
		<input type='text' name='last_name'><br>
		<br>
		Email<br>
		<input type='text' name='email'><br>
		<br>
		Password<br>
		<input type='password' name='password'><br>
		<br>
		<input type='submit' value='Sign Up'>
		<input type='hidden' name='timezone'>
			 
	
		<?php if(isset($signup_error)): ?>
			<div class = 'error'>
				Please complete all fields.
			</div>
		<?php elseif(isset($duplicate_error)): ?>
			<div class = 'error'>
				This email address is already in use.  Please login or provide a new email address.
			</div>
		<?php elseif(isset($invalid_error)): ?>
			<div class = 'error'>
				This is not a valid email address.
			</div>
		<?php endif; ?>

	</form>

</div>

</div>