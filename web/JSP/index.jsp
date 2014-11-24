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
        <title>Liverpool</title>
        <%@include file="header.jsp"%>

    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Menú</button>
            </p>
            <div class="jumbotron">
                <h1>Liverpool es parte de tu vida!</h1>
                <p>Info Liverppol/slider</p>
            </div>
            <div class="col-6 col-sm-6 col-lg-6">
                <h2>Contendo1</h2>
                <p> contenido contenido contenido contenido contenido </p>
                <a href="registro_producto.jsp">Registrar producto</a>
                <s:form name="consulta" action="consultarE" method="post">
                    <s:submit value="Consultar Empleados" cssClass="btn btn-primary"/>
                </s:form>
                <p><a class="btn btn-primary" href="" role="button">más &raquo;</a></p>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-6">
                <h2>Contenido2</h2>
                <p> contenido contenido contenido contenido contenido </p>
		
		
                <p><a class="btn btn-primary" href='<s:url action="home"/>' role="button">más &raquo;</a></p>
            </div><!--/span-->

        </div><!--/span-->

        


    <%@include file="footer.jsp"%>
</div><!--/.container-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../b3.1.1/js/bootstrap.min.js"></script>
</body>
</html>