<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_races extends CI_Model {

    public $id;
    public $nome;
    public $bonus;
    public $atributo_bonus;
    public $desvantagem;
    public $atributo_desvantagem;
    public $tamanho;
    public $classe_favorecida;


    public function __construct() {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_all_races() {
        $query = $this->db->get('races');
        return $query->result();
    }

    public function get_races($limit, $offset) {
        $query = $this->db->get('races', $limit, $offset);
        return $query->result();
    }

    public function get_race_by_id($id) {
        $this->db->select('*');
        $this->db->where('id',$id);
        return $this->db->get('races')->result();
    }

    public function insert_race() {
        $this->nome = $_POST["nome"];
        $this->bonus = $_POST["bonus"];
        $this->atributo_bonus = $_POST["atributo_bonus"];
        $this->desvantagem = $_POST["desvantagem"];
        $this->atributo_desvantagem = $_POST["atributo_desvantagem"];
        $this->tamanho = $_POST["tamanho"];
        $this->classe_favorecida = $this->get_classe_id($_POST["classe_favorecida"]);

        $this->db->insert('races', $this);
    }

    public function update_race() {

        if(isset($_POST["id"])){
            $this->id = $_POST["id"];
        }

        if(isset($_POST["nome"])){
            $this->nome = $_POST["nome"];
        }

        if(isset($_POST["bonus"])){
            $this->bonus = $_POST["bonus"];
        }

        if(isset($_POST["atributo_bonus"])){
            $this->atributo_bonus = $_POST["atributo_bonus"];
        }

        if(isset($_POST["desvantagem"])){
            $this->desvantagem = $_POST["desvantagem"];
        }

        if(isset($_POST["atributo_desvantagem"])){
            $this->atributo_desvantagem = $_POST["atributo_desvantagem"];
        }

        if(isset($_POST["tamanho"])){
            $this->tamanho = $_POST["tamanho"];
        }

        if(isset($_POST["classe_favorecida"])){
            $this->classe_favorecida = $this->get_classe_id($_POST["classe_favorecida"]);
        }

        $this->db->update('races', $this, array('id' => $_POST['id']));
    }

    public function total_rows() {
        return $this->db->count_all('races');
    }

    public function drop($id) {
        $this->db->where('id', $id);
        $this->db->delete('races');
    }

    public function update($id, $dados) {
        $this->db->set($dados);
        $this->db->where('id', $id);
        $this->db->update('races'); // gives UPDATE races SET field = field+1 WHERE id = 2
    }

    private function get_classe_id($classe_name) {
        $classes = [
            "Bárbaro" => 1,
            "Bardo" => 2,
            "Clérigo" => 3,
            "Druida" => 4,
            "Guerreiro" => 5,
            "Monge" => 6,
            "Paladino" => 7,
            "Ranger" => 8,
            "Ladino" => 9,
            "Feiticeiro" => 10,
            "Mago" => 11,
            "Mestre dos Sete Mistérios da Necromancia" => 12,
            "Algoz" => 13
        ];

        return $classes[$classe_name];
    }

}