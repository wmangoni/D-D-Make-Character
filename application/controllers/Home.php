<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	public function __construct(){
		parent::__construct();
		//$this->load->helper('url');
		parent::verificaLogin();
	}

	public function index()
	{
		$data['page_title'] = 'Home';
		$data['title'] = 'Bem vindo ao D&D Make Character!';
		$data['sub_title'] = 'Home';
		$data['page'] = 'home';

		$this->load->view('master', $data);
	}

	public function teste() {
		$data['page_title'] = 'Teste';
		$data['title'] = 'Bem vindo ao D&D teste!';
		$data['img'] = 'rpg-ancient-paper.jpg';
		$data['sub_title'] = 'meu teste';
		$data['page'] = 'teste';
		$this->load->view('master', $data);
	}
}
