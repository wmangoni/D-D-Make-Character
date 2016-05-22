<div class="col-md-9 col-lg-10" id="content">
	<nav class="navbar navbar-default navbar-xs" role="navigation" style="height: 40px; padding-top: 0;">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
		 	</button>
			<a class="navbar-brand" href="<?php echo base_url('home') ?>"><?php echo isset($title) ? '<span>'.$title.'</span>' : ''; ?></a>
	  	</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav pull-right">
		 		<li><a href="<?php echo base_url('home') ?>"><i class="glyphicon glyphicon-adjust"></i></a></li>
				<li><a href="<?php echo base_url('home') ?>"><i class="glyphicon glyphicon-bell"></i></a></li>
				<li><a href="<?php echo base_url('home') ?>"><i class="glyphicon glyphicon-user"></i></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="fa fa-bars"></b></a>
					<ul class="dropdown-menu" style="left: -127px;">
				  		<li><a href="#">Configurações</a></li>
				  		<li><a href="#">Perfil</a></li>
				  		<li><a href="#">Alterar senha</a></li>
				  		<li class="divider"></li>
				  		<li><a href="#">Suport</a></li>
				  		<li class="divider"></li>
				  		<li><a href="<?php echo base_url('login/sair') ?>">Sair</a></span></li>
		  			</ul>
	  			</li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</nav>