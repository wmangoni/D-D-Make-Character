<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Classes extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->view('header');
		$this->load->model('model_classes');
	}

	public function index()
	{
		$data['title'] = 'Lista de Classes 3.5';
		$data['classes'] = $this->model_classes->get_last_classes();
		$this->load->view('classes/lista', $data);
		$this->load->view('footer');
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');

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