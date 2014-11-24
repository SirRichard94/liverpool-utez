
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Carlos Jaimez">
<link rel="shortcut icon" href="../imagenes/liverpool_logo.png">    


<!-- Estilos propios de Liverpool -->
<link rel="stylesheet" href="../css/estilos_liverpool.css">
<!-- Bootstrap -->
<link href="../b3.1.1/css/bootstrap.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="../css/jquery.datetimepicker.css" />
<script src="../js/jquery.datetimepicker.js"></script>

<!-- Para las tablas -->
<link rel="stylesheet" type="text/css" href="../css/dataTables.bootstrap.css">
<script type="text/javascript" src="../js/jquery.dataTables.js"></script>		
<script type="text/javascript" src="../js/dataTables.bootstrap.js"></script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function() {
        $('#tabla1').dataTable({
            "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
            "pagingType": "full_numbers",
            "language": {
                "emptyTable": "No hay datos disponibles en la tabla",
                "info": " _START_ a _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "Ningún registro",
                "search": "Aplicar filtro  _INPUT_ a la tabla",
                "zeroRecords": "No hay registros para mostrar",
                "paginate": {
                    "first": "<span class=\"glyphicon glyphicon-fast-backward\"></span>",
                    "previous": "<span class=\"glyphicon glyphicon-backward\"></span>",
                    "next": "<span class=\"glyphicon glyphicon-forward\"></span>",
                    "last": "<span class=\"glyphicon glyphicon-fast-forward\"></span>",
                },
            }
        });
    });
</script>
<!-- Aquí termina lo de las tablas -->

</head>
<body>
    <!-- Fixed navbar -->
    <br>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <a href="index.jsp" title="Inicio"><img src="../imagenes/Logo-Liverpool.jpg" class="img-rounded" width="100%" height="25%"></a>
        </div>
        <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
        </div>

        

            <div class=" row col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <a class="btn btn-primary" href="#miventana" rel="tooltip" data-toggle="modal" role="button">Cerrar sesión</a>
                <a class="btn btn-primary" href="registro_usuario.jsp" role="button">Mi cuenta</a>
            </div>


        <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="5">
        <div class="col-md-12">
            <br>
        </div>
        </div>
        