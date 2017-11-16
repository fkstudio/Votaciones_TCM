<!DOCTYPE html>
<html lang="es-DO">
<head>
  <meta charset="UTF-8">
  <title>Scuba Caribe | Encuesta para Fiesta de fin de año</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
  <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/style.css">
  <link href="<?php echo base_url('assets'); ?>/css/select2.css" rel="stylesheet" />
  <link href="<?php echo base_url('assets'); ?>/css/sweetalert.css" rel="stylesheet" />
  <link href="<?php echo base_url('assets'); ?>/css/custom.css" rel="stylesheet" />
  <link
rel="shortcut icon" href="<?php echo base_url('assets'); ?>/images/favicon.png" />

</head>
<body>
  <?php
  if($_POST){
    $sql = "SELECT * FROM Usuarios WHERE Nombre = ? AND Clave = ?";
    $CI =& get_instance();
    $nombre = $_POST['Nombre'];
    $clave = md5($_POST['Clave']);
    $rs = $CI->db->query($sql, array($nombre, $clave));
    $rs = $rs->result();
    if( count($rs) > 0 ) {
      $_SESSION['Login_Start'] = $rs[0];
      redirect('Home/Monitor');
    }
    else {
      echo "
      <script>
      swal({
        title: 'Error',
        text: 'Este usuario no existe, o la contraseña es incorrecta',
        type: 'error'
      });
      </script>
      ";
    }
  }
  ?>
  <?php
  /*<div id="background">
    <ul>
      <li><img src="<?php echo base_url('assets'); ?>/img/1.jpg" class="actual"></li>
      <li><img src="<?php echo base_url('assets'); ?>/img/2.jpg"></li>
      <li><img src="<?php echo base_url('assets'); ?>/img/3.jpg"></li>
      <li><img src="<?php echo base_url('assets'); ?>/img/4.jpg"></li>
    </ul>
  </div>*/
  ?>
  <a class="login-btn" data-toggle="modal" data-target="#login"><i class="fa fa-sign-in fa-2x"></i></a>
  <div class="container">
    <div class="row">
      <div class="col-sm-8 col-sm-offset-2">
        <div class="wizard-container">
          <div class="card wizard-card" data-color="blue" id="wizard">
            <form id="mainForm">
              <div class="wizard-header">
                <h3 class="wizard-title">
                  Encuesta para <br>fiesta de fin de año
                </h3>
                
              </div>
     
              <div class="tab-content">
                <div class="tab-pane active" id="sucursal">
                  <div class="row">
                    <div class="col-sm-12">
                      <br/>
                     <h5 class="info-text">Selecciona la empresa <br> a la que perteneces.</h5>
                    </div>
                    <div class="col-sm-10 flex-content col-sm-offset-1">
                      <?php
                      $q = $this->db->select("*")->from("Bases")->get();
                      $result = ( ($q->num_rows() > 0) ? $q->result() : null );
                      foreach($result as $data) {

                        $logo =   '<img src="'.base_url('assets').'/images/'.$data->Logo.'" width="100%"/>';

                        echo "
                        <div class='flex-item'>
                        <div onclick='mostrar_todo({$data->ID_Base});' class='choice' data-toggle='wizard-radio' >
                        <input type='radio' name='ID_Base' id='ID_Base' value='{$data->ID_Base}' required>
                        <div class='icon'>$logo</div>
                        <h6>{$data->Nombre} </h6>
                        </div>
                        </div>
                        ";
                      }
                      ?>
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="votante">
                 
                  <h4 class="info-text">Seleccione sus Datos Personales</h4>
                  <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                      <div class="form-group">
                        <select id='ID_Votante' name='ID_Votante' class="form-control js-example-basic-single" style="width:100%;">
                        </select>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="seleccion">
         
                <h4 class="info-text">Seleccione tu compañero dentro de cualquiera de las empresas de TCM.</h4>
                <div class="row">
                  <div class="col-sm-10 col-sm-offset-1">
                    <div class="form-group">
                      <select id='ID_Seleccion' name='ID_Seleccion' class="form-control js-example-basic-single" style="width:100%;">
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="finalizar">
                <div class="row">
                 
                  <div class="col-sm-10 col-sm-offset-1">
                    <center>
                      <!---<div class="info-end">
                        <h3 class="title">¡Solo queda un paso!</h3>
                        <div class="txt">Solo falta que confirmes los datos que has insertado</div>
                      </div>-->
                       <input type='button' id='btn-save' class='btn btn-finish btn-fill btn-danger btn-wd' name='finish' value='Votar' />
                    </center>

                  </div>
                </div>
              </div>
            </div>
            <div class="wizard-footer">
              <div class="pull-right">
                <input type='button' class='btn btn-next btn-fill btn-info btn-wd' name='next' value='Siguiente' />
               
              </div>
              <div class="pull-left">
                <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Retroceder' />
              </div>
              <div class="clearfix"></div>
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

<div id="login" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Iniciar Sesión</h4>
      </div>
      <div class="modal-body">
        <form method="post">
          <div class="form-group">
            <label for="usr">Usuario</label>
            <input style="background-color: #999999; padding: 10px; border-radius:5px; color: white;" type="text" class="form-control" id="Nombre" name='Nombre' required>
          </div>
          <div class="form-group">
            <label for="pwd">Contraseña</label>
            <input style="background-color: #999999; padding: 10px; border-radius:5px;" type="password" class="form-control" id="Clave" name='Clave' required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-info" id="btn-access" style="margin-bottom: 10px;">Ingresar</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
  <script src="<?php echo base_url('assets')?>/js/sweetalert.min.js"></script>
<script src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src="<?php echo base_url('assets')?>/js/index.js"></script>
<script src="<?php echo base_url('assets')?>/js/select2.min.js"></script>
<script>
$(document).ready(function() {
  $('.js-example-basic-single').select2();
});
</script>
</body>
</html>
