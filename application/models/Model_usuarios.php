<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_usuarios extends CI_Model {
	# VALIDA USUÁRIO
	function validate() {

		$this->db->where('email', $this->input->post('email'));
		$this->db->where('senha', md5($this->input->post('senha')));
		$this->db->where('status', 1);

		// Verifica o status do usuário
		$query = $this->db->get('usuarios');

		if ($query->num_rows() == 1) {
			return true;
			// RETORNA VERDADEIRO
		} else {
			return false;
		}
	}
	
	# VERIFICA SE O USUÁRIO ESTÁ LOGADO
	function logged() {

		$logged = $this->session->userdata('logged');

		if (!isset($logged) || $logged != true) {

			echo 'Voce nao tem permissao para entrar nessa pagina. Efetuar Login';

			die();

		}
	}
}