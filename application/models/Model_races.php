<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_races extends CI_Model {

    public $id;
    public $nome;
    public $dv;
    public $bba_tipo;
    public $resistencia;
    public $tipo;
    public $requisitos;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_last_races()
    {
        $query = $this->db->get('races', 20);
        return $query->result();
    }
    public function get_races($page)
    {
        $offset = (int) $page * 20;
        $query = $this->db->get('races', 20, $offset);
        return $query->result();
    }
    public function get_classe_by_id($id){
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('races')->result();
    }

    public function insert_classe()
    {
		//echo '<pre>';
		//var_dump($_POST);
		//die('teste');
        $this->nome = $_POST['nome'];
        $this->dv = $_POST['dv'];
        $this->bba_tipo = $_POST['bba_tipo'];
        $this->resistencia = $_POST['resistencia'];
        $this->tipo = $_POST['tipo'];
        $this->requisitos = $_POST['requisitos'];

        $this->db->insert('races', $this);
    }

    public function update_classe()
    {
        if (isset($_POST['id']))
            $this->id = $_POST['id'];

        if(isset($_POST['nome']))
            $this->nome = $_POST['nome']; // please read the below note

        if(isset($_POST['dv']))
            $this->dv  = $_POST['dv'];

        if(isset($_POST['bba_tipo']))
            $this->bba_tipo  = $_POST['bba_tipo'];

        if(isset($_POST['resistencia']))
            $this->resistencia = $_POST['resistencia'];

        if(isset($_POST['tipo']))
            $this->tipo = $_POST['tipo'];

        if(isset($_POST['requisitos']))
            $this->requisitos = $_POST['requisitos'];

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