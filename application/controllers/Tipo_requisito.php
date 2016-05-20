<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tipo_requisito extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Tipos de requisitos';
		$this->load->model('model_tipo_requisito');

        parent::verificaLogin();
	}

	public function index($offset = 0)
	{
        //$this->output->enable_profiler(TRUE);
        $limit = 20;
        $data['tipos_requisito'] = $this->model_tipo_requisito->get_tipo_requisitos($limit, $offset);
        $data['sub_title'] = 'Lista de tipos de requisitos';
        $data['title'] = 'Tipos de requisitos :: listagem';
        $data['description'] = 'Aqui você encontra todos os tipo de requisitos que existem!';
        $data['img'] = 'epic_warior_bad.jpg';
        $data['page'] = 'tipo_requisito/lista';
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('tipo_requisito')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('tipo_requisito/index');
        $config['total_rows'] = $this->db->get('tipo_requisito')->num_rows();
        $config['per_page'] = $limit;
        //$config['uri_segment'] = 3;
        $config['num_links'] = 2;
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
        $data['title'] = 'Tipo de requisitos :: criar';
		$data['sub_title'] = 'Crie um tipo de requisito';
		$data['description'] = 'Lembre-se de dosar os benefícios com pré-requisitos.';
		$data['img'] = 'dragon_and_warrior.jpg';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'tipo_requisito/create';
        } else {
            $data['page'] = 'tipo_requisito/create/ok';
        }

        $this->load->view('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Tipo de requisitos :: editar';
        $data['description'] = 'Altere os campos necessários!!!';

        $data['tipo_requisito'] = $this->model_tipo_requisito->get_tipo_requisito_by_id($id);
        if($data['tipo_requisito']){
	        if ($this->form_validation->run() == FALSE) {
                $data['page'] = 'tipo_requisito/create';
            } else {
                $data['page'] = 'tipo_requisito/create/ok';
            }
        } else {
        	$this->index();
        }

        $this->load->view('master', $data);

    }
    public function update(){
        $this->model_tipo_requisito->update_tipo_requisito();
        redirect('/tipo_requisito');
    }
    public function insert(){
    	//Model requisitos já é carregado no construtor
		$this->model_tipo_requisito->insert_tipo_requisito();
		redirect('/tipo_requisito');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_tipo_requisito->drop($id);
    	}

    	redirect('/tipo_requisito');
    }
}