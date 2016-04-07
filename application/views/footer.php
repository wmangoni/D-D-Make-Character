		<p class="footer">
			<footer>
				<ul>
				<?php if (isset($footer)) : ?>
					<?php foreach($footer as $k => $f) : ?>
						<li style="display:inline;"><?php echo $f; ?></li><?php echo ($k < count($footer)-1) ? ' |' : '' ?>
					<?php endforeach; ?>
				<?php endif; ?>
				</ul>
			</footer>
		</p>
	</div><!--FECHA ID CONTAINER-->
</div>
<script src="https://code.jquery.com/jquery-2.2.2.min.js" integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="<?php echo base_url('assets/js/main.js') ?>"></script>
</body>
</html>