//Validation for signup
//bootstrap defaults previous values on modal close

var firstname_enabled = false;
var lastname_enabled = false;
var email_enabled = false;
var password_enabled = false;
var email_avail_enabled = false;


	function button_enable () {
		if(firstname_enabled && lastname_enabled && email_enabled && email_avail_enabled && password_enabled) {
			$('#sign_up_button').prop('disabled', false);
		} else {
			$('#sign_up_button').prop('disabled', true);
		}
	}


$(document).ready(function() {

	button_enable();
	$("#firstname_error").hide();
	$("#lastname_error").hide();
	$("#email_error").hide();
	$("#password_error").hide();
	$("#email_error_taken").hide();


//disable signup button until all booleans are true

		//First Name
		$("#user_signup_firstname").focus(function() {
					
			if($(this).val().length == 0) {
				$("#firstname_error").show();
			} 

			$(this).keyup(function() {
				var entry = $(this).val();

				if(entry.length > 0) {
					$("#firstname_error").hide();
					firstname_enabled = true;
					button_enable();
				} else {
					$("#firstname_error").show();
					firstname_enabled = false;
					button_enable();
				}
			});

		});

		//Last Name
		$("#user_signup_lastname").focus(function() {
					
			if($(this).val().length == 0) {
				$("#lastname_error").show();
			} 

			$(this).keyup(function() {
				var entry = $(this).val();

				if(entry.length > 0) {
					$("#lastname_error").hide();
					lastname_enabled = true;
					button_enable();
				} else {
					$("#lasttname_error").show();
					lastname_enabled = false;
					button_enable();
				}
			});

		});

		//Email
		$("#user_signup_email").focus(function() {
			
			if($(this).val().length < 3) {
				$("#email_error").show();
			} 

			$(this).keyup(function() {
				var entry = $(this).val();

				if(entry.length > 2) {
					$("#email_error").hide();

					email_enabled = true;
					button_enable();

					//Email verification on keyup via ajax
					//only make ajax call once email is at least 3 characters
					var user_email = $("#user_signup_email").val();

						if(email_enabled) {
							$.ajax({
					    		type: "POST",
					    		url: '/users/p_emailcheck/',
					    		data: { ajax_email: user_email },
					    		success: function(data) {   
							         if(data=="Exists"){
					                    //alert("email is already taken");
					                    $("#email_error_taken").show();
					                    email_avail_enabled = false;
					                    button_enable();
					                 }else{
					                    //alert("email is available");
					                    $("#email_error_taken").hide();
					                    email_avail_enabled = true;
					                    button_enable();
					                    //button_enable();
					                 }
								} 
					       	});
						}

				} else {
					$("#email_error").show();
					email_enabled = false;
					button_enable();
				}
			});

			//Email availability verification
			//verify_email();



		});

		//Password
		$("#user_signup_password").focus(function() {
					
			if($(this).val().length < 4) {
				$("#password_error").show();
			} 

			$(this).keyup(function() {
				var entry = $(this).val();

				if(entry.length >= 4) {
					$("#password_error").hide();
					password_enabled = true;
					button_enable();
				} else {
					$("#password_error").show();
					password_enabled = false;
					button_enable();
				}
			});

		});

});