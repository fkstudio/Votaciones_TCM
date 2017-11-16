<!DOCTYPE html>
<html lang="es-DO">
<head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">
  
  <title>Scuba Caribe | Monitoreo</title>

  <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
  <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/style.css">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css" />

  <link href="<?php echo base_url('assets')?>/plugin/jquery.dataTables.min.css" rel="stylesheet" />
  <link href="<?php echo base_url('assets')?>/plugin/buttons.dataTables.min.css" rel="stylesheet"/>
  <link href="<?php echo base_url('assets')?>/plugin/responsive.dataTables.min.css" rel="stylesheet"/>

  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

  <script src="<?php echo base_url('assets')?>/plugin/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url('assets')?>/plugin/dataTables.buttons.min.js"></script>
  <script src="<?php echo base_url('assets')?>/plugin/buttons.html5.min.js"></script>
  <script src="<?php echo base_url('assets')?>/plugin/buttons.colVis.min.js"></script>
  <script src="<?php echo base_url('assets')?>/plugin/jszip.min.js"></script>
  <script src="<?php echo base_url('assets')?>/plugin/pdfmake.min.js"></script>
  <script src="<?php echo base_url('assets')?>/plugin/vfs_fonts.js"></script>

</head>
<body>
  <div id="background">
    <ul>
      <li><img src="<?php echo base_url('assets'); ?>/img/1.jpg" class="actual"></li>
      <li><img src="<?php echo base_url('assets'); ?>/img/2.jpg"></li>
      <li><img src="<?php echo base_url('assets'); ?>/img/3.jpg"></li>
      <li><img src="<?php echo base_url('assets'); ?>/img/4.jpg"></li>
    </ul>
  </div>
  <a class="login-btn" href='<?php echo base_url('Home/logout'); ?>'><i class="fa fa-sign-out fa-3x"></i></a>
  <div class="container">
    <div class="row">
      <div class="col-sm-8 col-sm-offset-2">
        <div class="wizard-container">
          <div class="card wizard-card" data-color="blue" id="wizard">
            <form id="mainForm">
              <div class="wizard-header">
                <h3 class="wizard-title">
                  Metricas
                </h3>
                <h5>Observe Como Avanza El Proceso De Votación.</h5>
              </div>
              <div class="wizard-navigation">
                <ul>
                  <li><a href="#base" data-toggle="tab">Votos por Base</a></li>
                  <li><a href="#empleado" data-toggle="tab">Votos por Empleado</a></li>
                </ul>
              </div>
              <div class="tab-content">
                <div class="tab-pane" id="base">
                  <div class="row">
                    <div class="col-sm-12">
                      <h4 class="info-text">Votos por sucursales.</h4>
                    </div>
                    <div class="col-sm-10 col-sm-offset-1">
                      <div id="chart"></div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="empleado">
                  <h4 class="info-text">Votos Por Empleados.</h4>
                  <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                      <table id="tbllistado" class="table table-bordered table-condensed table-striped table-hover" style="width:100%;">
                        <thead>
                          <tr>
                            <th>Base</th>
                            <th>Empleado</th>
                            <th>Cantidad Votos</th>
                           

                          </tr>
                        </thead>
                        <tbody></tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
    
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <div class="container text-center">
      Hecho con <i class="fa fa-heart heart"></i> por <a href="https://www.scubacaribe.com/" target="_blank">Scuba Caribe</a>
    </div>
  </div>

  <div id="employees" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <table id="tblDatos" class="table table-bordered table-condensed table-striped table-hover" style="width:100%;">
            <thead>
              <tr>
                <th>Base</th>
                <th>Empleado</th>
                <th>Cantidad Votos</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</body>
<script src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src="<?php echo base_url('assets')?>/js/index.js"></script>
<script src="<?php echo base_url('assets')?>/js/monitor.js"></script>
<script src="<?php echo base_url('assets')?>/js/select2.min.js"></script>
<script>
$(document).ready(function() {
  Morris.Donut( {
    element: 'chart',
    data: <?php $CI =& get_instance(); echo $CI->get_charts(); ?>,
    backgroundColor: '#ccc',
    labelColor: '#3C4858',
    colors: [
      '#006064',
      '#00ACC1',
      '#00838F',
      '#0097A7'
    ],
    formatter: function (x) { return x + "%"}
  }).on('click', function(i, row) {
    $(".modal-title").text(row.label);
    $("#employees").modal();
    mostrar(row.label);
  });
});
</script>
</body>
</html>
