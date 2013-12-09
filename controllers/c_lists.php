<?php

class lists_controller extends base_controller {

	public function __construct() {
		parent::__construct();
	}

	public function index() {
	}

	// public function add($error = NULL) {

	// 	$this->template->content = View::instance('v_posts_add');
		
	// 	$this->template->content->error = $error;
		
	// 	echo $this->template;

	// }

	// public function p_add() {

	// 	$_POST['user_id'] = $this->user->user_id;

	// 	$_POST['created'] = Time::now();

	// 	$_POST['modified'] = Time::now();

	// 	//error check to prevent blank post
	// 	if(empty($_POST['content'])) {
			
	// 		Router::redirect("/posts/add/error");
		
	// 	}

	// 	DB::instance(DB_NAME)->insert('posts', $_POST);

	// 	Router::redirect("/users/profile");

	// }
?>