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
        <title>Liverpool - Iniciar sesión</title>
        <%@include file="header.jsp"%>

    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <ol class="breadcrumb" id="migas">
                <li><a  id="letras_rosas" href="#">Inicio</a></li>
                <li class="active">Iniciar sesión</li>
            </ol>
            <h1>Iniciar sesión</h1>
        </div><!--/span-->
        <div class="col-md-12">
            <br>
        </div>
        <s:form action="actionlogin" name="#" method="post" theme="simple" cssClass="form-horizontal">
            <div class="form-group">
                <label class="col-lg-2 control-label">Nombre usuario:</label>
                <div class="col-lg-8">
                    <s:textfield name="usuario" cssClass="form-control" placeholder="Nombre de usuario"/>
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
                    <s:submit value="Iniciar sesion" cssClass="btn btn-primary"/>
                </div>
            </div>
        </s:form>

        <hr>

        <%@include file="footer.jsp" %>
    </div><!--/.container-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../b3.1.1/js/bootstrap.min.js"></script>
</body>
</html>