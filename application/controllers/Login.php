<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Login extends MI_Controller {
		function __construct() {
			parent::__construct();
		}
		function index() {
	
			// VALIDATION RULES
			$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('password', 'Password', 'required');
			$this->form_validation->set_error_delimiters('<p class="error">', '</p>');
		
			// MODELO MEMBERSHIP
			$this->load->model('model_usuarios', 'usuarios');
			$query = $this->usuario->validate();

			if ($this->form_validation->run() == FALSE) {

				$this->load->view('login/login_view');

			} else {

				if ($query) {

					// VERIFICA LOGIN E SENHA
					$data = array(
						'email' => $this->input->post('email'),
						'logged' => true
					);

					$this->session->set_userdata($data);redirect('login/area_restrita');

				} else {

					redirect($this->index());

				}
			}
		}
	}
