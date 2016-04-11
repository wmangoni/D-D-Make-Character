<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct(){
		parent::__construct();
		//$this->load->helper('url');
	}

	public function index()
	{
		$data['page_title'] = 'Home';
		$data['title'] = 'Bem vindo ao Sistema de cadastro de Personagens de RPG (D&D)!';
		$data['page'] = 'home';

		$this->load->view('master', $data);
	}
}
