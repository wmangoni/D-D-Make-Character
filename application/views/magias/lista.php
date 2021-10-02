<div class="panel panel-default panel-table">
	<div class="panel-heading">
		<div class="row">
			<div class="col col-xs-6">
				<!-- template-search -->
				<?php $this->load->view('template-search'); ?>
				<!-- template-search -->
			</div>
			<div class="col col-xs-6 text-right">
				<a href="<?php echo base_url('magias/create'); ?>" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> Novo</a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		<table class="table table-striped table-bordered table-list">
			<thead>
				<tr>
					<th class="hidden-xs hidden-sm">ID</th>
					<th>nível</th>
					<th>nome</th>
					<th>descricao</th>
					<th>escola</th>
					<th>componentes</th>
					<th>tempo_execusao</th>
					<th>alcance</th>
					<th>alvo_efeito_area</th>
					<th>duracao</th>
					<th>tr</th>
					<th>rm</th>
					<th>material_foco</th>
					
					<th><a href="#"><em class="fa fa-cog"></em> Settings</a></th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($models as $key => $mod) : ?>
					<tr>
						<td class="hidden-xs hidden-sm"><?php echo $mod->id; ?></td>
						<td><big data-id="<?php echo $key; ?>"><?php echo $mod->nivel; ?></big></td>
						<td><?php echo $mod->nome ?></td>
						<td><?php echo $mod->descricao ?></td>
						<td><?php echo $mod->escola ?></td>
						<td><?php echo $mod->componentes ?></td>
						<td><?php echo $mod->tempo_execusao ?></td>
						<td><?php echo $mod->alcance ?></td>
						<td><?php echo $mod->alvo_efeito_area ?></td>
						<td><?php echo $mod->duracao ?></td>
						<td><?php echo $mod->tr ?></td>
						<td><?php echo $mod->rm ?></td>
						<td><?php echo $mod->material_foco ?></td>

						<td align="center">
							<div class="ui-group-buttons">
								<a href="<?php echo base_url('magias/edit').'/'.$mod->id; ?>" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
								<div class="or"></div>
								<a href="<?php echo base_url('magias/drop').'/'.$mod->id ?>" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
							</div>
						</td>
					</tr>
					<tr class="requisitos classe<?php echo $key; ?>" style="display:none;">
						<td colspan="7">Pré-requisitos:<br /><?php echo $mod->requisitos; ?></td>
					</tr>
					<tr style="display: none;"><td></td></tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<div class="panel-footer">
		<div class="row">
			<div class="col col-xs-4 pages-number"><?php echo 'Page ' . $current_page .' of ' . $total_page ?>
			</div>
			<?php echo $pagination; ?>
		</div>
	</div>
</div>
