<div class="panel panel-default panel-table">
  <div class="panel-heading">
    <div class="row">
      <div class="col col-xs-6">
        <h3 class="panel-title">Busca</h3>
      </div>
      <div class="col col-xs-6 text-right">
        <a href="<?php echo base_url('classes/create'); ?>"><button type="button" class="btn btn-sm btn-primary btn-create">Create New</button></a>
      </div>
    </div>
  </div>
  <div class="panel-body">
    <table class="table table-striped table-bordered table-list">
      <thead>
        <tr>
          <th><a href="#"><em class="fa fa-cog"></em> Settings</a></th>
          <th class="hidden-xs hidden-sm">ID</th>
          <th>Nome da Classe</th>
          <th>Dados de Vida</th>
          <th>Tipo de Bônus Base de Ataque</th>
          <th>Tipo de Classes</th>
          <th>Resistência</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($classes as $key => $classe) : ?>
          <tr>
            <td align="center">
			  <div class="ui-group-buttons">
                <a href="<?php echo base_url('classes/edit').'/'.$classe->id; ?>" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
                <div class="or"></div>
                <a href="<?php echo base_url('classes/drop').'/'.$classe->id ?>" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
            </div>
            </td>

          <td class="hidden-xs hidden-sm"><?php echo $classe->id; ?></td>
            <td><big data-id="<?php echo $key; ?>" href="javascript:void(0)"><?php echo $classe->nome; ?></big></td>
            <td><?php echo $classe->dv; ?></td>
            <td><?php echo $classe->bba_tipo; ?></td>
            <td><?php echo $classe->tipo; ?></td>
            <td><?php echo $classe->resistencia; ?></td>
          </tr>
          <tr class="requisitos classe<?php echo $key; ?>" style="display:none;">
            <td colspan="7">Pré-requisitos:<br /><?php echo $classe->requisitos; ?></td>
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
