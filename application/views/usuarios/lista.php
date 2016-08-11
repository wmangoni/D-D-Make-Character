<div class="panel panel-default panel-table">
  <div class="panel-heading">
    <div class="row">
      <div class="col col-xs-6">
        <!-- template-search -->
        <?php $this->load->view('template-search'); ?>
        <!-- template-search -->
      </div>
      <div class="col col-xs-6 text-right">
        <a href="<?php echo base_url('usuarios/create'); ?>"><button type="button" class="btn btn-sm btn-primary btn-create">Create New</button></a>
      </div>
    </div>
  </div>
  <div class="panel-body">
    <table class="table table-striped table-bordered table-list">
      <thead>
        <tr>
          <th class="hidden-xs">ID</th>
          <th>Nome da Raça</th>
          <th>Bonus</th>
          <th>Desvantagem</th>
          <th>Tamanho</th>
          <th>Classe Favorecida</th>
          <th><a href="#"><em class="fa fa-cog"></em> Settings</a></th>
        </tr>
      </thead>
      <tbody>
        {usuarios}
          <tr>
            <td class="hidden-xs">{id}</td>
              <td><big data-id="{key}">{nome}</big></td>
              <td>{email}</td>
              <td>{nasc}</td>
              <td>{created_at}</td>
              <td>{updated_at}</td>
            <td align="center">
              <div class="ui-group-buttons">
                <a href="<?php echo base_url('usuarios/edit').'/'; ?>{id}" class="btn btn-success" role="button"><span class="glyphicon glyphicon-pencil"></span></a>
                <div class="or"></div>
                <a href="<?php echo base_url('usuarios/drop').'/'; ?>{id}" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span></a>
              </div>
            </td>
          </tr>
          <tr class="requisitos classe{key}" style="display:none;">
            <td colspan="7">Pré-requisitos:<br /><?php echo 'description'//$usuarios->requisitos; ?></td>
          </tr>
          <tr style="display: none;"><td></td></tr>
        {/usuarios}
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
