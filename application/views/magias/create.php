<?php if (isset($race)) { $race = (object) $race[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($race)) ? base_url('races/update') : base_url('races/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($race) && isset($race->nome)) ? $race->nome : 'Nova Raça' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($race) && isset($race->id)) ? $race->id : '' ?>">

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-4">
					<input id="nome" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="<?php echo (isset($race) && isset($race->nome)) ? $race->nome : '' ?>">
				</div>
			</div>


			<!-- Button Drop Down -->
			<div class="form-group">

				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="bonus">Bônus</label>
					<input id="bonus" name="bonus" type="text" placeholder="Bonus de atributo" class="form-control input-md" value="<?php echo (isset($race) && isset($race->bonus)) ? $race->bonus : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown0">Atributo bônus</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="atributo_bonus" class="form-control" placeholder="Atributo que receberá o bônus" type="text" value="<?php echo (isset($race) && isset($race->atributo_bonus)) ? $race->atributo_bonus : '' ?>">
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
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="desvantagem">Desvantagem</label>
					<input id="desvantagem" name="desvantagem" type="text" placeholder="Desvantagem da raça" class="form-control input-md" value="<?php echo (isset($race) && isset($race->desvantagem)) ? $race->desvantagem : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown">Atributo desvantagem</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="atributo_desvantagem" class="form-control" placeholder="" type="text" value="<?php echo (isset($race) && isset($race->atributo_desvantagem)) ? $race->atributo_desvantagem : '' ?>">
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

				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown2">Tamanho</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="tamanho" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($race) && isset($race->tamanho)) ? $race->tamanho : '' ?>">
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

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown2">Classe Favorecida</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="classe_favorecida" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($race) && isset($race->classe_favorecida)) ? $race->classe_favorecida : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<?php if(isset($classes)) : ?>
									<li><a href="javascript:void(0)">Qualquer uma</li>
									<?php foreach($classes as $key => $class) : ?>
										<li><a href="javascript:void(0)"><?php echo $class->nome ?></a></li>
									<?php endforeach; ?>
								<?php endif; ?>
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
