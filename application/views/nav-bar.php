<div class="col-md-3 col-lg-2 navbar nav-lateral">
	<img class="img-responsive img-thumbnail" src="<?php echo (isset($img)) ? base_url("assets/img/{$img}") : base_url("assets/img/fate-ficha-e-dados.jpg"); ?>" title="O melhor do RPG">
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a href="<?php echo base_url('home') ?>">
						<span class="glyphicon glyphicon-home"></span> Home
					</a>
				</h4>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a href="<?php echo base_url() ?>">
						<span class="glyphicon glyphicon-user"></span> Personagens
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse">
				<div class="panel-body">
					<table class="table">
						<tr>
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="#"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
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
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('classes') ?>"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
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
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('talentos') ?>"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
								<span class="glyphicon glyphicon-plus"></span><a href="<?php echo base_url('talentos/create') ?>"> Cadastrar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
								<a href="#">Notifications</a> <span class="label label-info">5</span>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
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
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('pericias') ?>"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
								<span class="glyphicon glyphicon-plus"></span><a href="<?php echo base_url('pericias/create') ?>"> Cadastrar</a>
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
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('races') ?>"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
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
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="#"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
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
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
						<span class="fa fa-pencil-square-o"></span> Tipos de Requisitos
					</a>
				</h4>
			</div>
			<div id="collapseSeven" class="panel-collapse collapse">
				<div class="panel-body">
					<table class="table">
						<tr>
							<td class="sub-td">
								<span class="glyphicon glyphicon-list-alt"></span><a href="<?php echo base_url('tipo_requisito') ?>"> Listar</a>
							</td>
						</tr>
						<tr>
							<td class="sub-td">
								<span class="glyphicon glyphicon-plus"></span><a href="<?php echo base_url('tipo_requisito/create') ?>"> Cadastrar</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>