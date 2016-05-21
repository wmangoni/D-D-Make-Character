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
    <!--link href="<?php //echo base_url('assets/css/main.css'); ?>" rel="stylesheet" type="text/css"></link-->
    <link href="<?php echo base_url('assets/css/login.css'); ?>" rel="stylesheet" type="text/css"></link>
</head>
<body>
    <div class="row col-md-12" id="container">
        <div class="container" style="height: 100vh;">
            <div class="row">
                <div class="col-md-12">
                    <div class="wrap"><?php echo validation_errors(); ?></div>
                    <div class="wrap"><p class="error"><?php echo isset($_GET['erro']) && $_GET['erro'] == 1 ? 'Email ou senha inválido.' : '' ; ?></p></div>
                    <div class="pr-wrap">
                        <div class="pass-reset">
                            <label>
                                Enter the email you signed up with</label>
                            <input type="email" placeholder="Email" />
                            <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm" />
                        </div>
                    </div>
                    <div class="wrap">
                        <p class="form-title">
                            Login</p>
                        <form class="login" action="<?php echo base_url('login') ?>" method="post">
                        <input id="email" name="email" type="text" placeholder="Email" />
                        <input id="senha" name="senha" type="password" placeholder="Senha" />
                        <input type="submit" value="Entrar" class="btn btn-success btn-sm" />
                        <div class="remember-forgot">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" />
                                            Lembre-me
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6 forgot-pass-content">
                                    <a href="javascript:void(0)" class="forgot-pass">Esqueci a senha</a>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="posted-by">Powered By: <a href="http://www.jquery2dotnet.com">William Mangoni</a></div>
        </div>

        <footer class="">
            <div class="text-center">
                <a target="_blank" href="https://bitbucket.org/wmangoni/"class="btn btn-social-icon btn-bitbucket"><i class="fa fa-bitbucket"></i></a>
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-dropbox"><i class="fa fa-dropbox"></i></a-->
                <a target="_blank" href="https://www.facebook.com/wmangoni"class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-flickr"><i class="fa fa-flickr"></i></a-->
                <a target="_blank" href="https://github.com/wmangoni"class="btn btn-social-icon btn-github"><i class="fa fa-github"></i></a>
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-google-plus"><i class="fa fa-google-plus"></i></a-->
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a-->
                <a target="_blank" href="https://www.linkedin.com/in/william-mangoni-754578a6"class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-pinterest"><i class="fa fa-pinterest"></i></a-->
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-tumblr"><i class="fa fa-tumblr"></i></a-->
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a-->
                <!--a target="_blank" href="#"class="btn btn-social-icon btn-vk"><i class="fa fa-vk"></i></a-->
             </div>
        </footer>
    </div><!--FECHA ID CONTAINER-->
<script src="https://code.jquery.com/jquery-2.2.2.min.js" integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="<?php echo base_url('assets/js/main.js') ?>"></script>
</body>
</html>