//DELETE ITEM
    
        //Get to the parent and delete it and all children
        $( "#list_item_holder" ).on( "click", "#new_delete_button", function() {

            $.ajax({
                type: 'POST',
                url: '/users/p_deletelist/',
                success: function(response) {   
                    $(this).parent().remove();
                }               
            }); // end ajax setup

        }); 


