<div class="container">
<br>
	     
    <p class="lead">Add, edit, sort, and save tasks to create a working open items list, to-do list, or brief agenda.</p>
    
	<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" id="main_add" data-toggle="modal" data-target="#myModal">
			Add New Task
		</button>

		<!-- Modal -->
	
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					      
					<!--Modal HEADER -->
					<div class="modal-header" id="task_modal_header">
						<h4 class="modal-title" id="myModalLabel">New Task</h4>
			        </div>
						      
					<!--Modal BODY -->
					<div class="modal-body">
						      	
						<div class="input_holder">	
							<input type="text" placeholder="List Title" name="list_title_entry" id="list_title" >
							<div class="input_error" id="title_error">Please enter at least one character.</div><!--  --> 
						</div>
						<br>

					</div>
						      

					<!--Modal FOOTER -->
				    <div class="modal-footer">
				      		
				      	<button type="button" class="btn btn-default" id="close_item" data-dismiss="modal">Close</button>
				        <input type='submit' value='Add Task' button type="button" class="btn btn-primary" id="add_list"></button>

				    </div>

				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	
		
	<div id="list_item_holder">

	    <?php foreach ($lists as $list): ?>

	        <div class="<?=$list['color']?> .col-md-12" id="list_<?=$list['list_id']?>">


	            <div class='list_item_header' id='new_header'><?=$list['list_title_entry']?></div>
	                
	            <button type='button' class='btn btn-sm' data-toggle='modal' data-target='#myModal' id='new_edit_button'>Edit</button>
	            
	            <button type='button' class='btn btn-sm' id='new_delete_button'>Delete</button>

	            <button type='button' class='btn btn-sm color' id='red'></button>

   				<button type='button' class='btn btn-sm color' id='orange'></button>

   				<button type='button' class='btn btn-sm color' id='green'></button>

   				<button type='button' class='btn btn-sm color' id='blue'></button>

   				<button type='button' class='btn btn-sm color' id='purple'></button>

   				<button type='button' class='btn btn-sm color' id='gray'></button>


	           <!--  <button type='button' class='btn btn-sm' id='new_view_button'><a id= "view_a" href='/users/items/'>View List</a></button> -->
	                            
	        </div>
	     <?php endforeach; ?>
	</div>



	   	<div id="empty_placeholder">
	   		<br><br><br>
	   		<p class="lead" id="empty_p">Add new tasks here</p>
	   	</div>

	   	<div id="break_before_footer"></div>


	
</div>