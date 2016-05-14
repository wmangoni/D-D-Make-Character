<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pericias extends CI_Model {

    public $id;
    public $nome;
    public $atributo;
    public $sem_treinamento;
    public $bar;
    public $bad;
    public $cle;
    public $dru;
    public $gue;
    public $mon;
    public $pal;
    public $ran;
    public $lad;
    public $fei;
    public $mag;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_pericias($limit, $offset)
    {
        $query = $this->db->get('pericias', $limit, $offset);
        return $query->result();
    }
    public function get_all_pericias()
    {
        $query = $this->db->get('pericias');
        return $query->result();
    }
    public function get_pericia_by_id($id){
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('pericias')->result();
    }

    public function insert_pericia()
    {
        $this->nome = $_POST['nome'];
        $this->atributo = $_POST['atributo'];
        $this->sem_treinamento = $_POST['sem_treinamento'];
        $this->bar = $_POST['bar'];
        $this->bad = $_POST['bad'];
        $this->cle = $_POST['cle'];
        $this->dru = $_POST['dru'];
        $this->gue = $_POST['gue'];
        $this->mon = $_POST['mon'];
        $this->pal = $_POST['pal'];
        $this->ran = $_POST['ran'];
        $this->lad = $_POST['lad'];
        $this->fei = $_POST['fei'];
        $this->mag = $_POST['mag'];

        $this->db->insert('pericias', $this);
    }

    public function update_pericia()
    {
        if(isset($_POST['id']))
            $this->id = $_POST['id'];

        if(isset($_POST['nome']))
            $this->nome = $_POST['nome'];

        if(isset($_POST['atributo']))
            $this->atributo = $_POST['atributo'];

        if(isset($_POST['sem_treinamento']))
            $this->sem_treinamento = $_POST['sem_treinamento'];

        if(isset($_POST['bar']))
            $this->bar = $_POST['bar'];

        if(isset($_POST['bad']))
            $this->bad = $_POST['bad'];

        if(isset($_POST['cle']))
            $this->cle = $_POST['cle'];

        if(isset($_POST['dru']))
            $this->dru = $_POST['dru'];

        if(isset($_POST['gue']))
            $this->gue = $_POST['gue'];

        if(isset($_POST['mon']))
            $this->mon = $_POST['mon'];

        if(isset($_POST['pal']))
            $this->pal = $_POST['pal'];

        if(isset($_POST['ran']))
            $this->ran = $_POST['ran'];

        if(isset($_POST['lad']))
            $this->lad = $_POST['lad'];

        if(isset($_POST['fei']))
            $this->fei = $_POST['fei'];

        if(isset($_POST['mag']))
            $this->mag = $_POST['mag'];

        $this->db->update('pericias', $this, array('id' => $_POST['id']));
    }
    public function total_rows(){
        return $this->db->count_all('pericias');
    }
    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('pericias');
    }
    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('pericias'); // gives UPDATE pericias SET field = field+1 WHERE id = 2
    }

}