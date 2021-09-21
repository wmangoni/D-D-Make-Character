<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_personagens extends CI_Model {

    public $id;
    public $nome;
    public $race_id;
    public $classe_id;
    public $jogador_id;
    public $tendencia;
    public $divindade;
    public $nivel;
    public $idade;
    public $sexo;
    public $altura;
    public $peso;
    public $olhos;
    public $cabelos; 
    public $for;
    public $des;
    public $con;
    public $int;
    public $sab;
    public $car;
    public $iniciativa;
    public $pvs;


    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_personagens($limit, $offset)
    {
        $query = $this->db->get('personagens', $limit, $offset);
        return $query->result();
    }
    public function get_all_personagens()
    {
        $query = $this->db->get('personagens');
        return $query->result();
    }
    public function get_personagem_by_id($id){
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('personagens')->result();
    }

    public function insert_personagem()
    {
		//echo '<pre>';
		//var_dump($_POST);
		//die('teste');
        $this->id = $_POST['id'];
        $this->nome = $_POST['nome'];
        $this->race_id = $_POST['race_id'];
        $this->classe_id = $_POST['classe_id'];
        $this->jogador_id = $_POST['jogador_id'];
        $this->tendencia = $_POST['tendencia'];
        $this->divindade = $_POST['divindade'];
        $this->nivel = $_POST['nivel'];
        $this->idade = $_POST['idade'];
        $this->sexo = $_POST['sexo'];
        $this->altura = $_POST['altura'];
        $this->peso = $_POST['peso'];
        $this->olhos = $_POST['olhos'];
        $this->cabelos = $_POST['cabelos']; 
        $this->for = $_POST['for'];
        $this->des = $_POST['des'];
        $this->con = $_POST['con'];
        $this->int = $_POST['int'];
        $this->sab = $_POST['sab'];
        $this->car = $_POST['car'];
        $this->iniciativa = $_POST['iniciativa'];
        $this->pvs = $_POST['pvs'];

        $this->db->insert('personagens', $this);
    }

    public function update_personagem()
    {
        if (isset($_POST['id']))
            $this->id = $_POST['id'];

        if (isset($_POST['nome']))
            $this->nome = $_POST['nome'];

        if (isset($_POST['race_id']))
            $race_id = explode(' - ', $_POST['race_id'])[0];
            var_dump($race_id);
            $this->race_id = (int) $race_id;

        if (isset($_POST['classe_id']))
            $classe_id = explode(' - ', $_POST['classe_id'])[0];
            $this->classe_id = (int) $classe_id;

        if (isset($_POST['jogador_id']))
            $this->jogador_id = $_POST['jogador_id'];

        if (isset($_POST['tendencia']))
            $this->tendencia = $_POST['tendencia'];

        if (isset($_POST['divindade']))
            $this->divindade = $_POST['divindade'];

        if (isset($_POST['nivel']))
            $this->nivel = $_POST['nivel'];

        if (isset($_POST['idade']))
            $this->idade = $_POST['idade'];

        if (isset($_POST['sexo']))
            $this->sexo = $_POST['sexo'];

        if (isset($_POST['altura']))
            $this->altura = $_POST['altura'];

        if (isset($_POST['peso']))
            $this->peso = $_POST['peso'];

        if (isset($_POST['olhos']))
            $this->olhos = $_POST['olhos'];

        if (isset($_POST['cabelos']))
            $this->cabelos = $_POST['cabelos']; 

        if (isset($_POST['for']))
            $this->for = $_POST['for'];

        if (isset($_POST['des']))
            $this->des = $_POST['des'];

        if (isset($_POST['con']))
            $this->con = $_POST['con'];

        if (isset($_POST['int']))
            $this->int = $_POST['int'];

        if (isset($_POST['sab']))
            $this->sab = $_POST['sab'];

        if (isset($_POST['car']))
            $this->car = $_POST['car'];

        if (isset($_POST['iniciativa']))
            $this->iniciativa = $_POST['iniciativa'];

        if (isset($_POST['pvs']))
            $this->pvs = $_POST['pvs'];

        $this->db->update('personagens', $this, array('id' => $_POST['id']));
    }

    public function total_rows(){
        return $this->db->count_all('personagens');
    }

    public function drop($id){
        $this->db->where('id', $id);
        $this->db->delete('personagens');
    }

    public function update($id, $dados){
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('personagens'); // gives UPDATE personagens SET field = field+1 WHERE id = 2
    }

}