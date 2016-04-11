<div class="col-sm-12 col-md-10" id="content">
    <div class="well">
		<?php echo isset($title) ? '<h1>'.$title.'</h1>' : ''; ?>
		<?php echo isset($sub_title) ? '<h2>'.$sub_title.'</h2>' : ''; ?>
        <?php echo (isset($description)) ? '<span>'.$description.'</span>' : '' ?>
		<span><img class="img-responsive" src="<?php echo (isset($img)) ? base_url("assets/img/{$img}") : base_url("assets/img/fate-ficha-e-dados.jpg"); ?>" title="O melhor do RPG"></span>
    </div>