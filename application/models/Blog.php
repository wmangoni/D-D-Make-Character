<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Model {

    public $id;
    public $title;
    public $description;
    public $link;
    public $created_at;
    public $order;


    public function __construct()
    {
                // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_last_ten_entries()
    {
        $query = $this->db->get('posts', 10);
        return $query->result();
    }

    public function insert_entry()
    {
			//echo '<pre>';
			//var_dump($_POST);
			//die('teste');
                $this->title    = $_POST['title']; // please read the below note
                $this->description  = $_POST['description'];
                $this->link  = $_POST['link'];
                $this->created_at  = date('y-m-d');
                $this->order = isset($_POST['order']) ? $_POST['order'] : 0;

                $this->db->insert('posts', $this);
            }

            public function update_entry()
            {
                if(isset($_POST['title']))
				$this->title = $_POST['title']; // please read the below note
            if(isset($_POST['description']))
                $this->description  = $_POST['description'];
            if(isset($_POST['link']))
                $this->link  = $_POST['link'];
            if(isset($_POST['order']))
                $this->order = $_POST['order'];

            $this->db->update('posts', $this, array('id' => $_POST['id']));
        }

    }