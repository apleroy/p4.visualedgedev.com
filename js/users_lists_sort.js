jQuery(document).ready(function(){  
    jQuery(function() {
        var path = "/users/p_sortlist/"; 
        jQuery("#list_item_holder").sortable({ opacity: 0.6, cursor: 'move', update: function() { 
            var order = jQuery(this).sortable("serialize") + '&#038;action=updateDbSortRecord'; 
            jQuery.post("UpdateDB", order, function(theResponse){ 
                jQuery("#list_item_holder").html(theResponse); });  
            }  
        }); 
    }); 
});