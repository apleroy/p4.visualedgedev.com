  <div class="container">
<h1>This is v_users_lists</h1>
	     
		        <p class="lead">Add, edit, style, and sort list items to create a working open items list, to-do list, or brief agenda.</p>
		        
				<!-- Button trigger modal -->
					<button class="btn btn-primary btn-lg" id="main_add" data-toggle="modal" data-target="#myModal">
						Add New List Item
					</button>

					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								      
								<!--Modal HEADER -->
								<div class="modal-header">
									<h4 class="modal-title" id="myModalLabel">New List Item</h4>
						        </div>
									      
								<!--Modal BODY -->
								<div class="modal-body">
									      	
									<div class="input_holder">	
										<input type="text" id="list_title_entry" class="input-small" placeholder="List Item Title">
										<div class="input_error" id="title_error">Please enter at least one character.</div>
									</div>
									<br>

									<div class="input_holder">	
										<textarea id="list_text_entry" class="span12" placeholder="List Description" rows="8"></textarea>
										<div class="input_error" id="body_error">Please enter at least one character.</div>	
									</div>
								</div>
									      

								<!--Modal FOOTER -->
							    <div class="modal-footer">
							      		
							      	<div class="btn-group" id="color_choices" data-toggle="buttons">
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

							        <button type="button" class="btn btn-default" id="close_item" data-dismiss="modal">Close</button>
							        <button type="button" class="btn btn-primary" id="add_item">Add Item</button>

							    </div>

							</div><!-- /.modal-content -->
						</div><!-- /.modal-dialog -->
					</div><!-- /.modal -->



				   	<div id="list_item_holder"></div>
				   	
				   	<div id="empty_placeholder">
				   		<br><br><br>
				   		<p class="lead" id="empty_p">Add new items here</p>
				   	</div>

				   	<div id="break_before_footer"></div>
	<?php foreach ($posts as $post): ?>
			<div class = "post">
				<div class = "post_picture_holder">
					<div class = "post_picture">
						<img src="/uploads/profiles/<?=$post['picture']?>" alt="Profile picture" width="76" height="76">
					</div>
				</div>
				
				<div class = "post_person">
					<?=$post['first_name']?> <?=$post['last_name']?>
					<div class = "post_time">
						<time datetime="<?=Time::display($post['created'], 'Y-m-d G:i')?>">
							<?=Time::display($post['created'])?>
						</time>
					</div>
				</div>
				<br>
				<div class = "post_content">
					<?=$post['content']?>
				</div>
				<br>
				
			</div>
		<br>
	<?php endforeach; ?>
</div>