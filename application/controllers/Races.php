<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Races extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'races';
		$this->load->model('model_races');
	}

	public function index()
	{
		$data['races'] = $this->model_races->get_last_races();
		$data['sub_title'] = 'Lista de races D&D 3.5';
        $data['title'] = 'Raças - listagem';
		$data['description'] = 'Aqui você encontra todas as races disponíveis para seu personagem!';
		$data['img'] = 'races-rpg.jpg';
        $data['page'] = 'races/lista';
        $this->load->view('master', $data);
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');
        $this->load->model('model_classes');
        $data['classes'] = $this->model_classes->get_all_classes();
        $data['title'] = 'Raças - create';
		$data['sub_title'] = 'Crie sua Classe';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';
		$data['page'] = 'races/lista';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'races/create';
        } else {
            $data['page'] = 'races/create/ok';
        }
        $this->load->view('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');

        $data['class'] = $this->model_races->get_classe_by_id($id);

        if($data['class']){
	        if ($this->form_validation->run() == FALSE) {
	            $data['page'] = 'races/create';
            } else {
                $data['page'] = 'races/create/ok';
	        }
        } else {
        	$this->index();
        }
        $this->load->view('master', $data);

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