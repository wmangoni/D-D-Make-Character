<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_talentos extends CI_Model {

    public $id;
    public $nome;
    public $tipo;
    public $pre_requisito_id;
    public $beneficio;
    public $normal;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_all_talentos()
    {
        $query = $this->db->get('talentos');
        return $query->result();
    }
    public function get_talentos($limit, $offset)
    {
        $query = $this->db->get('talentos', $limit, $offset);
        return $query->result();
    }
    public function get_talento_by_id($id){
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('talentos')->result();
    }

    public function insert_talento()
    {
        $this->nome = $_POST['nome'];
        $this->tipo = $_POST['tipo;'];
        $this->pre_requisito_id = $_POST['pre_requisito_id;'];
        $this->beneficio = $_POST['beneficio;'];
        $this->normal = $_POST['normal;'];

        $this->db->insert('talentos', $this);
    }

    public function update_talento()
    {
        if(isset($_POST['id']))
            $this->id = $_POST['id'];

        if(isset($_POST['nome']))
            $this->nome = $_POST['nome'];

        if(isset($_POST['tipo']))
            $this->tipo = $_POST['tipo'];

        if(isset($_POST['pre_requisito_id']))
            $this->pre_requisito_id = $_POST['pre_requisito_id'];

        if(isset($_POST['beneficio']))
            $this->beneficio = $_POST['beneficio'];

        if(isset($_POST['normal']))
            $this->normal = $_POST['normal'];


        $this->db->update('talentos', $this, array('id' => $_POST['id']));
    }
    public function total_rows(){
        return $this->db->count_all('talentos');
    }
    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('talentos');
    }
    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('talentos'); // gives UPDATE pericias SET field = field+1 WHERE id = 2
    }

}