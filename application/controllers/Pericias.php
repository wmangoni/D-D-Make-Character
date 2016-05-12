<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pericias extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Perícias';
		$this->load->model('model_pericias');
	}

	public function index($offset = 0)
	{
        //$this->output->enable_profiler(TRUE);
        $limit = 20;
		$data['pericias'] = $this->model_pericias->get_pericias($limit, $offset);
		$data['sub_title'] = 'Lista de pericias D&D 3.5';
        $data['title'] = 'Perícias - listagem';
		$data['description'] = 'Aqui você encontra todas as pericias disponíveis para seu personagem!';
		$data['img'] = 'rpg-ancient-paper.jpg';
		$data['page'] = 'pericias/lista';
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('pericias')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('pericias/index');
        $config['total_rows'] = $this->db->get('pericias')->num_rows();
        $config['per_page'] = $limit;
        $config['uri_segment'] = 3;
        $config['num_links'] = 5;
        $config['full_tag_open'] = '<div class="col col-xs-4"><ul class="pagination hidden-xs pull-right">';
        $config['full_tag_close'] = '</ul></div>';
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
        $config['cur_tag_open'] = '<li><a style="font-weight:bold">';
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

        $data['pericia'] = $this->model_pericias->get_pericia_by_id($id);
        if($data['pericia']){
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