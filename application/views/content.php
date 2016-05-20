<div class="col-md-9 col-lg-10" id="content">
    <div class="well row">
    	<div class="col-md-9">
			<?php echo isset($title) ? '<h1>'.$title.'</h1>' : ''; ?>
			<?php echo isset($sub_title) ? '<p><small>- '.$sub_title.'</small></p>' : ''; ?>
	        <?php echo (isset($description)) ? '<span>'.$description.'</span>' : '' ?>
        </div>
        <div class="col-md-3">
        	<span><a href="<?php echo base_url('login/sair') ?>">Sair</a></span>
        </div>
    </div>