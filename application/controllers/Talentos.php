<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Talentos extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Talentos';
		$this->load->model('model_talentos');
	}

	public function index($offset = 0)
	{
        //$this->output->enable_profiler(TRUE);
        $limit = 20;
        $data['talentos'] = $this->model_talentos->get_talentos($limit, $offset);
        $data['sub_title'] = 'Lista de talentos D&D 3.5';
        $data['title'] = 'Perícias :: listagem';
        $data['description'] = 'Aqui você encontra todos os talentos disponíveis para seu personagem!';
        $data['img'] = 'rpg-ancient-paper.jpg';
        $data['page'] = 'talentos/lista';
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('talentos')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('talentos/index');
        $config['total_rows'] = $this->db->get('talentos')->num_rows();
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
        $data['title'] = 'talentos :: criar';
		$data['sub_title'] = 'Crie uma talento';
		$data['description'] = 'Lembre-se de dosar os benefícios com pré-requisitos.';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'talentos/create';
        } else {
            $data['page'] = 'talentos/create/ok';
        }

        $this->load->view('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'talentos :: editar';
        $data['description'] = 'Altere os campos necessários para mehorar essa pericia!!!';

        $data['pericia'] = $this->model_talentos->get_pericia_by_id($id);
        if($data['pericia']){
	        if ($this->form_validation->run() == FALSE) {
                $data['page'] = 'talentos/create';
            } else {
                $data['page'] = 'talentos/create/ok';
            }
        } else {
        	$this->index();
        }

        $this->load->view('master', $data);

    }
    public function update(){
        $this->model_talentos->update_pericia();
        redirect('/talentos');
    }
    public function insert(){
    	//Model talentos já é carregado no construtor
		$this->model_talentos->insert_pericia();
		redirect('/talentos');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_talentos->drop($id);
    	}

    	redirect('/talentos');
    }
}