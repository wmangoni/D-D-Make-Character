<?php if (isset($talento)) { $talento = (object) $talento[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($talento)) ? base_url('talentos/update') : base_url('talentos/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($talento) && isset($talento->nome)) ? $talento->nome : 'Novo Talento' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($talento) && isset($talento->id)) ? $talento->id : '' ?>">

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-4">
					<input id="nome" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="<?php echo (isset($talento) && isset($talento->nome)) ? $talento->nome : '' ?>">
				</div>
			</div>


			<!-- Button Drop Down -->
			<div class="form-group">

				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="tipo">Tipo de talento</label>
					<input id="tipo" name="tipo" type="text" placeholder="Ex: Divino, Normal, etc..." class="form-control input-md" value="<?php echo (isset($talento) && isset($talento->tipo)) ? $talento->tipo : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown0">Requisitos</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="pre_requisito_id" class="form-control" placeholder="Atributo que receberá o bônus" type="text" value="<?php echo (isset($talento) && isset($talento->pre_requisito_id)) ? $talento->pre_requisito_id : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<?php foreach($tipos_requisito as $key => $tipo_requisito) : ?>
									<li><a href="javascript:void(0)"><?php echo $tipo_requisito->nome ?></a></li>
								<?php endforeach; ?>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="beneficio">Benefício</label>
					<textarea class="form-control" id="beneficio" name="beneficio" value="<?php echo (isset($talento) && isset($talento->beneficio)) ? $talento->beneficio : '' ?>">Benefícios</textarea>
				</div>

				<div class="col-md-3">
					<label class="control-label" for="normal">Normal</label>
					<textarea class="form-control" id="normal" name="normal" value="<?php echo (isset($talento) && isset($talento->normal)) ? $talento->normal : '' ?>">Normal</textarea>
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
