<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$title_page = $_SERVER["REQUEST_URI"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>RPG - <?php echo (isset($page_title)) ? $page_title : '' ?></title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"></link>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Astloch:400,700|Bad+Script|Poiret+One|Lovers+Quarrel|Miss+Fajardose|MedievalSharp' rel='stylesheet' type='text/css'>
	<link href="<?php echo base_url('assets/css/main.css'); ?>" rel="stylesheet" type="text/css"></link>
</head>
<body>
<div class="row">
	<div class="col-md-12" id="container">