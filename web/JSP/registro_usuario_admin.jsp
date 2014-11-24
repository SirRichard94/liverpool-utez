<%-- 
    Document   : registro
    Created on : 3/11/2014, 06:46:14 PM
    Author     : Carlos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Liverpool - Resgistrar usuario</title>
<%@include file="cabecera.jsp"%>

            <div class="container">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <ol class="breadcrumb" id="migas">
                        <li><a  id="letras_rosas" href="#">Inicio</a></li>
                        <li class="active">Registrar usuario</li>
                    </ol>
                    <h1>Registrar usuario</h1>
                </div><!--/span-->
                <div class="col-md-12">
                    <br>
                </div>
                <form class="form-horizontal" role="form" action="UsuarioController?action=create" method="post" accept-charset="ISO-8859-1"><br />
                    <div class="col-6 col-sm-6 col-lg-6">
                        <h4 id="letras_rosas">Datos personales</h4>
                        <div class="form-group">
                            <label for="ejemplo" class="col-lg-2 control-label"><span id="letras_rosas">*</span>Nombre:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputNombre" name="inputNombre"
                                   placeholder="Nombre" required="" onkeypress="return soloLetras(event)" maxlength="50">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Apellido paterno:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputApePaterno" name="inputApePaterno"
                                   placeholder="Apellido paterno" required="" onkeypress="return soloLetras(event)" maxlength="50">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Apellido materno:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputApeMaterno" name="inputApeMaterno"
                                   placeholder="Apellido materno" required="" onkeypress="return soloLetras(event)" maxlength="50">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Cuenta bancaria:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputCuentaBancaria" name="inputCuentaBancaria"
                                   placeholder="Cuenta bancaria" required="" maxlength="50" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Fecha de nacimiento:</label>
                        <div class="col-lg-8">
                            <input id="inputFechaEsFormat" class="form-control" type="text" name="n3" required=""
                                   placeholder="Fecha de nacimiento"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Dirección:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputDireccion" name="inputDireccion"
                                   placeholder="Dirección" required="" maxlength="50" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Correo electrónico:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputCorreo" name="inputCorreo"
                                   placeholder="Correo electrónico" required="" maxlength="50" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button type="submit" class="btn btn-primary">Registrar</button>
                        </div>
                    </div>
                    </div>
                    
                    <div class="col-6 col-sm-6 col-lg-6">
                        <h4 id="letras_rosas">Información de la cuenta</h4>
                        <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Nombre usuario:</label>
                        <div class="col-lg-8">
                            <input type="text" autocomplete="off" class="form-control" id="inputNombreUsuario" name="inputNombreUsuario"
                                   placeholder="Nombre de usuario" required="" onkeypress="return soloLetras(event)" maxlength="50">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ejemplo" class="col-lg-2 control-label">Contraseña:</label>
                        <div class="col-lg-8">
                            <input type="password" autocomplete="off" class="form-control" id="inputPassword" name="inputPassword"
                                   placeholder="Contraseña" required="" maxlength="50" />
                        </div>
                    </div>
                    </div>
                </form>
                
                <div class="col-md-12">
                    <br/><br/>
                </div>

                <script>
                    $('#inputFecha').datetimepicker();
                    $('#inputFechaEs').datetimepicker({lang: "es"});
                    $('#inputFechaEsFormat').datetimepicker({
                        lang: "es", timepicker: false,
                        format: 'd-m-Y'});
                    //cuando se carge el valor de... se le agrega la fecha+5días a #fSuma
                    $('#inputFechaEsFormat').change(function() {
                        $.ajax({url: "ServletFechas",
                            type: 'POST',
                            async: false,
                            data: {fechaBase: $('#inputFechaEsFormat').val(),
                                formato: "dd-MM-yyyy",
                                dias: 5
                            },
                            success: function(respuesta) {
                                $('#fSuma').val(respuesta);
                            }
                        });
                    });
                </script>

                <%@include file="piedepagina.jsp" %>
            </div><!--/.container-->
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="../b3.1.1/js/bootstrap.min.js"></script>
            <script src="../js/bootstrap-datetimepicker.min.js"></script>
    </body>
</html>
