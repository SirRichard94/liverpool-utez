<%-- 
    Document   : index
    Created on : 3/10/2014, 10:52:12 PM
    Author     : Carlos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Liverpool - Menú Administrador</title>
        <%@include file="headerAdmin.jsp"%>

    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h1>Menú Administrador</h1>
            <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
            <br/><br/>
            <div class="col-4 col-sm-4 col-lg-4">
                <img class="img-rounded center-block" src="../imagenes/admin.png">
                <h2 class="text-center">Administradores</h2>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Consultar &raquo;</s:a></p>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Registrar &raquo;</s:a></p>
            </div>
            <div class="col-4 col-sm-4 col-lg-4">
                <img class="img-rounded center-block" src="../imagenes/empleado.png">
                <h2 class="text-center">Empleados</h2>
                <s:url id="consultarEmpleados" action="empleadoR.action"/>
                <p class="text-center"><s:a href="%{consultarEmpleados}" cssClass="btn btn-primary">Consultar &raquo;</s:a></p>
                <s:url id="resgistrarEmpleado" action="empleadoCreate.action"/>
                <p class="text-center"><s:a href="%{resgistrarEmpleado}" cssClass="btn btn-primary">Registrar &raquo;</s:a></p>
            </div>
            <div class="col-4 col-sm-4 col-lg-4">
                <img class="img-rounded center-block" src="../imagenes/cliente.png">
                <h2 class="text-center">Clientes</h2>
                <s:url id="consultarClientes" action="clienteR.action"/>
                <p class="text-center"><s:a href="%{consultarClientes}" cssClass="btn btn-primary">Consultar &raquo;</s:a></p>
                <s:url id="resgistrarCliente" action="clienteCreate.action"/>
                <p class="text-center"><s:a href="%{resgistrarCliente}" cssClass="btn btn-primary">Registrar &raquo;</s:a></p>
            </div>
            <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
            <br/><br/>
            <div class="col-4 col-sm-4 col-lg-4">
                <img class="img-rounded center-block" src="../imagenes/reporte3.png" width="50%" height="50%">
                <h2 class="text-center">Reportes</h2>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Reporte inventario &raquo;</s:a></p>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Reporte estadístico &raquo;</s:a></p>
            </div>

        </div><!--/span-->

        


    <%@include file="footer.jsp"%>
</div><!--/.container-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../b3.1.1/js/bootstrap.min.js"></script>
</body>
</html>