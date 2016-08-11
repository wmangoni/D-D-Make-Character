<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$this->load->view('header');
$this->load->view('nav-bar');
$this->load->view('content');
$this->load->view($page);
$this->load->view('footer');