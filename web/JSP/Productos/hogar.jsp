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
        <title>Liverpool - Hogar</title>
        <%@include file="../header.jsp"%>

    <div class="container">
        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <%@include file="menuProductos.jsp"%>
                <!-- Content Column -->
                <div class="col-md-10">
                    <h2>Hogar</h2>
                    <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, et temporibus, facere perferendis veniam beatae non debitis, numquam blanditiis necessitatibus vel mollitia dolorum laudantium, voluptate dolores iure maxime ducimus fugit.</p>
                </div>
            </div>
            <!-- /.row -->

        <%@include file="../footer.jsp" %>
    </div><!--/.container-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../b3.1.1/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datetimepicker.min.js"></script>
</body>
</html>
