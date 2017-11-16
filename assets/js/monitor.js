var tabla;

function listar()
{
  tabla = $("#tbllistado").dataTable(
    {
      "aProcessing" : true,
      "aServerSide" : true, //Paginacion y Filtrado con Jquery Datatables
      dom: 'Bfrtip', //Elementos de Control de la tabla
      buttons : [
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        'pdf'
      ],
      "ajax" :
      {
        url: 'get_employees',
        type: "get",
        dataType: "json",
        error: function(e) {
          console.log(e.responseText);
        }
      },
      "bDestroy": true,
      "iDisplayLength": 5, //paginacion
      "order":[[0,"asc"]] //ordenar descendente desde el id 0

    }).DataTable();
  }

  listar();
