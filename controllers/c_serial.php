<?php

class serial_controller extends base_controller {

	public function __construct() {
		parent::__construct();
	}

	public function index() {
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
	
	public function p_sortlist() {

		
		//DB::instance(DB_NAME)->update("users", $data, "WHERE user_id = 56");
		$i = 0;

		$str = $_POST['test'];

		//print_r($array);
		//echo $array[0];

		parse_str($str);

		// echo $list[0];
		// echo $list[1];
		// echo $list[2];
		foreach ($list as $value) {

			$data = Array('sort_order' => $i);
			
		 	DB::instance(DB_NAME)->update('lists', $data, "WHERE list_id = '$value'");
			
		 	$i++;
		
		}

		

		
	}


}

?>