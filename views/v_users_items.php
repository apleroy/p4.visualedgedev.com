 <div class="container">
<h1>This is v_users_items</h1>
	     
		      	        
				<!-- Button trigger modal -->
					<button class="btn btn-primary btn-lg" id="main_add" data-toggle="modal" data-target="#myModal">
						Add New List Item
					</button>

					<!-- Modal -->
				<form id="add__form" method='POST' action='/lists/items/p_add'>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								      
								<!--Modal HEADER -->
								<div class="modal-header">
									<h4 class="modal-title" id="myModalLabel">New List</h4>
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
							        <input type='submit' value='Add List' button type="button" class="btn btn-primary" id="add_list"></button>

							    </div>

							</div><!-- /.modal-content -->
						</div><!-- /.modal-dialog -->
					</div><!-- /.modal -->
				</form>


				<div id="list_item_holder">
					<?php foreach ($items as $item): ?>
				   	
						<div class='.col-md-12' id='new'>

							<div class='list_item_header' id='new_header'><?=$item['content']?></div>
								
							<button type='button' class='btn btn-sm' data-toggle='modal' data-target='#myModal' id='new_edit_button'>Edit</button>
							
							<button type='button' class='btn btn-sm' id='new_delete_button'>Delete</button>
											
						</div>
						
				   	<?php endforeach; ?>

				</div>


				   	<div id="empty_placeholder">
				   		<br><br><br>
				   		<p class="lead" id="empty_p">Add new lists here</p>
				   	</div>

				   	<div id="break_before_footer"></div>
	

	
</div>