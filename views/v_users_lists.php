  <div class="container">
<!-- <h1>This is v_lists</h1> -->
	     
		        <p class="lead">Add, edit, style, and sort list items to create a working open items list, to-do list, or brief agenda.</p>
		        
				<!-- Button trigger modal -->
					<button class="btn btn-primary btn-lg" id="main_add" data-toggle="modal" data-target="#myModal">
						Add New List
					</button>

					<!-- Modal -->
				<!-- <form id="add_list_form" method='POST' action='/users/p_addlist'> -->
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

									<!-- <div class="input_holder">	
										<textarea id="list_text_entry" class="span12" placeholder="List Description" rows="8"></textarea>
										<div class="input_error" id="body_error">Please enter at least one character.</div>	
									</div> -->
								</div>
									      

								<!--Modal FOOTER -->
							    <div class="modal-footer">
							      		
							      	<!-- <div class="btn-group" id="color_choices" data-toggle="buttons">
									  <label class="btn btn-primary" id="red">
									    <input type="radio" name="options" class="color_option">Red
									  </label>
									  <label class="btn btn-primary" id="orange">
									    <input type="radio" name="options" class="color_option">Orange
									  </label>
									  <label class="btn btn-primary" id="gray">
									    <input type="radio" name="options" class="color_option">Gray
									  </label>
									  <label class="btn btn-primary" id="green">
									    <input type="radio" name="options" class="color_option">Green
									  </label>
									  <label class="btn btn-primary" id="blue">
									    <input type="radio" name="options" class="color_option">Blue
									  </label>
									  <label class="btn btn-primary" id="purple">
									    <input type="radio" name="options" class="color_option">Purple
									  </label>
									</div>
 -->
							        <button type="button" class="btn btn-default" id="close_item" data-dismiss="modal">Close</button>
							        <input type='submit' value='Add List' button type="button" class="btn btn-primary" id="add_list"></button>

							    </div>

							</div><!-- /.modal-content -->
						</div><!-- /.modal-dialog -->
					</div><!-- /.modal -->
				<!-- </form>
 -->
 				
				<div id="list_item_holder">

				    <?php foreach ($lists as $list): ?>

				        <div class='.col-md-12' id="list_<?=$list['list_id']?>">


				            <div class='list_item_header' id='new_header'><?=$list['list_title_entry']?></div>
				                
				            <button type='button' class='btn btn-sm' data-toggle='modal' data-target='#myModal' id='new_edit_button'>Edit</button>
				            
				            <button type='button' class='btn btn-sm' id='new_delete_button'>Delete</button>

				           <!--  <button type='button' class='btn btn-sm' id='new_view_button'><a id= "view_a" href='/users/items/'>View List</a></button> -->
				                            
				        </div>
				     <?php endforeach; ?>
				</div>



				   	<div id="empty_placeholder">
				   		<br><br><br>
				   		<p class="lead" id="empty_p">Add new lists here</p>
				   	</div>

				   	<div id="break_before_footer"></div>
	

	
</div>