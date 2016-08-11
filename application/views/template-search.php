<div class="input-group">
	<div class="input-group-btn search-panel">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			<span id="search_concept">Filter by</span> <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<?php foreach ($colunas as $key => $value): ?>
				<li><a href="javascript:void(0);" data-field="<?php echo $value ?>" class="busca-anchor"><?php echo ucwords(str_replace('_', ' ', $value)) ?></a></li>
				<!-- <li class="divider"></li> -->
			<?php endforeach ?>
		</ul>
		<!-- <ul class="dropdown-menu" role="menu">
			<li><a href="#contains">Contains</a></li>
			<li><a href="#its_equal">It's equal</a></li>
			<li><a href="#greather_than">Greather than ></a></li>
			<li><a href="#less_than">Less than < </a></li>
			<li class="divider"></li>
			<li><a href="#all">Anything</a></li>
		</ul> -->
	</div>
	<input type="hidden" name="search_param" value="all" id="search_param">         
	<input type="text" class="form-control" name="x" placeholder="Search term...">
	<span class="input-group-btn">
		<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
	</span>
</div>