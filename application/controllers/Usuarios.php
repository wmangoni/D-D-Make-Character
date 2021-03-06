<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'usuarios';
		$this->load->model('model_usuarios');

        parent::verificaLogin();
	}

	public function index($offset = 0)
	{
        $limit = 20;
		$data['usuarios'] = $this->model_usuarios->get_usuarios($limit, $offset);
		$data['sub_title'] = 'Usuários';
        $data['title'] = 'Usuários :: listagem';
		$data['description'] = 'Aqui você encontra todas os usuarios disponíveis para seu personagem!';
		$data['img'] = 'usuarios-rpg.jpg';
        $data['page'] = 'usuarios/lista';
        //pagination
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('usuarios')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('usuarios/index');
        $config['total_rows'] = $this->db->get('usuarios')->num_rows();
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
        $this->parser->parse('master', $data);
	}

	public function create()
    {
        $this->load->helper(array('form'));
        $this->load->library('form_validation');
        $this->load->model('model_usuarios');
        $data['classes'] = $this->model_classes->get_all_classes();
        $data['title'] = 'Raças :: criar';
		$data['sub_title'] = 'Crie sua Classe';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';
		$data['page'] = 'usuarios/lista';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'usuarios/create';
        } else {
            $data['page'] = 'usuarios/create/ok';
        }
        $this->parser->parse('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
		$data['title'] = 'Raça :: editar';
		$data['description'] = 'Altere os campos necessários para aprimorar esta raça!!!';
		$this->load->model('model_usuarios');
        $data['classes'] = $this->model_classes->get_all_classes();

        $data['usuarios'] = $this->model_usuarios->get_usuario_by_id($id);

        if($data['usuarios']){
	        if ($this->form_validation->run() == FALSE) {
	            $data['page'] = 'usuarios/create';
            } else {
                $data['page'] = 'usuarios/create/ok';
	        }
        } else {
        	$this->index();
        }
        $this->parser->parse('master', $data);

    }
    public function update(){
        $this->model_usuarios->update_usuarios();
        redirect('/usuarios');
    }
    public function insert(){
    	//Model usuarios já é carregado no construtor
		$this->model_usuarios->insert_classe();
		redirect('/usuarios');
    }
    public function drop($id){
    	if ( isset($id) && !empty($id) ) {
    		$this->model_usuarios->drop($id);
    	}

    	redirect('/usuarios');
    }
}