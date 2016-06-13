<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_usuarios extends CI_Model {

    private $id;
    private $nome;
    private $email;
    private $nasc;
    private $created_at;
    private $updated_at;
    private $validation;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    //SETS METHODS
    public function setId($id){
        $this->id = $id;
    }
    public function setNome($nome){
        if (strlen($nome) > 3) {
            $this->nome = $nome;
        } else {
            $this->setValidation("Nome inválido");
        }
        //asdfasdfsa
    }
    public function setEmail($email){
        if (filter_var($email, FILTER_VALIDATE_EMAIL) {
            $this->email = $email;
        } else {
            $this->setValidation("Email inválido");
        }
    }
    public function setNasc($data_nasc){
        if ($data_nasc < new DATE('Y-m-d')) {
            $this->data_nasc = $data_nasc;
        } else {
            $this->setValidation("Idade inválida");
        }
    }
    public function setUpdated_at($updated_at){
        $this->updated_at = $updated_at;
    }
    public function setValidation($validation){
        $this->validation[] = $validation;
    }

    //GETS METHODS
    public function get_all_usuarios()
    {
        $query = $this->db->get('usuarios');
        return $query->result();
    }
    public function get_usuarios($limit, $offset)
    {
        $query = $this->db->get('usuarios', $limit, $offset);
        return $query->result();
    }
    public function get_usuario_by_id($id){
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('usuarios')->result();
    }

    public function insert_usuario()
    {
        $this->nome = $_POST["nome"];
        $this->email = $_POST["email"];
        $this->desvantagem = $_POST["desvantagem"];
        $this->idade = $_POST["idade"];
        $this->created_at = $_POST["created_at"];
        $this->updated_at = $_POST["updated_at"];

        $this->db->insert('usuarios', $this);
    }

    public function update_usuario()
    {
        extract ($_POST, EXTR_PREFIX_SAME, "post");

        if(isset($id)){
            $this->setId($id);
        }

        if(isset($nome)){
            $this->setNome( $nome );
        }

        if(isset($email)){
            $this->setSetEmail($email)
        }

        if(isset($nasc)){
            $this->setNasc( $nasc );
        }

        if(isset($created_at)){
            $this->setCreated_at( $created_at );
        }

        if(isset($updated_at)){
            $this->setUpdated_at( $updated_at );
        }

        //AQUI VERIFICAMOS SE EM ALGUM SET METHOD CAPTOU ALGUM ERRO DE VALIDAÇÃO
        //SE SIM ENTÃO NÃO COMPLETAMOS A EDIÇÃO DO USUARIO E RETORNAMOS PARA VIEW CORRESPONDENTE COM A MENSAGEM ADEQUADA DE ERRO

        if (empty($this->validation)) {

            $this->db->update('usuarios', $this, array('id' => $_POST['id']));

        } else {

            $this->session->set_flashdata('erros', implode(", ", $this->validation));
            $this->session->set_flashdata('nome_usuario', $this->nome);
            $this->session->set_flashdata('email_usuario', $this->email);
            $this->session->set_flashdata('nasc_usuario', $this->nasc);

            redirect('usuarios/update');

        }

        $this->db->update('usuarios', $this, array('id' => $_POST['id']));
    }

    public function total_rows(){
        return $this->db->count_all('usuarios');
    }
    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('usuarios');
    }
    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('usuarios'); // gives UPDATE usuarios SET field = field+1 WHERE id = 2
    }

}