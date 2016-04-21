<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pericias extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Perícias';
		$this->load->model('model_pericias');
	}

	public function index()
	{
        //$this->output->enable_profiler(TRUE);
		$data['pericias'] = $this->model_pericias->get_last_pericias();
		$data['sub_title'] = 'Lista de pericias D&D 3.5';
        $data['title'] = 'Perícias - listagem';
		$data['description'] = 'Aqui você encontra todas as pericias disponíveis para seu personagem!';
		$data['img'] = 'rpg-ancient-paper.jpg';
		$data['page'] = 'pericias/lista';
        $this->load->view('master', $data);
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Pericias - criar';
		$data['sub_title'] = 'Crie uma pericia';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'pericias/create';
        } else {
            $data['page'] = 'pericias/create/ok';
        }

        $this->load->view('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Pericias - editar';
        $data['description'] = 'Altere os campos necessários para mehorar essa pericia!!!';

        $data['class'] = $this->model_pericias->get_pericia_by_id($id);
        if($data['class']){
	        if ($this->form_validation->run() == FALSE) {
                $data['page'] = 'pericias/create';
            } else {
                $data['page'] = 'pericias/create/ok';
            }
        } else {
        	$this->index();
        }

        $this->load->view('master', $data);

    }
    public function update(){
        $this->model_pericias->update_pericia();
        redirect('/pericias');
    }
    public function insert(){
    	//Model pericias já é carregado no construtor
		$this->model_pericias->insert_pericia();
		redirect('/pericias');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_pericias->drop($id);
    	}

    	redirect('/pericias');
    }
}