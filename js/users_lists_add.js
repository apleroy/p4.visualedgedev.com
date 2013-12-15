var options = { 
    type: 'POST',
    url: '/users/p_addlist/',
    success: function(response) {   
        $('#ajax_result').prepend(response);
    } 
}; 

// Using the above options, ajax'ify the form
$('#add_list_form').ajaxForm(options);

