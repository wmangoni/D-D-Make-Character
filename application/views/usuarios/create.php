<?php if (isset($usuario)) { $usuario = (object) $usuario[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($usuario)) ? base_url('usuarios/update') : base_url('usuarios/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($usuario) && isset($usuario->nome)) ? $usuario->nome : 'Novo usuario' ?></h2></legend>

			<input type="hidden" name="id" value="{id}">

			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="nome">Nome</label>
					<input id="nome" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="{nome}">
				</div>
				<div class="col-md-3">
					<label class="control-label" for="tipo">Email</label>
					<input id="tipo" name="email" type="text" placeholder="tipo de atributo" class="form-control input-md" value="{email}">
				</div>
			</div>


			<!-- Button Drop Down -->
			<div class="form-group">

				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="tipo">Data de nascimento</label>
					<input id="tipo" name="nasc" type="text" placeholder="tipo de atributo" class="form-control input-md" value="{nasc}">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="status">Status</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="status" class="form-control" placeholder="Atributo que receberá o bônus" type="text" value="{status}">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right status">
								<li><a href="javascript:void(0)">Ativo</a></li>
								<li><a href="javascript:void(0)">Inativo</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
				<label class="control-label" for="submit">Salvar</label>
					<div class="input-group">
						<button id="submit" name="submit" class="btn btn-primary"><input type="submit" value="OK"/><i class="glyphicon glyphicon-floppy-open"></i>&nbsp;</button>
					</div>
				</div>
			</div>

		</fieldset>
	</form>
</div>
