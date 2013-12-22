//Global variables

	var edit_clicked; //boolean flag
	var current_div = '';
	var header_content = '';
	
	var element ='';
	var element_id = ''; //get the id off the page
	var text_entered = ''; //get text off page

	var add_item_title_enabled; //boolean flag
	var add_item_text_enabled;	//boolean flag
	var counter = 0; //counts addition and deletion of new items (controls placeholder default text)



	function edit(el_id, new_text) {

		$.ajax({
		    type: "POST",
		    url: '/users/p_editlist/',
		    data: { id: el_id, text: new_text },
		    success: function(data){
                 if(data=="YES"){
                    //alert(new_text);
                    //element.child().html(new_text);
                 }else{
                    alert("NOT EDITED");
                 }
             }
        });
	}

	function reorder() {

		var ser = $('#list_item_holder').sortable('serialize');
		//$('#TEST').append(ser);

		$.ajax({
			type: "POST",
			url: '/test/p_sortlist/',
			data: { test: ser }
		});
	}

//Main

$(document).ready(function() {

					

	//DRAG AND DROP
	
	    $( "#list_item_holder" ).sortable({
	    	cursor: 'move',
	    	axis: 'y',
	    	update: function() {
	    		var ser = $(this).sortable('serialize');
	    		//$('#TEST').append(ser);

	    		$.ajax({
	    			type: "POST",
	    			url: '/test/p_sortlist/',
	    			data: { test: ser }
	    		});

	    	}

		});


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
				$("#add_list").html("Add Item");
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

				
		//ADD & EDIT ITEM
		
		$("#add_list").click(function() {
			
	   		text_entered = $('#list_title').val();
	   		//Button click will only function if validation has passed for both text input fields
		 	if(add_item_title_enabled ) { //&& add_item_text_enabled
				
		 		//If the edit button of a list item was just selected
		 		
		 		if(edit_clicked == true) {
					
					
					edit(element_id, text_entered);
					element.children().first().html(text_entered);//child().html(new_text);

					//reset variables on close of modal
					$("#myModal").modal('hide');
					

							
				} else {
		
					$.ajax({
			    		type: "POST",
			    		url: '/users/p_addlist/',
			    		data: { title: text_entered },
			    		success: function(data) {   
					         $('#list_item_holder').prepend(data);
					    } 
			       	});

	    		$("#myModal").modal('hide');



				}
			}

			reorder();
		});
		



	//DELETE ITEM
	
		//Get to the parent and delete it and all children
		$( "#list_item_holder" ).on( "click", "#new_delete_button", function() {
		  
		  	element = $(this).parent();
		  	element_id= $(this).parent().attr("id");
		  	
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

		  	reorder();
					  	
		});	
	

	//EDIT ITEM

		
		$( "#list_item_holder" ).on( "click", "#new_edit_button", function() {
		  	
			element = $(this).parent();
			element_id= $(this).parent().attr("id");
		  	//var element_id= $(this).parent().attr("id");

			edit_clicked = true;
			add_item_title_enabled = true;

			$("#add_list").val("Edit");
			$("#myModalLabel").html("Edit List");
				
			$("#title_error").hide();

			var parent_bg_color = $(this).parent().css("background-color");
			$(".modal-header").css("background-color", parent_bg_color);

			header_content = $(this).prev().html();
			$("#list_title").val(header_content);

			var changed_title = $(this).prev().text();
			  	
			  	

		});



		
	
	//Modify CSS BG for MODAL
	
		//$(".btn-primary").click(function(){
		//	$(".modal-header").css("background-color", $(this).css("background-color"));
		//})




});
