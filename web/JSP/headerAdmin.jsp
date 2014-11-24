
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

<!-- Para el cuadrito de la fecha-->
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

<!-- Custom CSS -->
<link href="../css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>
<body>
    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <s:url id="menu" action="menu.action"/>
                <s:a href="%{menu}">Menú Administrador</s:a>
            </li>
            <li>
                <s:url id="consultarEmpleados" action="consultarE.action"/>
                <s:a href="%{consultarEmpleados}"><img src="../imagenes/admin.png" width="10%" height="10%"> Administradores</s:a>
            </li>
            <li>
                <s:url id="consultarEmpleados" action="empleadoR.action"/>
                <s:a href="%{consultarEmpleados}"><img src="../imagenes/empleado.png" width="10%" height="10%"> Empleados</s:a>
            </li>
            <li>
                <s:url id="consultarEmpleados" action="clienteR.action"/>
                <s:a href="%{consultarEmpleados}"><img src="../imagenes/cliente.png" width="10%" height="10%"> Clientes</s:a>
            </li>
            <li>
                <s:url id="consultarEmpleados" action="consultarE.action"/>
                <s:a href="%{consultarEmpleados}"><img src="../imagenes/reporte.png" width="10%" height="10%"> Reportes</s:a>
            </li>
            <li>
                <s:url id="consultarEmpleados" action="consultarE.action"/>
                <s:a href="%{consultarEmpleados}"><img src="../imagenes/cuenta.png" width="10%" height="10%"> Cuenta</s:a>
            </li>
            <li>
                <s:url id="consultarEmpleados" action="consultarE.action"/>
                <s:a href="%{consultarEmpleados}"><img src="../imagenes/cerrar.png" width="10%" height="10%"> Cerrar sesión</s:a>
            </li>
        </ul>
    </nav>
    <!-- Fixed navbar -->
    <br>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 j">
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <a href="index.jsp" title="Inicio"><img src="../imagenes/Logo-Liverpool.jpg" class="img-rounded" width="100%" height="25%"></a>
        </div>

        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Categoría <span class="caret"></span>
                        </button>

                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Tecnología</a></li>
                            <li><a href="#about">Computadoras</a></li>
                            <li><a href="#contact">Deporte</a></li>
                            <li><a href="#contact">Hogar</a></li>
                            <li><a href="#contact">Muebles</a></li>
                            <li><a href="#contact">Línea Blanca</a></li>
                            <li><a href="#contact">Salud y Belleza</a></li>
                            <li><a href="#contact">Damas</a></li>
                            <li><a href="#contact">Caballeros</a></li>
                            <li><a href="#contact">Zapatos</a></li>
                            <li><a href="#contact">Bebés</a></li>
                            <li><a href="#contact">Infantil</a></li>
                        </ul>
                    </div>

                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <a class="btn btn-primary" href="#miventana" rel="tooltip" data-toggle="modal" role="button">Cerrar sesión</a>
                <a class="btn btn-primary" href="registro_usuario.jsp" role="button">Cuenta</a>
                <img src="../imagenes/user.png" class="img-rounded" width="12.5%" height="25%"><span class="badge">Admin</span>
            </div>
        </div>


        <div class="col-md-12">
            <br>
        </div>


        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
            <div class="navbar navbar-default navbar-fixed navbar-nav nav-justified" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Categorias</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="#">Tecnología</a></li>
                            <li><a href="#about">Computadoras</a></li>
                            <li><a href="#contact">Deporte</a></li>
                            <li><a href="#contact">Hogar</a></li>
                            <li><a href="#contact">Muebles</a></li>
                            <li><a href="#contact">Línea Blanca</a></li>
                            <li><a href="#contact">Salud y Belleza</a></li>
                            <li><a href="#contact">Damas</a></li>
                            <li><a href="#contact">Caballeros</a></li>
                            <li><a href="#contact">Zapatos</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Más<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Bebes</a></li>
                                    <li><a href="#">Infantil</a></li>                
                                    <li><a href="#">Videojuegos</a></li>
                                    <li><a href="#">Juguetes</a></li>
                                    <li><a href="#">Libros CD y DVD</a></li>
                                    <li><a href="#">Vinos</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>       
            </div>
        </div>
        <div class="col-md-12">
            <br>
        </div>
    </div>

<!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>
 
