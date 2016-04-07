<div class="row">
	<div class="col-md-10 col-offset-1">
		<form class="form-horizontal" action="home/insert" method="post">
		<fieldset>

		<!-- Form Name -->
		<legend>meu formulario</legend>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="nome">Title</label>
		  <div class="col-md-4">
			<input id="title" name="title" type="text" placeholder="nome posts" class="form-control input-md" required="">
			
		  </div>
		</div>

		<!-- Textarea -->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="textarea">Description</label>
		  <div class="col-md-4">                     
			<textarea class="form-control" id="description" name="description">Lorem ipsum dolor sit amet</textarea>
		  </div>
		</div>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="link">Link</label>  
		  <div class="col-md-4">
		  <input id="link" name="link" type="text" placeholder="localhost/link..." class="form-control input-md">
			
		  </div>
		</div>

		<!-- Text input-->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="order">Order</label>  
		  <div class="col-md-4">
		  <input id="order" name="order" type="text" placeholder="order of my posts" class="form-control input-md">
			
		  </div>
		</div>

		<!-- Button -->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="submit">Save</label>
		  <div class="col-md-4">
			<button id="submit" name="submit" class="btn btn-primary"><input type="submit"/></button>
		  </div>
		</div>

		</fieldset>
		</form>
	</div>
</div>