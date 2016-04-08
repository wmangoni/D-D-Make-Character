<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Races extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$title['page_title'] = 'races';
		$this->load->view('header',$title);
		$this->load->model('model_races');
	}

	public function index()
	{
		$data['races'] = $this->model_races->get_last_races();
		$data['sub_title'] = 'Lista de races D&D 3.5';
		$data['description'] = 'Aqui você encontra todas as races disponíveis para seu personagem!';
		$data['img'] = 'races-rpg.jpg';
		$this->load->view('nav-bar.php', $data);
		$this->load->view('races/lista');
		$this->load->view('footer');
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');
		$data['sub_title'] = 'Crie sua Classe';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';
		$this->load->view('nav-bar.php', $data);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('races/create');
        } else {
            $this->load->view('races/create/ok');
        }

        $this->load->view('footer');
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');

        $data['class'] = $this->model_races->get_classe_by_id($id);
        if($data['class']){
	        if ($this->form_validation->run() == FALSE) {
	            $this->load->view('races/create', $data);
	        } else {
	            $this->load->view('races/create/ok', $data);
	        }
        } else {
        	$this->index();
        }

        $this->load->view('footer');

    }
    public function update(){
        $this->model_races->update_classe();
        redirect('/races');
    }
    public function insert(){
    	//Model races já é carregado no construtor
		$this->model_races->insert_classe();
		redirect('/races');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_races->drop($id);
    	}

    	redirect('/races');
    }
}