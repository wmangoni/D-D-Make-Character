<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_requisitos extends CI_Model {

    public $id;
    public $id_tipo;
    public $id_requisito;
    public $valor;
    public $id_alvo;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }
    public function get_requisitos($limit, $offset)
    {
        $query = $this->db->get('requisitos', $limit, $offset);
        return $query->result();
    }
    public function get_all_requisitos()
    {
        $query = $this->db->get('requisitos');
        return $query->result();
    }
    public function get_requisito_by_id($id)
    {
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('requisitos')->result();
    }
    public function get_requisito_by_id_tipo($id_tipo, $id_requisito){
        $this->db->select('*');
        $this->db->where('id_tipo',$id_tipo);
        $this->db->where('id_requisito',$id_requisito);
        return $this->db->get('requisitos')->result();
    }
    public function get_requisito_by_alvo($id_alvo){
        $this->db->select('*');
        $this->db->where('id_alvo',$id_alvo);
        return $this->db->get('requisitos')->result();
    }

    public function insert_requisito()
    {
        $this->id_tipo = $_POST['id_tipo'];
        $this->id_requisito = $_POST['id_requisito'];
        $this->valor = $_POST['valor'];
        $this->id_alvo = $_POST['id_alvo'];

        $this->db->insert('requisitos', $this);
    }

    public function update_requisito()
    {
        if(isset($_POST['id']))
            $this->id = $_POST['id'];

        if(isset($_POST['id_tipo']))
            $this->id_tipo = $_POST['id_tipo'];

        if(isset($_POST['id_requisito']))
            $this->id_requisito = $_POST['id_requisito'];

        if(isset($_POST['valor']))
            $this->valor = $_POST['valor'];

        if(isset($_POST['id_alvo']))
            $this->id_alvo = $_POST['id_alvo'];

        $this->db->update('requisitos', $this, array('id' => $_POST['id']));
    }
    public function total_rows(){
        return $this->db->count_all('requisitos');
    }
    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('requisitos');
    }
    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('requisitos'); // gives UPDATE pericias SET field = field+1 WHERE id = 2
    }

}