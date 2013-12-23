<?php

class serial_controller extends base_controller {

	public function __construct() {
		parent::__construct();
	}

	public function index() {
	}

	public function sortlist() {

		$this->template->content = View::instance('v_users_lists_sort');

		$client_files_head = Array();

    	$this->template->client_files_head = Utils::load_client_files($client_files_head);   
			
		echo $this->template;

	}
	
	public function p_sortlist() {

		$i = 0;

		$str = $_POST['test'];

		parse_str($str); //parse the serialized string

		//the string items came in as list[]=1 - parse through each and assign a sort order
		
		foreach ($list as $value) {

			$data = Array('sort_order' => $i);
			
		 	DB::instance(DB_NAME)->update('lists', $data, "WHERE list_id = '$value'");
			
		 	$i++;
		
		}

	}


}

?>