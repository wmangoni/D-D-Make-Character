<div class="panel panel-default panel-table">
	<div class="panel-heading">
		<div class="row">
			<div class="col col-xs-6">
				<div class="input-group">
					<div class="input-group-btn search-panel">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<span id="search_concept">Filter by</span> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#contains">Contains</a></li>
							<li><a href="#its_equal">It's equal</a></li>
							<li><a href="#greather_than">Greather than ></a></li>
							<li><a href="#less_than">Less than < </a></li>
							<li class="divider"></li>
							<li><a href="#all">Anything</a></li>
						</ul>
					</div>
					<input type="hidden" name="search_param" value="all" id="search_param">         
					<input type="text" class="form-control" name="x" placeholder="Search term...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
					</span>
				</div>
			</div>
			<div class="col col-xs-6 text-right">
				<a href="<?php echo base_url('talentos/create'); ?>"><button type="button" class="btn btn-sm btn-primary btn-create">Create New</button></a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		<table class="table table-striped table-bordered table-list">
			<thead>
				<tr>
					<th class="hidden-xs">ID</th>
					<th>Nome do Talento</th>
					<th>Tipo</th>
					<th>Requisito</th>
					<th>Benefício</th>
					<th>Normal</th>
					<th><a href="#"><em class="fa fa-cog"></em> Settings</a></th>
				</tr>
			</thead>
			<tbody>
				{talentos}
					<tr>
						<td class="hidden-xs">{id}</td>
						<td><a data-id="{key}" href="javascript:void(0)">{nome}</a></td>
						<td>{tipo}</td>
						<td>{pre_requisito_id}</td>
						<td>{beneficio}</td>
						<td>{normal}</td>
						<td align="center">
							<div class="ui-group-buttons">
								<a href="<?php echo base_url('talentos/edit').'/'; ?>{id}" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
								<div class="or"></div>
								<a href="<?php echo base_url('talentos/drop').'/'; ?>{id}" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
							</div>
						</td>
					</tr>
					<tr class="requisitos talento{key}" style="display:none;">
						<td colspan="7">Pré-requisitos:<br /><?php echo 'description'//$talento->requisitos; ?></td>
					</tr>
					<tr style="display: none;"><td></td></tr>
				{/talentos}
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
