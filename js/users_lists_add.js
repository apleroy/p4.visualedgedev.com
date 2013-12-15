var options = { 
    type: 'POST',
    url: '/users/lists/p_add/',
    beforeSubmit: function() {
        $('#list_item_holder').html("Adding...");
    },
    success: function(response) {   
        $('#list_item_holder').html(response);
    } 
}; 

// Using the above options, ajax'ify the form
$('#add_list_form').ajaxForm(options);