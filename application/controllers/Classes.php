<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Classes extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Classes';
		$this->load->model('model_classes');
	}

	public function index()
	{
        //$this->output->enable_profiler(TRUE);
		$data['classes'] = $this->model_classes->get_last_classes();
		$data['sub_title'] = 'Lista de Classes D&D 3.5';
		$data['description'] = 'Aqui você encontra todas as classes disponíveis para seu personagem!';
		$data['img'] = 'classes-rpg.jpg';
		$data['page'] = 'classes/lista';
        $this->load->view('master', $data);
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Classe - criar';
		$data['sub_title'] = 'Crie uma Classe';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'classes/create';
        } else {
            $data['page'] = 'classes/create/ok';
        }

        $this->load->view('master', $data);;
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Classe - edição';
        $data['description'] = 'Altere os campos necessários para mehorar essa classe!!!';

        $data['class'] = $this->model_classes->get_classe_by_id($id);
        if($data['class']){
	        if ($this->form_validation->run() == FALSE) {
                $data['page'] = 'classes/create';
            } else {
                $data['page'] = 'classes/create/ok';
            }
        } else {
        	$this->index();
        }

        $this->load->view('master', $data);

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