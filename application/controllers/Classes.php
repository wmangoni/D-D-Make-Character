<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Classes extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$title['page_title'] = 'Classes';
		$this->load->view('header',$title);
		$this->load->model('model_classes');
	}

	public function index()
	{
        //$this->output->enable_profiler(TRUE);
		$data['classes'] = $this->model_classes->get_last_classes();
		$data['sub_title'] = 'Lista de Classes D&D 3.5';
		$data['description'] = 'Aqui você encontra todas as classes disponíveis para seu personagem!';
		$data['img'] = 'classes-rpg.jpg';
		$this->load->view('nav-bar.php', $data);
		$this->load->view('classes/lista');
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
            $this->load->view('classes/create');
        } else {
            $this->load->view('classes/create/ok');
        }

        $this->load->view('footer');
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');

        $data['class'] = $this->model_classes->get_classe_by_id($id);
        if($data['class']){
	        if ($this->form_validation->run() == FALSE) {
	            $this->load->view('classes/create', $data);
	        } else {
	            $this->load->view('classes/create/ok', $data);
	        }
        } else {
        	$this->index();
        }

        $this->load->view('footer');

    }
    public function update(){
        $this->model_classes->update_classe();
        redirect('/classes');
    }
    public function insert(){
    	//Model classes já é carregado no construtor
		$this->model_classes->insert_classe();
		redirect('/classes');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_classes->drop($id);
    	}

    	redirect('/classes');
    }
}