<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo</title>
        <link href="<%=request.getContextPath()%>/css/stylepersonal.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min_personal.css" rel="stylesheet" type="text/css"/>
        <script src="<%=request.getContextPath()%>/js/jquery_personal.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script>
            const cerrar = function () 
            {
            document.form.action = "<%=request.getContextPath()%>/CloseController"; // destino  hacia  otra  pagina 
                    document.form.method = "GET"; //  tipo redireccionamiento 
                    document.form.submit(); // es  un metodo para enviar los  parametros
            }
        </script> 
        <script type="text/javascript">
            jQuery(function($)){
            $('#carousel1'.carousel)
                    ({
                    interval:10000
                    });
                    var clickEvent = false;
                    $('#carousel1').on('click', '.nav a', function (){
            clickEvent = true;
                    $('.nav li').removeClass('active');
                    $(this).parent().addClass('active');
            }).on('slid.bs.carousel', function(e){
            if (!clickEvent){
            var count = $('.nav').children().length - 1;
                    var courrent = $('.nav li.active');
                    current.removeClass('active'.next().addClass('active');
                            var id = parseInt(current.data('slide-to'));
                            if (count == id){
                    $('.nav li').first().addClass('active');
                    }

                    }
                    clickEvent = false;
                    });
            });
        </script>

    </head>

    <body>
        <div class="wrapper">
            <div class="container header_top">
                <img width="100%" src="<%=request.getContextPath()%>/imagenes/encabezado.jpg"/>
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-exl-collapse">
                            <span class="sr-only">Desplegar navegación</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>
                    <div class="collapse navbar-collapse navbar-exl-collapse">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#">
                                    <img src="<%=request.getContextPath()%>/imagenes/main.png" alt="Ir principal"><b>Principal</b>

                                </a>

                            </li>

                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="<%=request.getContextPath()%>/imagenes/mantenimiento.png" alt="Ir Mantenimiento">Mantenimientos <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Semestre</a></li>
                                    <li><a href="#">Carrera profesional</a></li>
                                    <li><a href="#">Alumno</a></li>
                                    <li><a href="#">Docente</a></li>
                                    <li><a href="#">Materia</a></li>
                                    <li><a href="#">Unidad tematica</a></li>
                                    <li><a href="#">Tema</a></li>
                                    <li><a href="#">Tipo Examen</a></li>
                                    <li><a href="#">Rol</a></li>
                                    <li><a href="#">Nivel Dificultad</a></li>


                                </ul>
                            </li>
                        </ul>

                    </div>
                </nav>

            </div>

            <div class="container">
                <div class="row">
                    <div id="contenido">

                        <div id="carousel1" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img width="100%" height="100%" src="<%=request.getContextPath()%>/imagenes/principal2.png"/>
                                    <div class="carousel-caption">

                                    </div>
                                </div>
                                <div class="item">
                                    <img width="100%" height="100%" src="<%=request.getContextPath()%>/imagenes/principal3.png"/>
                                    <div class="carousel-caption">
                                        <div class="col-lg-12 text-center v-center" style="font-size: 39pt;">
                                            <a href="#"><span class="avatar"><i class="fa fa-google-plus"></i></span></a>
                                            <a href="#"><span class="avatar"><i class="fa fa-linkedin"></i></span></a>
                                            <a href="#"><span class="avatar"><i class="fa fa-facebook"></i></span></a>
                                            <a href="#"><span class="avatar"><i class="fa fa-github"></i></span></a>
                                        </div>
                                    </div>


                                </div>
                                <div class="item">
                                    <img width="100%" height="100%" src="<%=request.getContextPath()%>/imagenes/principal1.png"/>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <div>
                <center>
                    <form name="form">
                        <table style="width: 400px;height: 100px ;background-color: greenyellow">
                            <tr>
                                <td colspan="2">
                            <center>
                                <input type="button" name="btnCerrar" value="Cerrar Sesion"  onclick="cerrar()"/>
                            </center>
                            </td>

                            </tr>
                        </table>
                    </form>
                </center>
            </div>
            <div class="container footer">
                <div class="footer_bottom">
                    <div class="copy">
                        <div>
                            <p>Derechos Reservados</p>
                        </div>
                    </div>
                    <ul class="social">
                        <li><a href="#"><i class="fb">  </i></a></li>
                        <li><a href="#"><i class="tw">  </i></a></li>
                    </ul>
                </div>
            </div>

        </div>




    </body>

</html>
