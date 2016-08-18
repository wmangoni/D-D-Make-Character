<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
     
	 public function __construct() {

		parent::__construct();

		$this->load->library('session');

	}

	public function verificaLogin() {
		if ($this->session->userdata('logged') != true) {
			redirect('login');
		}
	}

	public function busca($tabela, $coluna, $termo) {
		if ($this->db->table_exists($tabela)) {
			$model = 'Model_'.$tabela;
			$this->load->model($model);
			$this->$tabela->get_by($tabela, $coluna, $termo);
		}
	}

}