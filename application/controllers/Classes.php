<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Classes extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$data['page_title'] = 'Classes';
		$this->load->model('model_classes');
	}

	public function index($offset = 0)
	{
        //$this->output->enable_profiler(TRUE);
        $limit = 20;
        $data['classes'] = $this->model_classes->get_classes($limit, $offset);
        $data['title'] = 'Classes :: Listagem';
        $data['sub_title'] = 'Lista de Classes D&D 3.5';
        $data['description'] = 'Aqui você encontra todas as classes disponíveis para seu personagem!';
        $data['img'] = 'classes-rpg.jpg';
        $data['page'] = 'classes/lista';
        $data['current_page'] = (NULL !== $this->uri->segment(3)) ? $this->uri->segment(3)/10 : 1;
        $data['total_page'] = $this->db->get('classes')->num_rows();
        $data['total_page'] = ceil( $data['total_page'] / 20 );
        //pagination
        $this->load->library('pagination');
        
        $config['base_url'] = base_url('classes/index');
        $config['total_rows'] = $this->db->get('classes')->num_rows();
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
        $data['title'] = 'Classe :: criar';
		$data['sub_title'] = 'Crie uma Classe';
		$data['description'] = 'Mas não seja muito apelão, pois o Mestre não gosta!!!';
		$data['img'] = 'lordsoffallen-rpg-ps4.jpg';

        if ($this->form_validation->run() == FALSE) {
            $data['page'] = 'classes/create';
        } else {
            $data['page'] = 'classes/create/ok';
        }

        $this->load->view('master', $data);
    }
    public function edit( $id ){

    	$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $data['title'] = 'Classe :: editar';
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