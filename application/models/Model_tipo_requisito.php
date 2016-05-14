<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_tipo_requisito extends CI_Model {

    public $id;
    public $nome;

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }
    public function get_tipo_requisitos($limit, $offset)
    {
        $query = $this->db->get('tipo_requisito', $limit, $offset);
        return $query->result();
    }
    public function get_all_tipos_requisito()
    {
        $query = $this->db->get('tipo_requisito');
        return $query->result();
    }
    public function get_tipo_requisito_by_id($id)
    {
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('tipo_requisito')->result();
    }
    public function insert_tipo_requisito()
    {
        $this->nome = $_POST['nome'];

        $this->db->insert('tipo_requisito', $this);
    }

    public function update_tipo_requisito()
    {
        if(isset($_POST['id']))
            $this->id = $_POST['id'];

        if(isset($_POST['nome']))
            $this->nome = $_POST['nome'];

        $this->db->update('tipo_requisito', $this, array('id' => $_POST['id']));
    }
    public function total_rows(){
        return $this->db->count_all('tipo_requisito');
    }
    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('tipo_requisito');
    }
    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('tipo_requisito'); // gives UPDATE pericias SET field = field+1 WHERE id = 2
    }

}