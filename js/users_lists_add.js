var options = { 
    type: 'POST',
    url: '/users/p_addlist/',
    success: function(response) {   
        $('#list_item_holder').prepend(response);
    } 
}; 

// Using the above options, ajax'ify the form
$('#add_list_form').ajaxForm(options);

