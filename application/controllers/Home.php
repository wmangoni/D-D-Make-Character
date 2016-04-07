<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct(){
		parent::__construct();
		//$this->load->helper('url');
	}

	public function index()
	{
		$data['page_title'] = 'Bem vindo ao Sistema de cadastro de Personagens de RPG (D&D)!';
		$data['footer'] = array(
			'Sobre Dev Like Master',
			'Contato'
		);

                $this->load->view('header');
                $this->load->view('home', $data);
                $this->load->view('footer');
	}
	public function posts(){
		$data['page_title'] = 'Bem vindo ao Sistema de cadastro de Personagens de RPG (D&D)!';
		$data['footer'] = array(
			'Sobre Dev Like Master',
			'Contato'
		);
		$this->load->view('header');
		$this->load->view('posts',$data);
		$this->load->view('footer');
	}
	public function insert(){
		$this->load->model('blog');
		$this->blog->insert_entry();

		$data['page_title'] = 'Lista de posts';
		$data['footer'] = array(
			'Sobre Dev Like Master',
			'Contato'
		);
		$data['posts'] = $this->blog->get_last_ten_entries();
		$this->load->view('header');
		$this->load->view('lista',$data);
		$this->load->view('footer');
	}
	public function lista(){
		$this->load->model('blog');

		$data['page_title'] = 'Lista de posts';
		$data['footer'] = array(
			'Sobre Dev Like Master',
			'Contato'
		);
		$data['posts'] = $this->blog->get_last_ten_entries();
		$this->load->view('header');
		$this->load->view('lista',$data);
		$this->load->view('footer');

	}
}
