<?php if (isset($class)) { $class = (object) $class[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($class)) ? base_url('classes/update') : base_url('classes/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($class) && isset($class->nome)) ? $class->nome : 'Nova Classe' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($class) && isset($class->id)) ? $class->id : '' ?>">

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-4">
					<input id="title" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="<?php echo (isset($class) && isset($class->nome)) ? $class->nome : '' ?>">
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown0">Dados de Vida</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="dv" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($class) && isset($class->dv)) ? $class->dv : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">4</a></li>
								<li><a href="javascript:void(0)">6</a></li>
								<li><a href="javascript:void(0)">8</a></li>
								<li><a href="javascript:void(0)">10</a></li>
								<li><a href="javascript:void(0)">12</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown">Tipo de Bônus Base de Ataque</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="bba_tipo" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($class) && isset($class->bba_tipo)) ? $class->bba_tipo : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">bom</a></li>
								<li><a href="javascript:void(0)">medio</a></li>
								<li><a href="javascript:void(0)">ruim</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown2">Tipo da Classe</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="tipo" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($class) && isset($class->tipo)) ? $class->tipo : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">Básica</a></li>
								<li><a href="javascript:void(0)">Prestígio</a></li>
								<li><a href="javascript:void(0)">Épica</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Textarea -->
			<div id="requisitos" class="form-group" style="<?php echo (isset($class) && isset($class->tipo )&& $class->tipo != 'Básica') ? '' : 'display:none;' ?>">
				<label class="col-md-4 control-label" for="textarea">Requisitos</label>
				<div class="col-md-4">
					<textarea class="form-control" id="textarea" name="requisitos" placehplder="Talentos: Ataque Poderoso. BBA: 5+"><?php echo (isset($class) && isset($class->requisitos)) ? $class->requisitos : '' ?></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown3">Resistência</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown3" name="resistencia" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($class) && isset($class->resistencia)) ? $class->resistencia : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">fort</a></li>
								<li><a href="javascript:void(0)">ref</a></li>
								<li><a href="javascript:void(0)">von</a></li>
								<li><a href="javascript:void(0)">fort/ref</a></li>
								<li><a href="javascript:void(0)">fort/von</a></li>
								<li><a href="javascript:void(0)">ref/von</a></li>
								<li><a href="javascript:void(0)">fort/ref/von</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="submit">Salvar</label>
				<div class="col-md-4">
					<button id="submit" name="submit" class="btn btn-primary"><input type="submit" value="OK"/><i class="glyphicon glyphicon-floppy-open"></i>&nbsp;</button>
				</div>
			</div>

		</fieldset>
	</form>
</div>
