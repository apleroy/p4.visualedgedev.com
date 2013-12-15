//Global variables

	var edit_clicked = false; //boolean flag
	var current_div = '';
	var header_content = '';
	var body_content = '';
	var add_item_title_enabled; //boolean flag
	var add_item_text_enabled;	//boolean flag
	var counter = 0; //counts addition and deletion of new items (controls placeholder default text)


//Main

$(document).ready(function() {

					

	//DRAG AND DROP
	
	    $( "#list_item_holder" ).sortable();
	    $( "#list_item_holder" ).disableSelection();
	
	//MODAL
	
	    $( "#dialog-modal" ).dialog({
	      height: 140,
	      modal: true
	    });
	
	       
		//When selecting the close button or clicking outside the modal, reset variables

			$("#myModal").on("hidden.bs.modal", function() {

				$("#list_title").val('');
				$("#list_text_entry").val('');
				$("#add_item").html("Add Item");
				$("#myModalLabel").html("New List Item");
				
				edit_clicked = false;
				add_item_title_enabled = false;
				add_item_text_enabled = false;

				$("#title_error").show();
				$("#body_error").show();
			});


	//MODAL VALIDATION

		//Modal Title Validation
		$("#list_title").focus(function() {
			
			if($(this).val().length == 0) {
				$("#title_error").show();
			} 

			$(this).keyup(function() {
				var entry = $(this).val();

				if(entry.length > 0) {
					$("#title_error").hide();
					add_item_title_enabled = true;
				} else {
					$("#title_error").show();
					add_item_title_enabled = false;
				}
			})

		});

		//Modal Body Text Validation
		// $("#list_text_entry").focus(function() {
			
		// 	if($(this).val().length == 0) {
		// 		$("#body_error").show();
		// 		//add_item_text_enabled = false;
		// 	} 

		// 	$(this).keyup(function() {
		// 		var entry = $(this).val();

		// 		if(entry.length > 0) {
		// 			$("#body_error").hide();
		// 			add_item_text_enabled = true;
		// 		} else {
		// 			$("#body_error").show();
		// 			add_item_text_enabled = false;
		// 		}
		// 	})

			
		// });

		
		//ADD NEW ITEM
		
		$("#add_item").click(function() {
			
			//Button click will only function if validation has passed for both text input fields
			if(add_item_title_enabled ) { //&& add_item_text_enabled
				
				//If the edit button of a list item was just selected
				if(edit_clicked == true) {
					
					//Make the modal content that of the existing element
					var new_title_entered = $('#list_title').val();
						
					var new_text_entered = $('#list_text_entry').val();
					
					var new_bg_color = $(".modal-header").css("background-color");
					
					//Make changes to existing element on close					
					$(current_div).css("background-color", new_bg_color);
					
					$(current_header).html(new_title_entered);
					
					$(current_body).html(new_text_entered);

					//Reset Variables after close
					$("#myModal").modal('hide');
					$("#list_title").val('');
					$("#list_text_entry").val('');

					$("#add_item").html("Add Item");
					$("#myModalLabel").html("New List Item");
					edit_clicked = false;
					add_item_title_enabled = false;
					add_item_text_enabled = false;

					$("#title_error").show();
					$("#body_error").show();

					
				//If the add item button was clicked after launching a new ite,
				} else {

					//get the validated input fields text and css color
					var title_entered = $('#list_title').val();
						
					var text_entered = $('#list_text_entry').val();

					var bg_color = $(".modal-header").css("background-color");

					//create a new div element and child divs
					// $("#list_item_holder").prepend("<div class='.col-md-12' id='new'></div>");

					// $("#new").append("<div class='list_item_header' id='new_header'></div>");
					// 	$("#new_header").html(title_entered);

					// $("#new").append("<div class='list_item_body' id='new_body'>text</div>");
					// 	$("#new_body").html(text_entered);
					
					// $("#new").append("<button type='button' class='btn btn-sm' data-toggle='modal' data-target='#myModal' id='new_edit_button'></div>");
					// 	$("#new_edit_button").html("Edit");

					// $("#new").append("<button type='button' class='btn btn-sm' id='new_delete_button'></div>");
					// 	$("#new_delete_button").html("Delete");

					// $("#new").css("background-color", bg_color);
					
					//reset variables on close of modal
					$("#myModal").modal('hide');
					$("#list_title").val('');
					$("#list_text_entry").val('');

					add_item_title_enabled = false;
					add_item_text_enabled = false;
					
					$("#title_error").show();
					$("#body_error").show();

					//increase counter on addition (to track default empty content)
					counter++;
						
						if( counter == 0 ) {
							$("#empty_placeholder").show();
						} else {
							$("#empty_placeholder").hide();
						}
				}

			}
		});
	
		



	
	

	//EDIT ITEM

		
		$( "#list_item_holder" ).on( "click", "#new_edit_button", function() {
		  	
		  	//Boolean flag to signal the edit has been clicked
			edit_clicked = true;
			add_item_title_enabled = true;
			add_item_text_enabled = true;
			
			//Change the default settings to "edit"
			$("#add_item").html("Edit");
			$("#myModalLabel").html("Edit Item");

			//Hide the default error div
			$("#title_error").hide();
			$("#body_error").hide();
			
			//Get the current css bg color to place in modal
			var parent_bg_color = $(this).parent().css("background-color");
			$(".modal-header").css("background-color", parent_bg_color);

			//Get the current header content and place into modal
			header_content = $(this).prev().prev().html();
			$("#list_title").val(header_content);
			
			//Get and place current body content into modal
			body_content = $(this).prev().html();
			$("#list_text_entry").val(body_content);

			//Make the div with the edit button selected unique 
			//by assigning the div and elements to unique based on time
			var unique = new Date().getTime();
				current_div = $(this).parent().attr('id', 'new_holder' + unique);
				current_body = $(this).prev().attr('id', 'new_body' + unique);
				current_header = $(this).prev().prev().attr('id', 'new_header' + unique);
		  	

		});

	
	//Modify CSS BG for MODAL
	
		$(".btn-primary").click(function(){
			$(".modal-header").css("background-color", $(this).css("background-color"));
		})



            // bind 'myForm' and provide a simple callback function 
            $('#myForm').ajaxForm(function() { 
                alert("Thank you for your comment!"); 
            }); 
         

});
