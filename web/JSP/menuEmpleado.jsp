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
        <title>Liverpool - Menú Empleado</title>
        <%@include file="headerEmpleado.jsp"%>

    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h1>Menú Empleado</h1>
            <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
            <br/><br/>
            <div class="col-xs-6 col-sm-6 col-lg-6">
                <img class="img-rounded center-block" src="../imagenes/bag.png" width="35%" height="35%">
                <h2 class="text-center">Productos</h2>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Consultar &raquo;</s:a></p>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Registrar &raquo;</s:a></p>
            </div>
            <div class="col-xs-6 col-sm-6 col-lg-6">
                <img class="img-rounded center-block" src="../imagenes/reporte3.png" width="35%" height="35%">
                <h2 class="text-center">Reportes</h2>
                <s:url id="generarReporteInventario" action="reporteInventario.action"/>
                <p class="text-center"><s:a href="%{generarReporteInventario}" cssClass="btn btn-primary">Reporte inventario &raquo;</s:a></p>
                <p class="text-center"><s:a href="%{actualizarUsuario}" cssClass="btn btn-primary">Reporte ventas &raquo;</s:a></p>
            </div>

        </div><!--/span-->

        


    <%@include file="footer.jsp"%>
</div><!--/.container-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../b3.1.1/js/bootstrap.min.js"></script>
</body>
</html>