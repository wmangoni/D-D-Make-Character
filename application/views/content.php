<div class="col-md-9 col-lg-10" id="content">
    <div class="well">
		<?php echo isset($title) ? '<h1>'.$title.'</h1>' : ''; ?>
		<?php echo isset($sub_title) ? '<p><small>- '.$sub_title.'</small></p>' : ''; ?>
        <?php echo (isset($description)) ? '<span>'.$description.'</span>' : '' ?>
    </div>