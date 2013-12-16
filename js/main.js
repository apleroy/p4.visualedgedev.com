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
				$("#myModalLabel").html("New List");
				
				edit_clicked = false;
				add_item_title_enabled = false;
				//add_item_text_enabled = false;

				$("#title_error").show();
				//$("#body_error").show();
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

				
		//EDIT ITEM
		
		// $("#add_item").click(function() {
			
		// 	//Button click will only function if validation has passed for both text input fields
		// 	if(add_item_title_enabled ) { //&& add_item_text_enabled
				
		// 		//If the edit button of a list item was just selected
		// 		if(edit_clicked == true) {
					
		// 			//Make the modal content that of the existing element
		// 			var new_title_entered = $('#list_title').val();
		// 			var new_bg_color = $(".modal-header").css("background-color");
					
		// 			//Make changes to existing element on close					
		// 			$(current_div).css("background-color", new_bg_color);
		// 			$(current_header).html(new_title_entered);
					
		// 			//Reset Variables after close
		// 			$("#myModal").modal('hide');
		// 			$("#list_title").val('');
		// 			//$("#list_text_entry").val('');

		// 			$("#add_item").html("Add Item");
		// 			$("#myModalLabel").html("New List Item");
		// 			edit_clicked = false;
		// 			add_item_title_enabled = false;
					
		// 			$("#title_error").show();
					
					
		// 		//If the add item button was clicked after launching a new item,
		// 		} else {

		// 			//get the validated input fields text and css color
		// 			var title_entered = $('#list_title').val();
						
		// 			var text_entered = $('#list_text_entry').val();

		// 			var bg_color = $(".modal-header").css("background-color");

						
		// 			//reset variables on close of modal
		// 			$("#myModal").modal('hide');
		// 			$("#list_title").val('');
					
		// 			add_item_title_enabled = false;
										
		// 			$("#title_error").show();
					
		// 			//increase counter on addition (to track default empty content)
					
		// 		}

		// 	}
		// });
	
		



	//DELETE ITEM
	
		//Get to the parent and delete it and all children
		$( "#list_item_holder" ).on( "click", "#new_delete_button", function() {
		  
		  	var element = $(this).parent();
		  	var element_id= $(this).parent().attr("id");
		  	
		  	$.ajax({
			    type: "POST",
			    url: '/users/p_deletelist/',
			    data: { id: element_id },
			    success: function(data){
	                 if(data=="YES"){
	                    element.remove();
	                 }else{
	                    alert("can't delete the row")
	                 }
	             }

	        });

			// request.done(function( msg ) {
			//   $( "#list_item_holder" ).html( element_id );
			// });
		  	
		});	
	

	//EDIT ITEM

		
		$( "#list_item_holder" ).on( "click", "#new_edit_button", function() {
		  	
			edit_clicked = true;
			add_item_title_enabled = true;

			$("#add_item").html("Edit");
			$("#myModalLabel").html("Edit List");
				
			$("#title_error").hide();

			var parent_bg_color = $(this).parent().css("background-color");
			$(".modal-header").css("background-color", parent_bg_color);

			header_content = $(this).prev().html();
			$("#list_title").val(header_content);

				var changed_title = $(this).prev().text();
			  	var element_id= $(this).parent().attr("id");
			  	
			  	alert(changed_title);
			  	// $.ajax({
				  //   type: "POST",
				  //   url: '/users/p_editlist/',
				  //   data: { id: element_id, text: changed_title },
				  //   success: function(data){
		    //              if(data=="YES"){
		    //                 element.remove();
		    //              }else{
		    //                 alert("can't delete the row")
		    //              }
		    //          }

		});



		 //  	//Boolean flag to signal the edit has been clicked
			
			// //add_item_text_enabled = true;
			
			// //Change the default settings to "edit"
			

			// //Hide the default error div
			
			// //$("#body_error").hide();
			
			// //Get the current css bg color to place in modal
			

			// //Get the current header content and place into modal
			
			
			// //Get and place current body content into modal
			// body_content = $(this).prev().html();
			// $("#list_text_entry").val(body_content);

			// //Make the div with the edit button selected unique 
			// //by assigning the div and elements to unique based on time
			// var unique = new Date().getTime();
			// 	current_div = $(this).parent().attr('id', 'new_holder' + unique);
			// 	current_body = $(this).prev().attr('id', 'new_body' + unique);
			// 	current_header = $(this).prev().prev().attr('id', 'new_header' + unique);
		  	

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
