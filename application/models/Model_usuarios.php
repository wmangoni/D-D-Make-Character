<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_usuarios extends CI_Model {

    public $id;
    public $nome;
    public $email;
    public $status;
    public $senha;
    //public $nasc;
    public $created_at;
    public $updated_at;
    private $validation;


    public function __construct() {
        parent::__construct();
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function setNome($nome) {
        if (strlen($nome) > 3) {
            $this->nome = $nome;
        } else {
            $this->setValidation("Nome inválido");
        }
    }

    public function setSenha($senha) {
        if (strlen($nome) > 30) {
            $this->senha = $senha;
        } else {
            $this->setValidation("Senha fraca");
        }
    }

    public function setStatus($status) {
        $this->status = $status;
    }

    public function setEmail($email) {
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->email = $email;
        } else {
            $this->setValidation("Email inválido");
        }
    }

    // public function setNasc($data_nasc) {
    //     if ($data_nasc < new DATE('Y-m-d')) {
    //         $this->data_nasc = $data_nasc;
    //     } else {
    //         $this->setValidation("Idade inválida");
    //     }
    // }

    public function setUpdated_at($updated_at) {
        $this->updated_at = $updated_at;
    }

    public function setValidation($validation) {
        $this->validation[] = $validation;
    }

    //GETS METHODS
    public function get_all_usuarios() {
        $query = $this->db->get('usuarios');
        return $query->result();
    }

    public function get_usuarios($limit, $offset) {
        $query = $this->db->get('usuarios', $limit, $offset);
        return $query->result();
    }

    public function get_usuario_by_id($id) {
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('usuarios')->result();
    }

    public function insert_usuario() {
        // echo '<pre>';
        // var_dump($_POST);
        // die('teste');
        $this->nome = $_POST["nome"];
        $this->email = $_POST["email"];
        $this->senha = md5(1508);
        $this->status = $this->getStatusId($_POST["status"]);
        $this->created_at = date("Y-m-d");

        $this->db->insert('usuarios', $this);
    }

    public function update_usuario() {

        if (isset($_POST['nome'])) {
            $this->setNome($_POST['nome']);
        }

        if (isset($_POST["email"])) {
            $this->setEmail($_POST["email"]);
        }

        if (isset($_POST['senha'])) {
            $this->setSenha(md5($_POST['senha']));
        }

        if (isset($_POST['status'])) {
            $this->setStatus($this->getStatusId($_POST['status']));
        }

        if (isset($updated_at)) {
            $this->setUpdated_at(date("Y-m-d"));
        }

        //AQUI VERIFICAMOS SE EM ALGUM SET METHOD CAPTOU ALGUM ERRO DE VALIDAÇÃO
        //SE SIM ENTÃO NÃO COMPLETAMOS A EDIÇÃO DO USUARIO E RETORNAMOS PARA VIEW CORRESPONDENTE COM A MENSAGEM ADEQUADA DE ERRO

        if (empty($this->validation)) {

            $this->db->update('usuarios', $this, array('id' => $_POST['id']));

        } else {

            $this->session->set_flashdata('erros', implode(", ", $this->validation));
            $this->session->set_flashdata('nome_usuario', $this->nome);
            $this->session->set_flashdata('email_usuario', $this->email);
            $this->session->set_flashdata('status_usuario', $this->status);
            //$this->session->set_flashdata('nasc_usuario', $this->nasc);

            redirect('usuarios/update');

        }
    }

    public function total_rows() {
        return $this->db->count_all('usuarios');
    }

    public function drop($id) {
        $this->db->where('id', $id);
        $this->db->delete('usuarios');
    }

    public function update($id, $dados) {
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('usuarios'); // gives UPDATE usuarios SET field = field+1 WHERE id = 2
    }

    private function getStatusId($status) {
        $status_map = ["Ativo" => 1, "Inativo" => 0];
        return $status_map[$status];
    }

}