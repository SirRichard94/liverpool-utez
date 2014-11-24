
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
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 j">
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <a href="index.jsp" title="Inicio"><img src="../imagenes/Logo-Liverpool.jpg" class="img-rounded" width="100%" height="25%"></a>
        </div>

        <div class="row">
            <div class="col-lg-6">
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
            <div class="col-lg-3">
                <a class="btn btn-primary" href="#miventana" rel="tooltip" data-toggle="modal" role="button">Iniciar sesión</a>
                <s:url id="registrarse" action="clienteCreate2.action"/>
                <s:a href="%{registrarse}" cssClass="btn btn-primary">Registrate</s:a>
                <img src="../imagenes/carrito.png" class="img-rounded" width="12.5%" height="25%"><span class="badge">10</span>
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
                            <li><s:url id="tecno" action="tecnologia.action"/>
                            <s:a href="%{tecno}">Tecnología</s:a></li>
                            <li><s:url id="compu" action="computadoras.action"/>
                            <s:a href="%{compu}">Computadoras</s:a></li>
                            <li><s:url id="depor" action="deporte.action"/>
                            <s:a href="%{depor}">Deporte</s:a></li>
                            <li><s:url id="hogar" action="hogar.action"/>
                            <s:a href="%{hogar}">Hogar</s:a></li>
                            <li><s:url id="muebles" action="muebles.action"/>
                            <s:a href="%{muebles}">Muebles</s:a></li>
                            <li><s:url id="linea" action="lineaBlanca.action"/>
                            <s:a href="%{linea}">Línea Blanca</s:a></li>
                            <li><s:url id="salud" action="saludYBelleza.action"/>
                            <s:a href="%{salud}">Salud y Belleza</s:a></li>
                            <li><s:url id="damas" action="damas.action"/>
                            <s:a href="%{damas}">Damas</s:a></li>
                            <li><s:url id="caballeros" action="caballeros.action"/>
                            <s:a href="%{caballeros}">Caballeros</s:a></li>
                            <li><s:url id="zapatos" action="zapatos.action"/>
                            <s:a href="%{zapatos}">Zapatos</s:a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Más<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><s:url id="bebes" action="bebes.action"/>
                                    <s:a href="%{bebes}">Bebés</s:a></li>
                                    <li><s:url id="infantil" action="infantil.action"/>
                                    <s:a href="%{infantil}">Infantil</s:a></li>                
                                    <li><s:url id="video" action="videojuegos.action"/>
                                    <s:a href="%{video}">Videojuegos</s:a></li>
                                    <li><s:url id="juguetes" action="juguetes.action"/>
                                    <s:a href="%{juguetes}">Juguetes</s:a></li>
                                    <li><s:url id="libros" action="libros.action"/>
                                    <s:a href="%{libros}">Libros CD y DVD</s:a></li>
                                    <li><s:url id="vinos" action="vinos.action"/>
                                    <s:a href="%{vinos}">Vinos</s:a></li>
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

        <!--Empieza ventana modal -->
        <div class="modal fade" id="miventana" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h2>Iniciar sesión</h2>
                        <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="10">
                    </div>
                    <div class="modal-body">
                        <s:form action="#" name="#" method="post" theme="simple" cssClass="form-horizontal">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">Nombre usuario:</label>
                                <div class="col-lg-8">
                                    <s:textfield name="nombre" cssClass="form-control" placeholder="Nombre de usuario"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label">Contraseña:</label>
                                <div class="col-lg-8">
                                    <s:password name="password" cssClass="form-control" placeholder="Contraseña"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <s:submit value="Entrar" cssClass="btn btn-primary"/>
                                </div>
                            </div>
                        </s:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Terminaa ventana modal -->