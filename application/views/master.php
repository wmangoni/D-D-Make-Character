<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$this->load->view('header.php');
$this->load->view('nav-bar.php');
$this->load->view('content.php');
$this->load->view($page);
$this->load->view('footer');