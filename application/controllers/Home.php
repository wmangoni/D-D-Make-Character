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

		$this->load->view('header', $data);
		$this->load->view('home');
		$this->load->view('footer');
	}
}
