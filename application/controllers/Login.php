<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Login extends MY_Controller {
		function __construct() {
			parent::__construct();
		}
		function index() {
	
			// VALIDATION RULES
			$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('senha', 'Senha', 'required');
			$this->form_validation->set_error_delimiters('<p class="error">', '</p>');

		
			// MODELO MEMBERSHIP
			$this->load->model('model_auth', 'usuarios');
			$query = $this->usuarios->validate();

			if ($this->form_validation->run() == FALSE) {

				$this->load->view('login');

			} else {

				if ($query) {
					$this->db->where('email', $this->input->post('email'));
					$this->db->where('senha', md5($this->input->post('senha')));
					$this->db->where('status', 1);
					$user = $this->db->get('usuarios')->row();

					// VERIFICA LOGIN E SENHA
					$data = array(
						'id_user' => $user->id,
						'nome' => $user->nome,
						'email' => $user->email,
						'logged' => true
					);

					$this->session->set_userdata($data);
					redirect(base_url('home'));

				} else {

					redirect(base_url().'?erro=1');

				}
			}
		}

		public function sair(){
			session_destroy();
			redirect(base_url('login'));
		}
	}
