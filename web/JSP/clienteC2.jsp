<%-- 
    Document   : registro
    Created on : 3/11/2014, 06:46:14 PM
    Author     : Carlos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Liverpool - Resgistrar cliente</title>
        <%@include file="header.jsp"%>

    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h1>Registrate</h1>
        </div><!--/span-->
        <div class="col-md-12">
            <br>
        </div>
        <s:form action="clienteC2" name="registrarCliente" method="post" theme="simple" cssClass="form-horizontal">
            <div class="col-6 col-sm-6 col-lg-6">
                <h4 id="letras_rosas">Datos personales</h4>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label"><span id="letras_rosas">*</span>Nombre:</label>
                    <div class="col-lg-8">
                        <s:textfield name="nombre" cssClass="form-control" placeholder="Nombre" autocomplete="off"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Apellido paterno:</label>
                    <div class="col-lg-8">
                        <s:textfield name="apellidoP" cssClass="form-control" placeholder="Apellido paterno"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Apellido materno:</label>
                    <div class="col-lg-8">
                        <s:textfield name="apellidoM" cssClass="form-control" placeholder="Apellido materno"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Cuenta bancaria:</label>
                    <div class="col-lg-8">
                        <s:textfield maxLength="10" name="cuentaB" cssClass="form-control" placeholder="Cuenta bancaria"/>

                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Fecha de nacimiento:</label>
                    <div class="col-lg-8">
                        <s:textfield name="fechaN" id="inputFechaEsFormat" cssClass="form-control" placeholder="Fecha de nacimiento"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Dirección:</label>
                    <div class="col-lg-8">
                        <s:textfield name="direccion" cssClass="form-control" placeholder="Dirección"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Correo electrónico:</label>
                    <div class="col-lg-8">
                        <s:textfield name="email" cssClass="form-control" placeholder="Correo electrónico"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <s:submit value="Registrar" cssClass="btn btn-primary"/>
                    </div>
                </div>
            </div>

            <div class="col-6 col-sm-6 col-lg-6">
                <h4 id="letras_rosas">Información de la cuenta</h4>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Nombre usuario:</label>
                    <div class="col-lg-8">
                        <s:textfield name="nombreU" cssClass="form-control" placeholder="Nombre usuario"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-2 control-label">Contraseña:</label>
                    <div class="col-lg-8">
                        <s:textfield name="password" cssClass="form-control" placeholder="Contraseña"/>
                    </div>
                </div>
            </div>
        </s:form>

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

        <%@include file="footer.jsp" %>
    </div><!--/.container-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../b3.1.1/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datetimepicker.min.js"></script>
</body>
</html>
