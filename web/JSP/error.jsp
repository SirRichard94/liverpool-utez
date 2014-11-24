<%-- 
    Document   : registro
    Created on : 3/11/2014, 06:46:14 PM
    Author     : Carlos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Liverpool - Modificar producto</title>
        <%@include file="header.jsp"%>

    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <ol class="breadcrumb" id="migas">
                <li><a  id="letras_rosas" href="#">Inicio</a></li>
                <li class="active">Modificar producto</li>
            </ol>
            <h1>Modificar producto</h1>
        </div><!--/span-->
        <div class="col-md-12">
            <br>
        </div>
        <form class="form-horizontal" role="form" action="UsuarioController?action=create" method="post" accept-charset="ISO-8859-1"><br />
            <div class="col-6 col-sm-6 col-lg-6">
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label"><span id="letras_rosas">*</span>Código:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputCodigo" name="inputCodigo"
                               placeholder="Código" required="" onkeypress="return soloLetras(event)" maxlength="50">
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Nombre:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputNombreo" name="inputNombre"
                               placeholder="Nombre" required="" onkeypress="return soloLetras(event)" maxlength="50">
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Marca:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputMarca" name="inputMarca"
                               placeholder="Marca" required="" onkeypress="return soloLetras(event)" maxlength="50">
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Tipo:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputTipo" name="inputTipo"
                               placeholder="Tipo" required="" maxlength="50" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Imágen:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputImagen" name="inputImagen"
                               placeholder="Imágen" required="" maxlength="50" />
                    </div>
                </div>



                <div class="form-group">
                    <div class="col-lg-offset-4 col-lg-10">
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-6 col-lg-6">
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Precio compra:</label>
                    <div class="col-lg-6">
                        <input id="inputPrecioCompra" class="form-control" type="text" name="inputPrecioCompra" required=""
                               placeholder="Precio compra"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Precio venta:</label>
                    <div class="col-lg-6">
                        <input id="inputPrecioVenta" class="form-control" type="text" name="inputPrecioVenta" required=""
                               placeholder="Precio venta"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Número de existencias:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputExistencias" name="inputExistencias"
                               placeholder="Número de existencias" required="" maxlength="50" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="ejemplo" class="col-lg-4 control-label">Estado:</label>
                    <div class="col-lg-6">
                        <input type="text" autocomplete="off" class="form-control" id="inputEstado" name="inputEstado"
                               placeholder="Estado" required="" maxlength="50" />
                    </div>
                </div>

            </div>
        </form>

        <div class="col-md-12">
            <br/><br/>
        </div>


        <hr size=5 width="100%" color="#e53e8e" alignd = center>
        <%@include file="footer.jsp" %>
    </div><!--/.container-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../b3.1.1/js/bootstrap.min.js"></script>
</body>
</html>
