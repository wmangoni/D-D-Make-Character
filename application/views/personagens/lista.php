<div class="panel panel-default panel-table">
	<div class="panel-heading">
		<div class="row">
			<div class="col col-xs-6">
				<!-- template-search -->
				<?php $this->load->view('template-search'); ?>
				<!-- template-search -->
			</div>
			<div class="col col-xs-6 text-right">
				<a href="<?php echo base_url('personagens/create'); ?>" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> Novo</a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		<table class="table table-striped table-bordered table-list">
			<thead>
				<tr>
					<th class="hidden-xs hidden-sm">ID</th>
					<th>nome</th>
					<th>race_id</th>
					<th>classe_id</th>
					<th>tendencia</th>
					<th>divindade</th>
					<th>nivel</th>
					<th>idade</th>
					<th>sexo</th>
					<th>altura</th>
					<th>peso</th>
					<th>olhos</th>
					<th>cabelos</th>
					<th>for</th>
					<th>des</th>
					<th>con</th>
					<th>int</th>
					<th>sab</th>
					<th>car</th>
					<th>iniciativa</th>
					<th>pvs</th>
					<th><a href="#"><em class="fa fa-cog"></em> Settings</a></th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($models as $key => $mod) : ?>
					<tr>
						<td class="hidden-xs hidden-sm"><?php echo $mod->id; ?></td>
						<td><big data-id="<?php echo $key; ?>"><?php echo $mod->nome; ?></big></td>
						<td><?php echo $mod->race_id; ?></td>
						<td><?php echo $mod->classe_id; ?></td>
						<td><?php echo $mod->tendencia; ?></td>
						<td><?php echo $mod->divindade; ?></td>
						<td><?php echo $mod->nivel; ?></td>
						<td><?php echo $mod->idade; ?></td>
						<td><?php echo $mod->sexo; ?></td>
						<td><?php echo $mod->altura; ?></td>
						<td><?php echo $mod->peso; ?></td>
						<td><?php echo $mod->olhos; ?></td>
						<td><?php echo $mod->cabelos; ?></td>
						<td><?php echo $mod->for; ?></td>
						<td><?php echo $mod->des; ?></td>
						<td><?php echo $mod->con; ?></td>
						<td><?php echo $mod->int; ?></td>
						<td><?php echo $mod->sab; ?></td>
						<td><?php echo $mod->car; ?></td>
						<td><?php echo $mod->iniciativa; ?></td>
						<td><?php echo $mod->pvs; ?></td>

						<td align="center">
							<div class="ui-group-buttons">
								<a href="<?php echo base_url('personagens/edit').'/'.$mod->id; ?>" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
								<div class="or"></div>
								<a href="<?php echo base_url('personagens/drop').'/'.$mod->id ?>" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
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
