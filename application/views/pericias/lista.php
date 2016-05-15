<div class="panel panel-default panel-table">
  <div class="panel-heading">
    <div class="row">
      <div class="col col-xs-6">
        <h3 class="panel-title">Busca</h3>
      </div>
      <div class="col col-xs-6 text-right">
        <a href="<?php echo base_url('pericias/create'); ?>"><button type="button" class="btn btn-sm btn-primary btn-create">Create New</button></a>
      </div>
    </div>
  </div>
  <div class="panel-body">
    <table class="table table-striped table-bordered table-list">
      <thead>
        <tr>
          <th class="hidden-xs">ID</th>
          <th>Nome</th>
          <th>Atributo</th>
          <th>Sem treinamento</th>
          <th>bar</th>
          <th>bad</th>
          <th>cle</th>
          <th>dru</th>
          <th>gue</th>
          <th>mon</th>
          <th>pal</th>
          <th>ran</th>
          <th>lad</th>
          <th>fei</th>
          <th>mag</th>
          <th><a href="#"><em class="fa fa-cog"></em> Settings</a></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($pericias as $key => $pericia) : ?>
          <tr>
            <td class="hidden-xs"><?php echo $pericia->id; ?></td>
            <td><big data-id="<?php echo $key; ?>"><?php echo $pericia->nome; ?></big></td>
            <td><?php echo $pericia->atributo; ?></td>
            <td><?php echo $pericia->sem_treinamento; ?></td>
            <td><?php echo $pericia->bar; ?></td>
            <td><?php echo $pericia->bad; ?></td>
            <td><?php echo $pericia->cle; ?></td>
            <td><?php echo $pericia->dru; ?></td>
            <td><?php echo $pericia->gue; ?></td>
            <td><?php echo $pericia->mon; ?></td>
            <td><?php echo $pericia->pal; ?></td>
            <td><?php echo $pericia->ran; ?></td>
            <td><?php echo $pericia->lad; ?></td>
            <td><?php echo $pericia->fei; ?></td>
            <td><?php echo $pericia->mag; ?></td>
            <td align="center">
              <div class="ui-group-buttons">
                <a href="<?php echo base_url('pericias/edit').'/'.$pericia->id; ?>" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
                <div class="or"></div>
                <a href="<?php echo base_url('pericias/drop').'/'.$pericia->id ?>" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
              </div>
            </td>
          </tr>
          <tr class="requisitos classe<?php echo $key; ?>" style="display:none;">
            <td colspan="16">Pré-requisitos:<br /><?php echo 'description'//$pericia->requisitos; ?></td>
          </tr>
          <tr style="display: none;"><td></td></tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col col-xs-4 pages-number"><?php echo 'Page ' . $current_page .' of ' . $total_page ?>
      </div>
      <?php echo $pagination; ?>
      <!-- <div class="col col-xs-8">
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
        -->
    </div>
  </div>
</div>
