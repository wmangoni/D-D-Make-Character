<?php if (isset($tipo_requisito)) { $tipo_requisito = (object) $tipo_requisito[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($tipo_requisito)) ? base_url('tipo_requisito/update') : base_url('tipo_requisito/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($tipo_requisito) && isset($tipo_requisito->nome)) ? $tipo_requisito->nome : 'Nova Raça' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($tipo_requisito) && isset($tipo_requisito->id)) ? $tipo_requisito->id : '' ?>">

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-4">
					<input id="nome" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="true" value="<?php echo (isset($tipo_requisito) && isset($tipo_requisito->nome)) ? $tipo_requisito->nome : '' ?>">
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
