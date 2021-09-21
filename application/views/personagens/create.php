<?php if (isset($model)) { $model = (object) $model[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($model)) ? base_url('personagens/update') : base_url('personagens/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($model) && isset($model->nome)) ? $model->nome : 'Novo Personagem' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($model) && isset($model->id)) ? $model->id : '' ?>">

			<!-- Text input-->
			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="nome">Nome</label>
					<input id="title" name="nome" type="text" placeholder="Nome do Personagem" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->nome)) ? $model->nome : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="buttondropdown0">Raça</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="race_id" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($model) && isset($model->race_id)) ? $model->race_id : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">1 - Humano</a></li>
								<li><a href="javascript:void(0)">2 - Anão</a></li>
								<li><a href="javascript:void(0)">3 - Elfo</a></li>
								<li><a href="javascript:void(0)">4 - Gnomo</a></li>
								<li><a href="javascript:void(0)">5 - Meio-elfo</a></li>
								<li><a href="javascript:void(0)">6 - Meio-orc</a></li>
								<li><a href="javascript:void(0)">7 - Halfling</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<label class="control-label" for="buttondropdown">Classe</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="classe_id" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($model) && isset($model->classe_id)) ? $model->classe_id : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right classe_id">
								<li><a href="javascript:void(0)">1 - Bárbaro</a></li>
								<li><a href="javascript:void(0)">2 - Bardo</a></li>
								<li><a href="javascript:void(0)">3 - Clérigo</a></li>
								<li><a href="javascript:void(0)">4 - Druida</a></li>
								<li><a href="javascript:void(0)">5 - Guerreiro</a></li>
								<li><a href="javascript:void(0)">6 - Monge</a></li>
								<li><a href="javascript:void(0)">7 - Paladino</a></li>
								<li><a href="javascript:void(0)">8 - Ranger</a></li>
								<li><a href="javascript:void(0)">9 - Ladino</a></li>
								<li><a href="javascript:void(0)">10 - Feiticeiro</a></li>
								<li><a href="javascript:void(0)">11 - Mago</a></li>
								<li><a href="javascript:void(0)">12 - Mestre dos Sete Mistérios da Necromancia</a></li>
								<li><a href="javascript:void(0)">13 - Algoz</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="buttondropdown2">Tendência</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="tendencia" class="form-control" placeholder="" type="text" required="" value="<?php echo (isset($model) && isset($model->tendencia)) ? $model->tendencia : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right tendencia">
								<li><a href="javascript:void(0)">Leal e Mau</a></li>
								<li><a href="javascript:void(0)">Caótico e Mau</a></li>
								<li><a href="javascript:void(0)">Neutro e Mau</a></li>
								<li><a href="javascript:void(0)">Neutro</a></li>
								<li><a href="javascript:void(0)">Neutro e Bom</a></li>
								<li><a href="javascript:void(0)">Caótico e Bom</a></li>
								<li><a href="javascript:void(0)">Leal e Bom</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-8">
					<label class="control-label" for="divindade">Divindade</label>
					<input id="title" name="divindade" type="text" placeholder="Nome da Divindade" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->divindade)) ? $model->divindade : '' ?>">
				</div>
			</div>

			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="nivel">Nível</label>
					<input id="title" name="nivel" type="text" placeholder="4" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->nivel)) ? $model->nivel : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="idade">Idade</label>
					<input id="title" name="idade" type="text" placeholder="28" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->idade)) ? $model->idade : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="sexo">Sexo</label>
					<input id="title" name="sexo" type="text" placeholder="Feminino" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->sexo)) ? $model->sexo : '' ?>">
				</div>
			</div>

			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="altura">Altura</label>
					<input id="title" name="altura" type="text" placeholder="172" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->altura)) ? $model->altura : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="peso">Peso</label>
					<input id="title" name="peso" type="text" placeholder="82" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->peso)) ? $model->peso : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="olhos">Olhos</label>
					<input id="title" name="olhos" type="text" placeholder="Cor dos olhos" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->olhos)) ? $model->olhos : '' ?>">
				</div>
			</div>

			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="cabelos">Cabelos</label>
					<input id="title" name="cabelos" type="text" placeholder="Cor dos cabelos" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->cabelos)) ? $model->cabelos : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="for">Força</label>
					<input id="title" name="for" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->for)) ? $model->for : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="des">Dextreza</label>
					<input id="title" name="des" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->des)) ? $model->des : '' ?>">
				</div>
			</div>

			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="con">Constituição</label>
					<input id="title" name="con" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->con)) ? $model->con : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="int">Inteligência</label>
					<input id="title" name="int" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->int)) ? $model->int : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="sab">Sabedoria</label>
					<input id="title" name="sab" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->sab)) ? $model->sab : '' ?>">
				</div>
			</div>

			<div class="row form-group">
				<div class="col-md-4">
					<label class="control-label" for="car">Carisma</label>
					<input id="title" name="car" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->car)) ? $model->car : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="iniciativa">Iniciativa</label>
					<input id="title" name="iniciativa" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->iniciativa)) ? $model->iniciativa : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="pvs">PVs</label>
					<input id="title" name="pvs" type="number" placeholder="" class="form-control input-md" required="" value="<?php echo (isset($model) && isset($model->pvs)) ? $model->pvs : '' ?>">
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<div class="col-md-12">
					<label class="control-label" for="submit">Salvar</label>
				</div>
			</div>
			<div class="row form-group">
				<div class="col-md-12">
					<button id="submit" name="submit" class="btn btn-primary"><input type="submit" value="OK"/><i class="glyphicon glyphicon-floppy-open"></i>&nbsp;</button>
				</div>
			</div>

		</fieldset>
	</form>
</div>
