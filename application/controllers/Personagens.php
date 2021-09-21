<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Personagens extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Personagens';
		$this->load->model('model_personagens');

        parent::verificaLogin();
	}

	public function index($offset = 0)
	{
        //$this->output->enable_profiler(TRUE);
        $limit = 20;
        $data['models'] = $this->model_personagens->get_personagens($limit, $offset);
        $data['title'] = 'Personagens :: Listagem';
        $data['sub_title'] = 'Lista de Personagens D&D 3.5';
        $data['description'] = 'Aqui você encontra todos os personagens criados por você!';
        $data['img'] = 'classes-rpg.jpg';
        $data['page'] = 'personagens/lista';
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('personagens')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('personagens/index');
        $config['total_rows'] = $this->db->get('personagens')->num_rows();
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
        $data['title'] = 'Personagem :: criar';
		$data['sub_title'] = 'Crie uma Personagem';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'personagens/create';
        } else {
            $data['page'] = 'personagens/create/ok';
        }

        $this->load->view('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Personagem :: editar';
        $data['description'] = 'Altere os campos necessários do personagem!!!';

        $data['model'] = $this->model_personagens->get_personagem_by_id($id);
        if($data['model']){
	        if ($this->form_validation->run() == FALSE) {
                $data['page'] = 'personagens/create';
            } else {
                $data['page'] = 'personagens/create/ok';
            }
        } else {
        	$this->index();
        }

        $this->load->view('master', $data);

    }
    public function update(){
        $this->model_personagens->update_personagem();
        redirect('/personagens');
    }
    public function insert(){
    	//Model classes já é carregado no construtor
		$this->model_personagens->insert_personagem();
		redirect('/personagens');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_personagens->drop($id);
    	}

    	redirect('/personagens');
    }
}