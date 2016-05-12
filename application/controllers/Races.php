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
        $limit = 20;
		$data['races'] = $this->model_races->get_last_races();
		$data['sub_title'] = 'Lista de races D&D 3.5';
        $data['title'] = 'Raças - listagem';
		$data['description'] = 'Aqui você encontra todas as races disponíveis para seu personagem!';
		$data['img'] = 'races-rpg.jpg';
        $data['page'] = 'races/lista';
        //pagination
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('races')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('races/index');
        $config['total_rows'] = $this->db->get('races')->num_rows();
        $config['per_page'] = $limit;
        $config['uri_segment'] = 3;
        $config['num_links'] = 5;
        $config['full_tag_open'] = '<div class="col col-xs-4"><center><ul class="pagination hidden-xs">';
        $config['full_tag_close'] = '</ul></center></div>';
        $config['first_link'] = 'First';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['last_link'] = 'Last';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['next_link'] = '&gt;';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li><a class="current_page">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        
        $this->pagination->initialize($config);
        
        $data['pagination'] = $this->pagination->create_links();
        $this->load->view('master', $data);
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');
        $this->load->model('model_classes');
        $data['classes'] = $this->model_classes->get_all_classes();
        $data['title'] = 'Raças - criar';
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
		$data['title'] = 'Raça - editar';
		$data['description'] = 'Altere os campos necessários para aprimorar esta raça!!!';
		$this->load->model('model_classes');
        $data['classes'] = $this->model_classes->get_all_classes();

        $data['race'] = $this->model_races->get_classe_by_id($id);

        if($data['race']){
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
        $this->model_races->update_race();
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