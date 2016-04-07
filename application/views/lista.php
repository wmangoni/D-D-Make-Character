<div class="row">

  <p></p>
  <h1><?php echo $page_title; ?></h1>
  <p>A simple example of how-to put a bordered table within a panel. Responsive, place holders in header/footer for buttons or pagination.</p>
  <p>Follow me <a href="https://twitter.com/asked_io" target="_new">@asked_io</a> & <a href="https://asked.io/" target="_new">asked.io</a>.</p>
  <p> </p><p> </p>

  <div class="col-md-10 col-md-offset-1">

    <div class="panel panel-default panel-table">
      <div class="panel-heading">
        <div class="row">
          <div class="col col-xs-6">
            <h3 class="panel-title">Panel Heading</h3>
          </div>
          <div class="col col-xs-6 text-right">
            <button type="button" class="btn btn-sm btn-primary btn-create">Create New</button>
          </div>
        </div>
      </div>
      <div class="panel-body">
        <table class="table table-striped table-bordered table-list">
          <thead>
            <tr>
              <th><em class="fa fa-cog"></em></th>
              <th class="hidden-xs">ID</th>
              <th>Nome da Classe</th>
              <th>Dados de Vida</th>
              <th>Tipo de Bônus Base de Ataque</th>
              <th>Resistência</th>
            </tr>
          </thead>
          <tbody>
           <?php foreach($posts as $post) : ?>
           <tr>
            <td align="center">
              <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
              <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
            </td>
            <td class="hidden-xs">1</td>
            <td><?php echo $post->nome; ?></td>
            <td><?php echo $post->dv; ?></td>
            <td><?php echo $post->bba_tipo; ?></td>
            <td><?php echo $post->resistencia;; ?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>

  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col col-xs-4">Page 1 of 5
      </div>
      <div class="col col-xs-8">
        <ul class="pagination hidden-xs pull-right">
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
        </ul>
        <ul class="pagination visible-xs pull-right">
          <li><a href="#">«</a></li>
          <li><a href="#">»</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

</div>
</div>