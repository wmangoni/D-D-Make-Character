<?php if (isset($pericia)) { $pericia = (object) $pericia[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($pericia)) ? base_url('pericias/update') : base_url('pericias/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($pericia) && isset($pericia->nome)) ? $pericia->nome : 'Nova Raça' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($pericia) && isset($pericia->id)) ? $pericia->id : '' ?>">

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-4">
					<input id="nome" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="<?php echo (isset($pericia) && isset($pericia->nome)) ? $pericia->nome : '' ?>">
				</div>
			</div>


			<!-- Button Drop Down -->
			<div class="form-group">

				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="atributo">Bônus</label>
					<input id="atributo" name="atributo" type="text" placeholder="atributo de atributo" class="form-control input-md" value="<?php echo (isset($pericia) && isset($pericia->atributo)) ? $pericia->atributo : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown0">Atributo bônus</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="sem_treinamento" class="form-control" placeholder="Atributo que receberá o bônus" type="text" value="<?php echo (isset($pericia) && isset($pericia->sem_treinamento)) ? $pericia->sem_treinamento : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">S</a></li>
								<li><a href="javascript:void(0)">N</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown">Bárbaro</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="bar" class="form-control" placeholder="Selecione" type="text" value="<?php echo (isset($pericia) && isset($pericia->bar)) ? $pericia->bar : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown2">Bardo</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="bad" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($pericia) && isset($pericia->bad)) ? $pericia->bad : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown2">Clérigo</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="cle" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($pericia) && isset($pericia->cle)) ? $pericia->cle : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<label class="control-label" for="buttondropdown">Druída</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="dru" class="form-control" placeholder="Selecione" type="text" value="<?php echo (isset($pericia) && isset($pericia->dru)) ? $pericia->dru : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown2">Guerreiro</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="gue" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($pericia) && isset($pericia->gue)) ? $pericia->gue : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<label class="control-label" for="buttondropdown">Monge</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="mon" class="form-control" placeholder="Selecione" type="text" value="<?php echo (isset($pericia) && isset($pericia->mon)) ? $pericia->mon : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown2">Paladino</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="pal" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($pericia) && isset($pericia->pal)) ? $pericia->pal : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<label class="control-label" for="buttondropdown">Ranger</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="ran" class="form-control" placeholder="Selecione" type="text" value="<?php echo (isset($pericia) && isset($pericia->ran)) ? $pericia->ran : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown2">Ladino</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown2" name="lad" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($pericia) && isset($pericia->lad)) ? $pericia->lad : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<label class="control-label" for="buttondropdown">Fiticeiro</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown" name="fei" class="form-control" placeholder="Selecione" type="text" value="<?php echo (isset($pericia) && isset($pericia->fei)) ? $pericia->fei : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-3 col-md-offset-3">
					<label class="control-label" for="buttondropdown21">Mago</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown21" name="mag" class="form-control" placeholder="Selecione" type="text" required="" value="<?php echo (isset($pericia) && isset($pericia->mag)) ? $pericia->mag : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">0</a></li>
								<li><a href="javascript:void(0)">1</a></li>
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
