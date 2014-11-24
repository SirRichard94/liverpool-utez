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
        <title>Liverpool - Clientes</title>
        <%@include file="headerAdmin.jsp"%>

    <div class="container">
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <h1>Clientes</h1>
        </div><!--/span-->
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg2">
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg2">
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg2">
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg2">
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <br/>
        <s:form name="link" action="clienteCreate" method="post">
            <s:submit value="Registrar cliente" cssClass="btn btn-primary pull-right"/>
        </s:form>
        </div>
        <div class="col-md-12">
            <br>
        </div>

        <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
        <table id="tabla1" class="table table-striped table-bordered" style="background: lightpink">
            <thead>
                <tr align="center">
                    <td>Id</td>
                    <td>Nombre</td>
                    <td>Apellido paterno</td>
                    <td>Apellido materno</td>
                    <td>Fecha de nacimiento</td>
                    <td>Dirección</td>
                    <td>Cuenta bancaria</td>
                    <td>Nombre de usuario</td>
                    <td>Contraseña</td>
                    <td>E-mail</td>
                    <td>Tipo de usuario</td>
                    <td>Modificar</td>
                    <td>Eliminar</td>
                </tr>
            </thead>
            <tbody>
                <s:iterator id="usuarios" value="lista">
                    <s:url id="actualizarUsuario" action="clienteU1.action">
                        <s:param name="idUsuario" value="idUsuario"/>
                    </s:url>                
                    <s:url id="eliminarUsuario" action="clienteD.action">
                        <s:param name="idUsuario" value="idUsuario"/>
                    </s:url>
                    <tr>
                        <td><s:property value="idUsuario"/></td>
                        <td><s:property value="nombre"/></td>
                        <td><s:property value="apellidoP"/></td>
                        <td><s:property value="apellidoM"/></td>
                        <td><s:property value="fechaN"/></td>
                        <td><s:property value="direccion"/></td>
                        <td><s:property value="cuentaB"/></td>
                        <td><s:property value="nombreU"/></td>
                        <td><s:property value="password"/></td>
                        <td><s:property value="email"/></td>
                        <td><s:property value="tipoU"/></td>
                        <td><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Modificar</s:a></td>
                        <td><s:a href="%{eliminarUsuario}" cssClass="btn btn-info">Eliminar</s:a></td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>

        <%@include file="footer.jsp" %>
    </div><!--/.container-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../b3.1.1/js/bootstrap.min.js"></script>
</body>
</html>
