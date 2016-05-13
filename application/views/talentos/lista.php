<div class="panel panel-default panel-table">
  <div class="panel-heading">
    <div class="row">
      <div class="col col-xs-6">
        <h3 class="panel-title">Busca</h3>
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
        <?php foreach($talentos as $key => $talento) : ?>
          <tr>
            <td class="hidden-xs"><?php echo $talento->id; ?></td>
              <td><a data-id="<?php echo $key; ?>" href="javascript:void(0)"><?php echo $talento->nome; ?></a></td>
              <td><?php echo $talento->tipo; ?></td>
              <td><?php echo $talento->pre_requisito_id; ?></td>
              <td><?php echo $talento->beneficio; ?></td>
              <td><?php echo $talento->normal; ?></td>
            <td align="center">
              <div class="ui-group-buttons">
                <a href="<?php echo base_url('talento/edit').'/'.$talento->id; ?>" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
                <div class="or"></div>
                <a href="<?php echo base_url('talento/drop').'/'.$talento->id ?>" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
              </div>
            </td>
          </tr>
          <tr class="requisitos talento<?php echo $key; ?>" style="display:none;">
            <td colspan="7">Pré-requisitos:<br /><?php echo 'description'//$talento->requisitos; ?></td>
          </tr>
        <?php endforeach; ?>
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
