<?php

class users_controller extends base_controller {

	

	public function __construct() {
		parent::__construct();
	}

	public function index() {
	}

	//$listID = '';
	
	public function signup($signup_error = NULL) {
		
		$this->template->content = View::instance('v_index_index');
		
		$this->template->content->signup_error = $signup_error;

		echo $this->template;
		
	}

	public function signup_duplicate($duplicate_error = NULL) {
		
		$this->template->content = View::instance('v_index_index');
		
		$this->template->content->duplicate_error = $duplicate_error;

		echo $this->template;
		
	}

	public function signup_invalid($invalid_error = NULL) {
		
		$this->template->content = View::instance('v_index_index');
		
		$this->template->content->invalid_error = $invalid_error;

		echo $this->template;
		
	}

	public function p_emailcheck() {
		$email_data = $_POST['ajax_email'];


		$q = "SELECT users.email
				FROM users 
	        	WHERE users.email = '".$email_data."'
	        	";
			
		$email_validation = DB::instance(DB_NAME)->select_field($q);

		if($email_validation) {
		   echo "Exists";
		} else {
		   echo "Available";
		}

	}


	public function p_signup() {

		
		//ensure valid email address syntax- this is the variable to be used below in syntax check
		$email_a = $_POST['email'];
		//$email_data = $_POST['ajax_email'];

		//check to ensure there is not already a user with that email (a duplicate)
		$q = "SELECT users.email
				FROM users 
	        	WHERE users.email = '".$_POST['email']."'
	        	";

	    			
		$email_validation = DB::instance(DB_NAME)->select_field($q);

		//validation of empty fields

		if (empty($_POST['first_name'])) {
			Router::redirect("/");//users/signup/");

    	} elseif (empty($_POST['last_name'])) {
    		Router::redirect("/");//users/signup/");
        	
    	} elseif (empty($_POST['email'])) {
        	Router::redirect("/");//users/signup/");
        	
    	} elseif (empty($_POST['password'])) {
        	Router::redirect("/");//users/signup/");
        
        //check for valid email syntax	
    	} elseif (!filter_var($email_a, FILTER_VALIDATE_EMAIL)) {
    	
			Router::redirect("/");//users/signup/");
		
    	} 
    	//check duplicate
  //   	elseif ($email_validation) {
				
		// 	Router::redirect("/");//users/signup_duplicate/signup_duplicate");
		
		// //signup the user and send info to DB	
		// } 
		else {

				//1. insert the data into the DB

				$_POST['created'] = Time::now();
				$_POST['modified'] = Time::now();
				$_POST['password'] = sha1(PASSWORD_SALT.$_POST['password']);
				$_POST['token'] = sha1(TOKEN_SALT.$_POST['email'].Utils::generate_random_string());

				$user_id = DB::instance(DB_NAME)->insert('users', $_POST);

							
				//3.  upon signup, give the user a token to continue directly to their page

				$q2 = "SELECT token
					FROM users 
		        	WHERE email = '".$_POST['email']."'
		        	AND password = '".$_POST['password']."'";

				$token = DB::instance(DB_NAME)->select_field($q2);

				setcookie("token", $token, strtotime('+1 year'), '/');

				Router::redirect("/users/lists");
		}		
	
	}
	

	public function login($error = NULL) {
		
		$this->template->content = View::instance('v_index_index');
		
		$this->template->content->error = $error;
		
		echo $this->template;

	}

	public function p_login() {
			
		$_POST = DB::instance(DB_NAME)->sanitize($_POST);

		$_POST['password'] = sha1(PASSWORD_SALT.$_POST['password']);

		// $_POST['last_login'] = DB::instance(DB_NAME)->insert(Time::now());

		$q = "SELECT token
			FROM users 
        	WHERE email = '".$_POST['email']."'
        	AND password = '".$_POST['password']."'";

		$token = DB::instance(DB_NAME)->select_field($q);

		if(!$token) {

			Router::redirect("/users/login/error");
			//echo "Not valid";

		} else {
			
			setcookie("token", $token, strtotime('+1 year'), '/');

			Router::redirect("/users/lists");
			//echo "Logged in!";
		
		}
	}

	public function logout() {
		
		$new_token = sha1(TOKEN_SALT.$this->user->email.Utils::generate_random_string());

		$data = Array("token" => $new_token);

		DB::instance(DB_NAME)->update("users", $data, "WHERE token = '".$this->user->token."'");

		setcookie("token", "", strtotime('-1 year'), '/');

		Router::redirect("/");

	}


	public function lists($error = NULL) {

		if(!$this->user) {
			Router::redirect('/users/login');
		}

		$this->template->content = View::instance('v_users_lists');

		//This person's profile and name
		$this->template->title = "Profile of ".$this->user->first_name;

		$client_files_head = Array(
	        "/js/jquery.form.js",
	        "/js/users_lists_add.js"
    	);

    	$this->template->client_files_head = Utils::load_client_files($client_files_head); 

		
			$listsQ = 'SELECT *
					FROM lists
					WHERE lists.user_id = '.$this->user->user_id .'
					ORDER BY sort_order ASC';
					

			$lists = DB::instance(DB_NAME)->select_rows($listsQ);

			$this->template->content->lists = $lists;

		

		echo $this->template;
			
		
	}
	
	public function addlist() {

		$this->template->content = View::instance('v_users_lists_add');

		$client_files_head = Array(
	        "/js/jquery.form.js",
	        "/js/users_lists_add.js",
	        "/js/users_lists_delete.js",
	        "/js/users_lists_sort.js"
    	);

    	$this->template->client_files_head = Utils::load_client_files($client_files_head);   
		
		//$this->template->content->error = $error;
		
		echo $this->template;

	}

	public function p_addlist() {

		$title_from_ajax = $_POST['title'];

		$data = Array('list_title_entry' => $title_from_ajax,
						'user_id' => $this->user->user_id,
						'created' => Time::now(),
						'modified' => Time::now()
				);
		

		//error check to prevent blank post
		//if(empty($_POST['list_title_entry'])) {
			
			//Router::redirect("/lists/add/error");
		
		//}

	   	$new_post_id = DB::instance(DB_NAME)->insert('lists', $data);
	  
	    # Set up the view
	    $view = View::instance('v_users_lists_p_add');

	    # Pass data to the view
	    //$view->created     = $_POST['created'];
	    $view->list_title_entry = $title_from_ajax;
	    $view->new_post_id = $new_post_id;

	    # Render the view
	    echo $view;     


	}

	public function deletelist() {

		$this->template->content = View::instance('v_users_lists_delete');

		$client_files_head = Array(
	        "/js/jquery.form.js",
	        "/js/users_lists_add.js",
	        "/js/users_lists_delete.js",
	        "/js/users_lists_sort.js"
    	);

    	$this->template->client_files_head = Utils::load_client_files($client_files_head);   
		
		//$this->template->content->error = $error;
		
		echo $this->template;

	}

	public function p_deletelist() {

		$data1 = $_POST['id'];

		$pos = strpos($data1, '_');

		$data = substr($data1, $pos + 1); //strip the list_ used in the serialize
		//$delete_query = "DELETE FROM lists WHERE list_id = '$data'";

		$result = DB::instance(DB_NAME)->delete('lists', "WHERE list_id = '$data'");

		if(isset($result)) {
		   echo "YES";
		} else {
		   echo "NO";
		}
	  
	   
	}

	public function editlist() {

		$this->template->content = View::instance('v_users_lists_edit');

		$client_files_head = Array(
	        "/js/jquery.form.js",
	        "/js/users_lists_add.js",
	        "/js/users_lists_delete.js",
	        "/js/users_lists_sort.js"
    	);

    	$this->template->client_files_head = Utils::load_client_files($client_files_head);   
			
		echo $this->template;

	}

	public function p_editlist() {

		$data1 = $_POST['id'];

			$pos = strpos($data1, '_');

			$id_data = substr($data1, $pos + 1); //strip the list_ used in the serialize

		$text_data = $_POST['text'];



		//get the text after the "add/edit" button is pressed in the modal
		//find the row equal to the ellement id
		//replace the list_title_entry in lists with the new text
		//display result?  already done through js?
		
		$data = Array("list_title_entry" => $text_data);
		$result = DB::instance(DB_NAME)->update('lists', $data, "WHERE list_id = '$id_data'");

		if(isset($result)) {
		   echo "YES";
		} else {
		   echo "NO";
		}

	}

	public function sortlist() {

		$this->template->content = View::instance('v_users_lists_sort');

		$client_files_head = Array(
	        "/js/jquery.form.js",
	        "/js/users_lists_add.js",
	        "/js/users_lists_delete.js",
	        "/js/users_lists_sort.js"
    	);

    	$this->template->client_files_head = Utils::load_client_files($client_files_head);   
			
		echo $this->template;

	}
	

	
	public function items($listID = NULL) {

		if(!$this->user) {
			Router::redirect('/users/login');
		}

		$this->template->content = View::instance('v_users_items');

		//This person's profile and name
		$this->template->title = "Profile of ".$this->user->first_name;


		$client_files_head = Array(
	        

    	);


		$this->template->content->$listID = $_POST['idx'];

		echo $listID;





    	$this->template->client_files_head = Utils::load_client_files($client_files_head); 

    	//$list_id = $_POST['id'];

		//echo $list_id;
			// $itemsQ = 'SELECT *
			// 		FROM items
			// 		WHERE items.list_id = '.$list_id .'
			// 		';//ORDER BY sort_order ASC';
					

			// $items = DB::instance(DB_NAME)->select_rows($itemsQ);

			// $this->template->content->items = $items;
  //   	$list_id = $_POST['idx'];

		// echo $list_id;
		

		echo $this->template;
			
		
	}


	public function getitems() {

		
		$this->template->content = View::instance('v_users_items_get');
	

    	$this->template->client_files_head = Utils::load_client_files($client_files_head); 

    	
		echo $this->template;
			
		
	}

	public function p_getitems() {
		//$listID = $_POST['idx'];

		//print_r($list_id);
	}

}

?>