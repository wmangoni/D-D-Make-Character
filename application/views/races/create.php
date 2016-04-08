<?php if (isset($race)) { $race = (object) $race[0]; } ?>
<div class="row">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($race)) ? base_url('classes/update') : base_url('classes/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($race) && isset($race->nome)) ? $race->nome : 'Nova Classe' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($race) && isset($race->id)) ? $race->id : '' ?>">

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-4">
					<input id="title" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="<?php echo (isset($race) && isset($race->nome)) ? $race->nome : '' ?>">
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown0">Bonus</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="dv" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($race) && isset($race->dv)) ? $race->dv : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">FOR</a></li>
								<li><a href="javascript:void(0)">DES</a></li>
								<li><a href="javascript:void(0)">CON</a></li>
								<li><a href="javascript:void(0)">INT</a></li>
								<li><a href="javascript:void(0)">SAB</a></li>
								<li><a href="javascript:void(0)">CAR</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown">Desvantagem</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="bba_tipo" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($race) && isset($race->bba_tipo)) ? $race->bba_tipo : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">FOR</a></li>
								<li><a href="javascript:void(0)">DES</a></li>
								<li><a href="javascript:void(0)">CON</a></li>
								<li><a href="javascript:void(0)">INT</a></li>
								<li><a href="javascript:void(0)">SAB</a></li>
								<li><a href="javascript:void(0)">CAR</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown2">Tamanho</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="tipo" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($race) && isset($race->tipo)) ? $race->tipo : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">Mínimo</a></li>
								<li><a href="javascript:void(0)">Minúsculo</a></li>
								<li><a href="javascript:void(0)">Pequeno</a></li>
								<li><a href="javascript:void(0)">Médio</a></li>
								<li><a href="javascript:void(0)">Grande</a></li>
								<li><a href="javascript:void(0)">Enorme</a></li>
								<li><a href="javascript:void(0)">Imenso</a></li>
								<li><a href="javascript:void(0)">Colosal</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="buttondropdown2">Classe Favorecida</label>
				<div class="col-md-4">
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="tipo" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($race) && isset($race->tipo)) ? $race->tipo : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">Mínimo</a></li>
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
