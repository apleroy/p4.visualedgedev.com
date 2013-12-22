<div class="container">
	<?php if(isset($error)): ?>
      <div id='error'>
        Login failed. Please double check your email and password.
      </div>
      <br>
    <?php endif; ?>

    <br>

	<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg btn-success" data-toggle="modal" data-target="#signup_modal" id="get_started_button">
		  Get Started
		</button>
		
		<br><br>
		
		<img src='/todolist.jpg' alt="to do list" width="100%" height="80%">
		
		<br><br>

		<!-- Modal -->
		<div class="modal fade" id="signup_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <div class="modal-header" id="signup_form_header">
		        <p class="lead">Add, edit, style, and save tasks to create a working open items list, to-do list, or brief agenda.</p>
		      </div>
		      
		      
		        	<form role="form" id="signup_form" method='POST' action='/users/p_signup'>

						<div class="form-group">
						    <input type="text" class="form-control" id="user_signup_firstname" placeholder="First Name" name='first_name'>
						    <div class="user_signup_error" id="firstname_error">Please enter at least one character</div>
						 	
						    <input type="text" class="form-control" id="user_signup_lastname" placeholder="Last Name" name='last_name'>
						    <div class="user_signup_error" id="lastname_error">Please enter at least one character</div>
													 
						    <input type="email" class="form-control" id="user_signup_email" placeholder="Email" name='email'>
						    <div class="user_signup_error" id="email_error">Please enter a valid email</div>
						    <div class="user_signup_error" id="email_error_taken">This email is already in use</div>
						
						    <input type="password" class="form-control" id="user_signup_password" placeholder="Password" name='password'>
						    <div class="user_signup_error" id="password_error">Please enter at least four characters</div>
						  
						</div>
					  
					  	<button type="submit" class="btn btn-success" id="sign_up_button">Sign Up</button>
					
					</form>

		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->

</div>