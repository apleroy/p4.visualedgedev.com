<?php

class lists_controller extends base_controller {

	public function __construct() {
		parent::__construct();
	}

	public function index() {
	}

	public function add() {

		$this->template->content = View::instance('v_users_lists');

		$client_files_head = Array(
	        "/js/jquery.form.js",
	        "/js/lists_add.js"
    	);

    	$this->template->client_files_head = Utils::load_client_files($client_files_head);   
		
		//$this->template->content->error = $error;
		
		echo $this->template;

	}

	public function p_add() {

		// $_POST['user_id'] = $this->user->user_id;

		// $_POST['created'] = Time::now();

		// $_POST['modified'] = Time::now();

		// // echo '<pre>';
		// // print_r($_POST);
		// // echo '</pre>';

		// //error check to prevent blank post
		// if(empty($_POST['list_title_entry'])) {
			
		// 	//Router::redirect("/lists/add/error");
		
		// }

		// // DB::instance(DB_NAME)->insert('lists', $_POST);


		// // echo "Your post was added";
		// // //Router::redirect("/users/lists");


		// 	    $new_post_id = DB::instance(DB_NAME)->insert('lists',$_POST);

			    echo "We just ajaxed this";
			    // # Set up the view
			    // $view = View::instance('v_users_lists');

			    // # Pass data to the view
			    // $view->created     = $_POST['created'];
			    // $view->new_post_id = $new_post_id;

			    // # Render the view
			    // echo $view;     


	}


}
?>