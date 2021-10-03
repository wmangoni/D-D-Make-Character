<?php if (isset($magia)) { $magia = (object) $magia[0]; } ?>
<div class="col-md-12 painel-create">
	<form class="form-horizontal col-md-12" action="<?php echo (isset($magia)) ? base_url('magias/update') : base_url('magias/insert') ?>" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend><h2 class="h2"><?php echo (isset($magia) && isset($magia->nome)) ? $magia->nome : 'Nova Magia' ?></h2></legend>

			<input type="hidden" name="id" value="<?php echo (isset($magia) && isset($magia->id)) ? $magia->id : '' ?>">

			<!-- Number input-->
			<div class="form-group">
				<div class="col-md-4">
					<label class="control-label" for="nivel">Nível</label>
					<input id="nivel" name="nivel" type="number" placeholder="Nível da magia" class="form-control input-md" required="" value="<?php echo (isset($magia) && isset($magia->nivel)) ? $magia->nivel : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="nome">Nome</label>
					<input id="nome" name="nome" type="text" placeholder="Nome da Classe" class="form-control input-md" required="" value="<?php echo (isset($magia) && isset($magia->nome)) ? $magia->nome : '' ?>">
				</div>

				<div class="col-md-4">
					<label class="control-label" for="descricao">Descrição</label>
					<input id="descricao" name="descricao" type="text" placeholder="Descrição da magia" class="form-control input-md" required="" value="<?php echo (isset($magia) && isset($magia->descricao)) ? $magia->descricao : '' ?>">
				</div>
			</div>

			<!-- Button Drop Down -->
			<div class="form-group">
				<div class="col-md-3" id="componentes">

					<label class="control-label" for="descricao">Componentes <small>(Clique para adicionar ou remover.)</small></label>

					<div class="btn-group btn-group-xs" role="group" aria-label="...">
						<button v-on:click="addVerbal" type="button" class="btn btn-default">Verbal</button>
						<button v-on:click="addGestual" type="button" class="btn btn-default">Gestual</button>
						<button v-on:click="addFoco" type="button" class="btn btn-default">Foco</button>
						<button v-on:click="addMaterial" type="button" class="btn btn-default">Material</button>
						<button v-on:click="addFocoDivino" type="button" class="btn btn-default">Foco Divino</button>

						<input v-model="componentes" type="text" class="form-control" disabled aria-label="componentes">
					</div>

				</div>

				<div class="col-md-3">
					<label class="control-label" for="buttondropdown0">Escola</label>
					<div class="input-group">
						<input class="form-control buttondropdown" id="buttondropdown0" name="escola" class="form-control" placeholder="Nome da escola de magia" type="text" value="<?php echo (isset($magia) && isset($magia->escola)) ? $magia->escola : '' ?>">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								Selecione
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right bba_tipo">
								<li><a href="javascript:void(0)">ABJURAÇÃO</a></li>
								<li><a href="javascript:void(0)">ADIVINHAÇÃO</a></li>
								<li><a href="javascript:void(0)">CONJURAÇÃO</a></li>
								<li><a href="javascript:void(0)">ENCANTAMENTO</a></li>
								<li><a href="javascript:void(0)">EVOCAÇÃO</a></li>
								<li><a href="javascript:void(0)">ILUSÃO</a></li>
								<li><a href="javascript:void(0)">NECROMANCIA</a></li>
								<li><a href="javascript:void(0)">TRANSMUTAÇÃO</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<label class="control-label" for="tempo_execusao">Tempo de excecução</label>
					<input id="tempo_execusao" name="tempo_execusao" type="text" placeholder="1 A.P." class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->tempo_execusao)) ? $magia->tempo_execusao : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="alcance">Alcance</label>
					<input id="alcance" name="alcance" type="text" placeholder="Curto 7,5m+1,5m/2niv" class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->alcance)) ? $magia->alcance : '' ?>">
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-3">
					<label class="control-label" for="alvo_efeito_area">Alvo / Efeito / Area</label>
					<input id="alvo_efeito_area" name="alvo_efeito_area" type="text" placeholder="Obj. até 15kg ou portal" class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->alvo_efeito_area)) ? $magia->alvo_efeito_area : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="duracao">Duração</label>
					<input id="duracao" name="duracao" type="text" placeholder="Inst." class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->duracao)) ? $magia->duracao : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="tr">Teste de resistência</label>
					<input id="tr" name="tr" type="text" placeholder="Von anula" class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->tr)) ? $magia->tr : '' ?>">
				</div>

				<div class="col-md-3">
					<label class="control-label" for="rm">Resistência a magia</label>
					<input id="rm" name="rm" type="text" placeholder="Sim" class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->rm)) ? $magia->rm : '' ?>">
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-12">
					<label class="control-label" for="material_foco">Material / Foco</label>
					<input id="material_foco" name="material_foco" type="text" placeholder="Chave de bronze" class="form-control input-md" value="<?php echo (isset($magia) && isset($magia->material_foco)) ? $magia->material_foco : '' ?>">
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
