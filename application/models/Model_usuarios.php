<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_usuarios extends CI_Model {

    public $id;
    public $nome;
    public $email;
    public $desvantagem;
    public $idade;
    public $created_at;
    public $updated_at;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_all_races()
    {
        $query = $this->db->get('races');
        return $query->result();
    }
    public function get_races($limit, $offset)
    {
        $query = $this->db->get('races', $limit, $offset);
        return $query->result();
    }
    public function get_classe_by_id($id){
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('races')->result();
    }

    public function insert_race()
    {
        $this->nome = $_POST["nome"];
        $this->email = $_POST["email"];
        $this->desvantagem = $_POST["desvantagem"];
        $this->idade = $_POST["idade"];
        $this->created_at = $_POST["created_at"];
        $this->updated_at = $_POST["updated_at"];

        $this->db->insert('races', $this);
    }

    public function update_race()
    {

        if(isset($_POST["id"])){
            $this->id = $_POST["id"];
        }

        if(isset($_POST["nome"])){
            $this->nome = $_POST["nome"];
        }

        if(isset($_POST["email"])){
            $this->email = $_POST["email"];
        }

        if(isset($_POST["desvantagem"])){
            $this->desvantagem = $_POST["desvantagem"];
        }

        if(isset($_POST["idade"])){
            $this->idade = $_POST["idade"];
        }

        if(isset($_POST["created_at"])){
            $this->created_at = $_POST["created_at"];
        }

        if(isset($_POST["updated_at"])){
            $this->updated_at = $_POST["updated_at"];
        }

        $this->db->update('races', $this, array('id' => $_POST['id']));
    }
    public function total_rows(){
        return $this->db->count_all('races');
    }
    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('races');
    }
    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('races'); // gives UPDATE races SET field = field+1 WHERE id = 2
    }

}