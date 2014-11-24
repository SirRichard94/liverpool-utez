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
            <div class="">
                <!-- Header Carousel -->
                <header id="myCarousel" class="carousel slide">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                        <li data-target="#myCarousel" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <div>
                                <img src="../imagenes/s1.jpg" width="100%" height="100%">
                            </div>
                        </div>
                        <div class="item">
                            <div>
                                <img src="../imagenes/s2.jpg" width="100%" height="100%">
                            </div>
                        </div>
                        <div class="item">
                            <div>
                                <div>
                                    <img src="../imagenes/s3.jpg" width="100%" height="100%">
                                </div> 
                            </div>
                        </div>
                        <div class="item">
                            <div>
                                <div>
                                    <img src="../imagenes/s4.jpg" width="100%" height="100%">
                                </div> 
                            </div>
                        </div>
                        <div class="item">
                            <div>
                                <div>
                                    <img src="../imagenes/s5.jpg" width="100%" height="100%">
                                </div> 
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="icon-prev"></span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="icon-next"></span>
                    </a>
                </header>
            </div>
            <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
            <div class="col-6 col-sm-6 col-lg-6">
                <h2 id="letras_rosas" class="text-center">Juguetes para todos</h2>
                <img class="center-block" src="../imagenes/juguetes.jpg">
                <s:url id="verzapatos" action="juguetes.action"/>
                <s:a href="%{verzapatos}" cssClass="btn btn-primary">Ver más &raquo;</s:a>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-6">
                <h2 id="letras_rosas" class="text-center">Tecnología sin límite</h2>
                <img class="center-block" src="../imagenes/computo.jpg">
                <s:url id="verzapatos" action="tecnologia.action"/>
                <s:a href="%{verzapatos}" cssClass="btn btn-primary">Ver más &raquo;</s:a>
            </div><!--/span-->
            <img class="img-rounded" src="../imagenes/rosa.jpg" width="100%" height="2">
            <div class="col-6 col-sm-6 col-lg-6">
                <h2 id="letras_rosas" class="text-center">Los mejores zapatos para ti</h2>
                <img class="center-block" src="../imagenes/zapatos.jpg">
                <s:url id="verzapatos" action="zapatos.action"/>
                <s:a href="%{verzapatos}" cssClass="btn btn-primary">Ver más &raquo;</s:a>
            </div><!--/span-->
            <div class="col-6 col-sm-6 col-lg-6">
                <h2 id="letras_rosas" class="text-center">Lo mejor para tu hogar</h2>
                <img class="center-block" src="../imagenes/lavadora.jpg" width="41%" height="41%">
                <s:url id="verzapatos" action="lineaBlanca.action"/>
                <s:a href="%{verzapatos}" cssClass="btn btn-primary">Ver más &raquo;</s:a>
            </div><!--/span-->
        </div><!--/span-->




        <%@include file="footer.jsp"%>
    </div><!--/.container-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../b3.1.1/js/bootstrap.min.js"></script>
    <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })
    </script>
</body>
</html>