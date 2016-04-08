<div class="col-md-12">
    <div class="col-sm-3 col-md-3">
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a href="<?php echo base_url() ?>">
                            <span class="glyphicon glyphicon-home"></span> Home
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
    					<!--div id="link_personagem" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed" aria-expanded="false">
    						<a style="cursor: pointer;">Personagens</a>
    					</div-->
                        <a href="<?php echo base_url() ?>">
                            <span class="glyphicon glyphicon-user"></span> Personagens
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-list-alt"></span><a href="#"> Listar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-plus"></span><a href="#"> Cadastrar</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                        	<span class="glyphicon glyphicon-queen"></span> Classes
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('classes') ?>"> Listar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-plus"></span><a href="<?php echo base_url('classes/create') ?>"> Cadastrar</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                        	<span class="glyphicon glyphicon-book"></span> Talentos
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-list-alt"></span><a href="#"> Listar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-plus"></span><a href="#"> Cadastrar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Notifications</a> <span class="label label-info">5</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-download"></span><a href="#"> Exportar</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                        	<span class="glyphicon glyphicon-file"></span> Perícias
                        </a>
                    </h4>
                </div>
                <div id="collapseFour" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-list-alt"></span><a href="#"> Listar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-plus"></span><a href="#"> Cadastrar</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                        	<span class="fa fa-users"></span> Raças
                        </a>
                    </h4>
                </div>
                <div id="collapseFive" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('races') ?>"> Listar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-plus"></span><a href="<?php echo base_url('races/create') ?>"> Cadastrar</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                        	<span class="fa fa-magic"></span> Magias
                        </a>
                    </h4>
                </div>
                <div id="collapseSix" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-list-alt"></span><a href="#"> Listar</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-plus"></span><a href="#"> Cadastrar</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-9 col-md-9">
        <div class="well">
            <h1><?php echo (isset($sub_title)) ? $sub_title : 'Selecione a opção desejada no menu ao lado' ?></h1>
            <span><?php echo (isset($description)) ? $description : '' ?></span>
			<span><img class="img-responsive" src="<?php echo (isset($img)) ? base_url("assets/img/{$img}") : base_url("assets/img/fate-ficha-e-dados.jpg"); ?>" title="O melhor do RPG"></span>
        </div>
    </div>
</div>