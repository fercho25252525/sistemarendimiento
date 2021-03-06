<%@page import="ControladorL.C_Login"%>
<%@page import="Modelo.M_Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession(true);
    Object numeroDocumento = sesion.getAttribute("numeroDocumento") == null ? null : sesion.getAttribute("numeroDocumento");
    String ro = sesion.getAttribute("foto").toString();
    String rol = sesion.getAttribute("rol").toString();
    String primerNombre = sesion.getAttribute("primerNombre").toString();
    String PrimerApellido = sesion.getAttribute("primerApellido").toString();
    String correo = sesion.getAttribute("correo").toString();
    String celular = sesion.getAttribute("celular").toString();
    String SegNombre = sesion.getAttribute("SegNombre").toString();
    String SegApelli = sesion.getAttribute("SegApelli").toString();
    if (sesion != null) {
        if(numeroDocumento != null){
            if(!rol.equalsIgnoreCase("Entrenador")&&!rol.equalsIgnoreCase("Administrador")){
                response.sendRedirect("../../vistas/Usuario/login.jsp");
            }
        }else{
            response.sendRedirect("../../vistas/Usuario/login.jsp");
        }
    } else {
        response.sendRedirect("../../vistas/Usuario/login.jsp");
    }
%>
<html lang="es"> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Entrenador/DescripcionTest</title>
        <link href="<%=request.getContextPath()%>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"><link rel="stylesheet" href="<%=request.getContextPath()%>/css/Administrador/estilosModulos.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/estilosTabla.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/Entrenador/cosasstablas.css">
        <link href="<%=request.getContextPath()%>/css/sb-admin.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/dataTable/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" href="../../alertifyjs/css/alertify.min.css"/>
        <link rel="stylesheet" href="../../sweetAlert2/sweetalert2.min.css"/> 
        <link rel="stylesheet" href="<%=request.getContextPath()%>/main.css"/>
    </head>
    <style>
        .letra{
            font-family: cursive;
            font-weight: 600;
            font-size: 1.3em;
        }
        .letraPr{
            font-family: cursive;
            font-weight: 500;
            font-size: 1.2em;
        }
        .subLetra{
            font-weight: 500;
            font-size: 1.2em;
            font-family: initial
        }
        img{
            transition: all 0.6s linear;
        }
        img:hover{
            transform: scale(1.8);
            border: 0.5px solid #64c47b;
            margin-top: 4px;
        }
        body{
            padding: 0%!important;
        }
    </style>
    <body id="page-top">
        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
            <a class="navbar-brand mr-1 letraPr" href="Entrenador.jsp"><%= " " + rol%></a>
            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>
            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <div class="input-group-append">
                        <button id="traducirEntrenadorIngles" class="btn btn-dark" style="color: #fff;border-radius: 10px" type="button">
                            ING
                        </button>
                        <button id="traducirEntrenadorEspa??ol" class="btn btn-dark" style="color: #fff;border-radius: 10px" type="button">
                            ESP
                        </button>
                    </div>
                </div>
            </form>

            <!-- MODAL PQRS -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li>
                    <button href="#ventanaPQRS" id="pqrs" class="btn  btn-primary letraPr" data-toggle="modal"> PQRS</button>
                    <div class="modal fade" id="ventanaPQRS">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button tyle="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                    <h4 class="modal-title" id="mensajeModal">Tiene alguna pregunta, queja, reclamo, o sugerencia, escribanos...</h4>
                                    <div class="Myform-top-right">
                                        <i class="fas fa-mail-bulk"></i>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <form id="frm_PQRS">
                                        <div class="form-group"> 
                                            <input type="hidden" name="txttelefono" value="<%=celular%>" id="Telefono" class=" form-control"/><br>
                                            <input type="hidden" name="txtrolpqrs" value="<%=rol%>" id="rolpqrs" class=" form-control"/><br>
                                            <textarea id="lim" type="text" name="txtmensaje" id="mensaje" style="width: 100%;  height:200px" class="campo4 form-control"  style="width: 100%;  height:100px"></textarea>
                                            <input type="hidden" name="txtnombre" value="<%=primerNombre%> <%=SegNombre%>" id="Nombre" class=" form-control"/><br>                                            
                                            <input type="hidden" name="txtapellido" value="<%=PrimerApellido%> <%=SegApelli%>" id="Apellidos" class=" form-control"/><br>
                                            <input type="hidden" name="txtcorreo" value="<%=correo%>" id="mail" class=" form-control"/><br>

                                            <center>
                                                <button type="button" id="cerrarModal" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                                <button id="btn_Enviarrr" type="submit"  class="btn btn-success">Enviar</button>       
                                            </center>
                                        </div>
                                    </form>
                                    <!--<textarea id="" name="subject" placeholder="" style="width: 90%;  height:200px"></textarea>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="../../<%=ro %>" width="25" height="25" style="border-radius: 40px">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item subLetra" href="#"><i class="fas fa-user"></i> <%=  primerNombre + " "+ PrimerApellido%></a>
                        <a class="dropdown-item subLetra" href="#"><i class="fas fa-id-card"></i> <%=  numeroDocumento%></a>
                        <a class="dropdown-item subLetra" href="#"><i class="fas fa-envelope"></i> <%=  correo%></a>
                        <a id="cerrarSesionAviso" class="dropdown-item subLetra" href="#" data-toggle="modal" data-target="#cerrarSesion"><i class="fas fa-power-off"></i> Cerrar sesi??n</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="modal fade" id="cerrarSesion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">??Listo para salir?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">??</span>
                        </button>
                    </div>
                    <div id="selecionCerrarSesion" class="modal-body">Seleccione "Cerrar sesi??n" a continuaci??n si est?? listo para finalizar su sesi??n actual.</div>
                    <div class="modal-footer">
                        <button id="CancelarModal" class="btn btn-danger" type="button" data-dismiss="modal">Cancelar</button>
                        <a id="cerrarSesoin" class="btn btn-primary" href="../../Usuarion?accion=Logout">Cerrar sesi??n</a>
                    </div>
                </div>
            </div>
        </div>

        <div id="wrapper">
            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link letraPr" href="Jugador.jsp">
                        <i class="fas fa-child"></i>
                        <span id="consultarJugador">Consultar jugador</span>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link letraPr" href="Prestamos.jsp">
                        <i class="fas fa-handshake"></i>
                        <span id="Solicitarprestamo">Solicitar pr??stamo</span>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link letraPr"  href="DescripcionTest.jsp">
                        <i class="fas fa-handshake"></i>
                        <span id="Descripciorendimiento">Descripci??n test de rendimiento</span>
                    </a>
                </li>
            </ul>

            <!-- area de trabajo                     -->
            <div id="content-wrapper">
                <br>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <div class="my-form-top">
                                <div class="myform-top-left">
                                    <br>
                                    <h3 id="consultedescripciontest"style="font-family: cursive; font-weight: 600; font-size: 2.1em">Consultar la descripci??n  de los test.</h3>
                                </div>
                                <div class="Myform-top-right">
                                    <i class="fas fa-window-restore"></i>
                                </div>
                            </div>
                            <div class="my-form-botton">
                                <div class="ancho">
                                    <div class="table-responsive"> <br>
                                        <table id="example" class="table col-md-12 table-condensed table-hover table-striped table-bordered text-center">
                                            <thead class="letra">
                                                <tr>
                                                    <th id="iddescripcion">Id descripci??n  test</th>
                                                    <th id="nombretestdescripcion">Nombre test</th>
                                                    <th id="descripciontesttestss">Descripci??n </th>             
                                                </tr>
                                            </thead>
                                            <tbody class="subLetra">
                                                <tr>
                                                    <td>01</td>
                                                    <td id="TestvelocidadDes">Test velocidad</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalVelocidad"><i class="far fa-clipboard"></i></button></td>                    
                                                </tr>  
                                                <tr>
                                                    <td> 02</td>
                                                    <td id="TestfuerzaDes">Test fuerza</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalFuerza"><i class="far fa-clipboard"></i></button></td>                
                                                </tr> 
                                                <tr>
                                                    <td> 03</td>
                                                    <td id="Testresistenciades">Test resistencia</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalResistencia"><i class="far fa-clipboard"></i></button></td>                
                                                </tr> 
                                                <tr>
                                                    <td> 04</td>
                                                    <td id="Testcoordinaciondes">Test coordinaci??n</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalCoordinacion "><i class="far fa-clipboard"></i></button></td>                      
                                                </tr> 
                                                <tr>
                                                    <td> 05</td>
                                                    <td id="Testpasedes">Test pase</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalPase "><i class="far fa-clipboard"></i></button></td>                
                                                </tr> 
                                                <tr>
                                                    <td> 06</td>
                                                    <td id="Tescabeceodes">Test cabeceo</td> 
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalCabeceo "><i class="far fa-clipboard"></i></button></td>            
                                                </tr> 
                                                <tr>
                                                    <td> 07</td>
                                                    <td id="Testconducci??ndes">Test conducci??n</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalConduccion "><i class="far fa-clipboard"></i></button></td>       
                                                </tr> 
                                                <tr>
                                                    <td> 08 </td>
                                                    <td id="Testtirodes">Test tiro</td>
                                                    <td><button class="btn btn-outline-success" data-toggle="modal" data-target="#modalTiro "><i class="far fa-clipboard"></i></button></td>                  
                                                </tr> 
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- modal velocidad -->
                    <div class="modal fade" id="modalVelocidad" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 id="descripcionvelocidaddes" style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripcion test velocidad.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body" align="justify">
                                                <h4 id="testdevelocidaddes">TEST DE VELOCIDAD DE 50 M</h4> <br>

                                                <h4 objetivounodes>Objetivo:</h4> 

                                                <h3 id="medilavelocidaddes">Medir la velocidad de desplazamiento.</h3><br>

                                                <h4 materialunodes>Material:</h4>

                                                <h3 > Terreno liso, con la medida exacta.</h3>
                                                <h3>Cron??metro.</h3><br>
                                                <h4>Ejecuci??n:</h4>

                                                <h3 >Tras la l??nea de salida, a la voz de "listos" (el brazo del profesor estar?? en alto) los alumnos adoptar??n la posici??n de alerta. A la voz de "ya" (el brazo del profesor desciende) se comienza a correr y se pone en funcionamiento el cron??metro. Los alumnos deben tratar de recorrer a la mayor velocidad posible los 50 metros sin aflojar el ritmo de carrera hasta que se sobrepasa la l??nea de llegada, momento en que se detiene el cron??metro.</h3><br>

                                                <h4> Anotaci??n:</h4>

                                                <h3>El tiempo transcurrido en el recorrido expresado en segundos y d??cimas de segundo. Se anota el mejor tiempo de los dos intentos realizados.</h3><br>

                                                <h4>Valoraci??n del test:</h4> <br>

                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td>  </td>
                                                            <td>MUY BUENO</td>
                                                            <td>BUENO</td>
                                                            <td>NORMAL</td>
                                                            <td>MALO</td>
                                                            <td>MUY MALO</td>
                                                        </tr>
                                                    </tbody>

                                                    <tr>
                                                        <td>CHICOS</td>
                                                        <td>-6,6</td>
                                                        <td>6,6 - 7</td>
                                                        <td>7 - 7,4</td>
                                                        <td>7,4 - 8</td>
                                                        <td>+8</td>
                                                    </tr>

                                                    <tr>
                                                        <td>CHICAS</td>
                                                        <td>-7,8</td>
                                                        <td>7,8 - 8,3</td>
                                                        <td>8,3 - 8,8</td>
                                                        <td>8,8 - 9,2</td>
                                                        <td>+9,2</td>
                                                    </tr>
                                                </table>

                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- TEST FUERZA -->
                    <div class="modal fade" id="modalFuerza" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripci??n test fuerza.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body" align="justify">
                                                <h4>TEST FUERZA EXPLOSIVA, HORIZONTAL A PIES JUNTOS </h4> <br>

                                                <h4>Objetivo:</h4> 

                                                <h3>Medir la fuerza explosiva del jugador.</h3><br>

                                                <h4>Material:</h4>

                                                <h3> Cinta m??trica.</h3><br>
                                                <h4>Ejecuci??n:</h4>

                                                <h3>Tras la l??nea, con los pies a la misma altura y ligeramente separados, flexionar las piernas y saltar hacia delante con la mayor potencia posible. El salto no es v??lido si se rebasa la l??nea con los pies antes de despegar del suelo.</h3><br>

                                                <h4> Anotaci??n:</h4>

                                                <h3>Los metros y cent??metros desde la l??nea de salto hasta la marca de ca??da del ??ltimo apoyo del cuerpo. Se anota el mejor de los dos intentos realizados.</h3><br>

                                                <h4>Valoraci??n del test:</h4> <br>

                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td>  </td>
                                                            <td>MUY BUENO</td>
                                                            <td>BUENO</td>
                                                            <td>NORMAL</td>
                                                            <td>MALO</td>
                                                            <td>MUY MALO</td>
                                                        </tr>
                                                    </tbody>

                                                    <tr>
                                                        <td>CHICOS</td>
                                                        <td>+230</td>
                                                        <td>229 - 205</td>
                                                        <td>204 - 185</td>
                                                        <td>184 - 165</td>
                                                        <td>-164</td>
                                                    </tr>

                                                    <tr>
                                                        <td>CHICAS</td>
                                                        <td>+190</td>
                                                        <td>189 - 175</td>
                                                        <td>174 - 160</td>
                                                        <td>159 - 145</td>
                                                        <td>-144</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- test resistencia -->
                    <div class="modal fade" id="modalResistencia" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripcion test resistencia.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4>Test de COURSE-NAVETTE</h4> <br>
                                                <h4>Objetivo:</h4> 
                                                <h3>Medir la capacidad aer??bica m??xima.</h3><br>
                                                <h4>Material:</h4>
                                                <h3> Espacio: pista de 20 m de longitud..</h3>
                                                <h3>Aparato de Cd+Cd de audio grabado con los sonidos que marcan el ritmo de carrer..</h3><br>
                                                <h4>Ejecuci??n:</h4>
                                                <h3>La velocidad se controla con una banda sonora que emite sonidos a intervalos regulares de un minuto con velocidad creciente. El alumno deber?? ajustar su propio ritmo al de los sonidos que se emiten, de tal manera que se encuentre en un extremo de la pista al o??r la se??al, con una aproximaci??n de 1 ?? 2 metros. Hay que tocar la l??nea con el pie. Al llegar al final de la pista, se da r??pidamente media vuelta y se sigue corriendo en el otro sentido.</h3>
                                                <h3>La velocidad, m??s lenta al principio, va aumentando paulatinamente cada 60 segundos. La finalidad del test consiste en ajustarse al ritmo impuesto durante el mayor tiempo posible. Se interrumpe la carrera en el momento en que ya no se puede seguir el ritmo impuesto, o cuando se considera que ya no va a poder llegar a uno de los extremos de la pista.</h3><br>
                                                <h4> Anotaci??n:</h4>
                                                <h3>Se anota la ??ltima cifra indicada por la banda sonora en el momento en que se ha parado: ??se es el resultado.</h3><br>
                                                <h4>Valoraci??n del test:</h4> <br>
                                                <table class="table border">                       
                                                    <tbody>
                                                        <tr>
                                                            <td>  </td>
                                                            <td>MUY BUENO</td>
                                                            <td>BUENO</td>
                                                            <td>NORMAL</td>
                                                            <td>MALO</td>
                                                            <td>MUY MALO</td>
                                                        </tr>
                                                    </tbody>

                                                    <tr>
                                                        <td>CHICOS</td>
                                                        <td>+10,5</td>
                                                        <td>10,4 - 8</td>
                                                        <td>7,9 - 5,1</td>
                                                        <td>5 - 3,6</td>
                                                        <td>-3,5</td>
                                                    </tr>

                                                    <tr>
                                                        <td>CHICAS</td>
                                                        <td>+9</td>
                                                        <td>8,9 - 7,5</td>
                                                        <td>7,4 - 5</td>
                                                        <td>4,9 - 3,1</td>
                                                        <td>-3</td>
                                                    </tr>
                                                </table>
                                                <img src="../../img/velocidad.PNG" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- test Coordinacion -->
                    <div class="modal fade" id="modalCoordinacion" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: nonene">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripcion test coordinacion.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4>Prueba de desplazamiento en un zig -zag con bal??n</h4> <br>

                                                <h4>Objetivo:</h4> 

                                                <h3>Medir la coordinaci??n din??mica general del jugador.</h3><br>

                                                <h4>Material:</h4>

                                                <h3> Cinta m??trica.</h3>
                                                <h3>Balon</h3>
                                                <h3>Terreno liso</h3>
                                                <h3>Postes</h3><br>
                                                <h4>Ejecuci??n:</h4>

                                                <h3>Inicialmente el ejecutante estar?? en posici??n de salida alta tras la l??nea de partida y mirando hacia el frente. A 1 m. de distancia, existir?? un circuito que consiste en cinco postes alineados de 1,70 m. de altura, separados 2 m. entre ellos y donde la distancia entre el ??ltimo poste y el final del circuito ser?? de 1 m.A la se??al del controlador, el ejecutante saldr?? corriendo dejando el primer poste a su izquierda, y realizar?? todo el recorrido botando el bal??n y desplaz??ndose en zig -zag sobre los cinco postes, hasta sobrepasar la ??ltima l??nea paralela a la de salida. El ejercicio continuar?? realizando el camino de vuelta en zig-zag pero, en este caso, el candidato deber?? controlar el bal??n con el pie, hasta sobrepasar la l??nea inicial..</h3>
                                                <h3>El recorrido de ida se realizar?? botando el bal??n de forma continuada, pudiendo alternar las manos de bote indistintamente.Una vez acabado el recorrido de ida, tras sobrepasar al menos con un pie la l??nea de llegada, el ejecutante colocar?? el bal??n en el suelo con la mano, para iniciar el recorrido de vuelta.</h3><br>

                                                <h4> Anotaci??n:</h4>

                                                <h3>Al iniciar el camino de vuelta, igualmente el obst??culo quedar?? a la izquierda del ejecutante, y la conducci??n del bal??n se realizar?? con un pie o con otro indistintamente.</h3><br>

                                                <h4>Valoraci??n del test:</h4> <br>

                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td>  </td>
                                                            <td>MUY BUENO</td>
                                                            <td>BUENO</td>
                                                            <td>NORMAL</td>
                                                            <td>MALO</td>
                                                            <td>MUY MALO</td>
                                                        </tr>
                                                    </tbody>
                                                    <!-- ojo falta definir la valoracion de este test -->
                                                    <tr>
                                                        <td>CHICOS</td>
                                                        <td>+230</td>
                                                        <td>229 - 205</td>
                                                        <td>204 - 185</td>
                                                        <td>184 - 165</td>
                                                        <td>-164</td>
                                                    </tr>

                                                    <tr>
                                                        <td>CHICAS</td>
                                                        <td>+190</td>
                                                        <td>189 - 175</td>
                                                        <td>174 - 160</td>
                                                        <td>159 - 145</td>
                                                        <td>-144</td>
                                                    </tr>
                                                </table>

                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- test conduccion  -->
                    <div class="modal fade" id="modalConduccion" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripcion test conduccion.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4>Prueba autopase y Conducci??n.</h4> <br>

                                                <h4>Objetivo:</h4> 

                                                <h3> Medir la habilidad del jugador para realizar el autopase y conducci??n inmediata y r??pidamente del bal??n.</h3><br>

                                                <h4>Material:</h4>


                                                <h3>Balon</h3>
                                                <h3>Area de meta</h3>
                                                <h3>Cronometro</h3><br>
                                                <h4>Ejecuci??n:</h4>

                                                <h3>El jugador se sit??a detr??s de la l??nea de meta con el bal??n en las manos. A la se??al del examinador de ???listo??? ??? ???ya??? chuta el bal??n dirigi??ndolo de aire m??s all?? de la l??nea de 5,50 metros. Corre detr??s del mismo para tratar de pararlo tras el primer bote.  Una vez parado lo conduce hacia el punto de partida donde lo detiene con los pies (uno o ambos) pasada la l??nea de meta. Ya detenido, lo recoge (con las manos) para iniciar la acci??n nuevamente y repetirla cinco veces.</h3><br>

                                                <h4> Reglas:</h4>

                                                <h3>1. Si el bal??n no pasa de aire la l??nea de 5,50 mts al ser chutado es preciso recomenzar y la acci??n no cuenta aunque el cron??metro siga en marcha.</h3>
                                                <h3>2. Si no es posible detener el bal??n en el primer bote, puede hacerse en el siguiente o en cualquier otro.</h3>
                                                <h3>3. Un intento concluye si el bal??n es recogido antes de haber pasado la l??nea de meta, o habiendo pasado ??sta no es detenido con los pies (uno o ambos) antes de ser recogido.</h3>
                                                <h3>4. El cron??metro se pone en marcha cuando el jugador golpea el bal??n por primera vez y se detiene cuando la acci??n completa se realiza 5 veces.</h3>
                                                <h3>5. Se conceden 2 intentos despu??s de una acci??n de pr??ctica.</h3><br>

                                                <h4>Valoraci??n del test:</h4> <br>

                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td>  </td>
                                                            <td>MUY BUENO</td>
                                                            <td>BUENO</td>
                                                            <td>NORMAL</td>
                                                            <td>MALO</td>
                                                            <td>MUY MALO</td>
                                                        </tr>
                                                    </tbody>
                                                    <tr>
                                                        <td>CHICOS</td>
                                                        <td>+230</td>
                                                        <td>229 - 205</td>
                                                        <td>204 - 185</td>
                                                        <td>184 - 165</td>
                                                        <td>-164</td>
                                                    </tr>

                                                    <tr>
                                                        <td>CHICAS</td>
                                                        <td>+190</td>
                                                        <td>189 - 175</td>
                                                        <td>174 - 160</td>
                                                        <td>159 - 145</td>
                                                        <td>-144</td>
                                                    </tr>
                                                </table>
                                                <img src="../../img/conducciom.PNG" style="width: 60%" alt="Aqui va la foto del test de conduccion">
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- test cabeceo -->
                    <div class="modal fade" id="modalCabeceo" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripcion test cabeceo.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4>Prueba Remate de Cabeza.</h4> <br>

                                                <h4>Objetivo:</h4> 

                                                <h3> Medir la habilidad del jugador para golpear el bal??n con la cabeza.</h3><br>

                                                <h4>Material:</h4>


                                                <h3>Balon</h3>
                                                <h3>Area marcada</h3><br>
                                                <h4>Ejecuci??n:</h4>

                                                <h3>El jugador con el bal??n en las manos lo lanza hacia arriba y lo golpea con la cabeza hacia el ??rea marcada tratando de alcanzar la mayor distancia posible.</h3><br>

                                                <h4> Reglas:</h4>

                                                <h3>1. El bal??n debe botar de aire en el ??rea marcada.</h3>
                                                <h3>2. Puede tomar o no impulso.</h3>
                                                <h3>3. Se anula cualquier intento en que el bal??n es golpeado mientras el jugador pisa la l??nea restrictiva o uno de sus pies se encuentra delante de dicha l??nea.</h3>
                                                <h3>4. Se permiten dos golpeos de pr??ctica.</h3>
                                                <h3>5. Se conceden 3 intentos.</h3><br>

                                                <h4>Valoraci??n del test:</h4> <br>
                                                <h3>Se anotan en metros (al ?? metro inferior) los golpeos v??lidos que caigan en el ??rea marcada y se acredita el mejor de los tres.</h3>

                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td>  </td>
                                                            <td>MUY BUENO</td>
                                                            <td>BUENO</td>
                                                            <td>NORMAL</td>
                                                            <td>MALO</td>
                                                            <td>MUY MALO</td>
                                                        </tr>
                                                    </tbody>
                                                    <tr>
                                                        <td>CHICOS</td>
                                                        <td>+230</td>
                                                        <td>229 - 205</td>
                                                        <td>204 - 185</td>
                                                        <td>184 - 165</td>
                                                        <td>-164</td>
                                                    </tr>

                                                    <tr>
                                                        <td>CHICAS</td>
                                                        <td>+190</td>
                                                        <td>189 - 175</td>
                                                        <td>174 - 160</td>
                                                        <td>159 - 145</td>
                                                        <td>-144</td>
                                                    </tr>
                                                </table>
                                                <img src="../../img/cabeceo.PNG" alt="Aqui va la imagen del test de cabeceo">

                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- test tiro -->
                    <div class="modal fade" id="modalTiro" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <br>
                                                    <h3 style="font-family: cursive; font-weight: 600; font-size: 2.1em">Descripcion test tiro.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4>Prueba Tiro a Porter??a.</h4> <br>

                                                <h4>Objetivo:</h4> 

                                                <h3> El jugador azul, ser?? en este caso el que va a ser evaluado, partir?? de una posici??n de espaldas a la porter??a, aproximadamente a tres metros del ??rea (l??nea discontinua de balonmano). Un compa??ero, (jugador amarillo) se situar?? con bal??n a unos 7 metros m??s retrasado que el jugador azul y en banda derecha. El jugador verde, se situar?? en la l??nea de banda izquierda a la altura del jugador verde. Por ??ltimo, en la porter??a se situar??n dos conos junto a cada palo y un portero entre los conos. El test comienza cuando el jugador amarillo realiza un pase al pie al jugador azul, el cual debe realizar un tiro a porter??a desde fuera del ??rea antes de que el jugador verde (que empieza a correr en el momento en que el jugador amarillo realiza el pase), le alcance e intercepte el tiro. </h3>
                                                <h3>Cada jugador realizar?? 5 tiros recibiendo el pase desde la derecha como se explica en el dibujo anterior, y 5 tiros recibiendo el pase por la izquierda, saliendo el defensor desde el lado contrario. El jugador azul (el cu??l es evaluado), debe de conseguir realizar el tiro de forma r??pida, de manera que logre golpear al bal??n sin que el jugador le moleste, por lo que esta ser?? la primera valoraci??n que hagamos del jugador (velocidad de tiro). Para evaluar los otros dos par??metros (precisi??n y potencia), hemos colocado un objetivo en el interior de la porter??a (4 conos, 2 junto a cada poste), los cu??les los jugadores deben intentar derribar, de tal forma que se combine en el golpeo a porter??a tanto la precisi??n (tocar el cono), como la potencia (derribar el cono)</h3><br>

                                                <h4>Material:</h4>


                                                <h3>Balon</h3>
                                                <h3>Porteria</h3><br>



                                                <h4>Valoraci??n del test:</h4> <br>
                                                <h3>Para valorar la cualificaci??n t??cnica del jugador en el tiro, usaremos es siguiente sistema de puntuaci??n:</h3>


                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td>ACCION</td>
                                                            <td>PUNTUACION</td>
                                                            <td>VALORACION</td>
                                                        </tr>
                                                    </tbody>
                                                    <tr>
                                                        <td>El jugador no logra tirar.</td>
                                                        <td>1</td>
                                                        <td>Muy mal</td>
                                                    </tr>

                                                    <tr>
                                                        <td>El defensor intercepta el disparo</td>
                                                        <td>2</td>
                                                        <td>Mal</td>
                                                    </tr>

                                                    <tr>
                                                        <td>El tiro se va por fuera de la porter??a</td>
                                                        <td>3</td>
                                                        <td>Mal</td>
                                                    </tr>
                                                    <tr>
                                                        <td>El tiro lo detiene el portero</td>
                                                        <td>4</td>
                                                        <td>Normal</td>
                                                    </tr>
                                                    <tr>
                                                        <td>El tiro entra a gol</td>
                                                        <td>5</td>
                                                        <td>Bien</td>
                                                    </tr>
                                                    <tr>
                                                        <td>El tiro entra a gol y derriba el objetivo</td>
                                                        <td>6</td>
                                                        <td>Muy bien</td>
                                                    </tr>
                                                </table>
                                                <img src="<%=request.getContextPath()%>/img/pase.PNG" style="width: 80%" alt="Aqui va la imagen del test de pase">

                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- test pase -->
                    <div class="modal fade" id="modalPase" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel">
                        <div class="modal-dialog modal-lg"  role="document">
                            <div class="modal-content" >
                                <div class="modal-body">
                                    <div class="container">
                                        <div class="card card-register mx-auto mt-4" style="border: none">
                                            <div class="my-form-top">
                                                <div class="myform-top-left">
                                                    <h3>Descripcion test pase.</h3>
                                                </div>
                                                <div class="Myform-top-right">
                                                    <i class="fas fa-trophy"></i>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4>Prueba pase.</h4> <br>

                                                <h4>Objetivo:</h4> 

                                                <h3> En banda, y a la altura del medio del campo, se sit??an tanto el jugador fuscia, como el jugador el azul, este ??ltimo con bal??n. Un poco m??s retrasado y en frente del palo derecho de la porter??a se sit??a el jugador verde (al cu??l se la valorar?? la cualificaci??n t??cnica en el pase), y por ??ltimo se colocar??n dos conos a mitad de camino entre el jugador verde y el corner de banda izquierda, y otro cono 2 metros detr??s de la linea de medio campo. El test comienza cuando el jugador azul realiza un pase al jugador verde, el cu??l tras controlar el bal??n deber?? devolv??rselo realizando un pase, para que ??ste reciba el bal??n y dispare a porter??a. En el momento que comienza el test, el jugador fuscia debe de dirigirse al cono que est?? detr??s suyo, y tras tocarlo, intentar evitar que el jugador azul realice un disparo a porter??a. </h3>
                                                <h3>El jugador verde, debe intentar tener una buena precisi??n espacial en el pase intentando golpear el bal??n de tal manera de que este pase entre los dos conos colocados previamente, y a la vez tener una buena precisi??n temporal, adecu??ndose el pase a la trayectoria de carrera de su compa??ero, de forma que si realiza un buen pase, el jugador azul podr?? realizar un disparo sin ninguna presi??n por parte del defensor.)</h3><br>

                                                <h4>Material:</h4>


                                                <h3>Balon</h3>
                                                <h3>Conos</h3><br>


                                                <h4>Valoraci??n del test:</h4> <br>
                                                <h3>Para valorar la cualificaci??n t??cnica del deportista en el pase, he creado el siguiente sistema de puntuaci??n:</h3>


                                                <table class="table border">                        
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 40%" >ACCION</td>
                                                            <td>PUNTUACION</td>
                                                            <td>VALORACION</td>
                                                        </tr>
                                                    </tbody>
                                                    <tr>
                                                        <td>No llega el pase al jugador azul.</td>
                                                        <td>1</td>
                                                        <td>Malo</td>
                                                    </tr>

                                                    <tr>
                                                        <td>El pase llega al jugador azul por fuera de la zona marcada</td>
                                                        <td>2</td>
                                                        <td>Normal</td>
                                                    </tr>

                                                    <tr>
                                                        <td>El pase llega por la zona marcada previamente</td>
                                                        <td>3</td>
                                                        <td>Bueno</td>
                                                    </tr>
                                                    <tr>
                                                        <td>El pase permite al jugador azul realizar el tiro con comodidad</td>
                                                        <td>4</td>
                                                        <td>Muy bueno</td>
                                                    </tr>
                                                    <tr>
                                                </table>
                                                <h3>En total en cada pase, cada jugador puede obtener un m??ximo de cuatro puntos. El test se repetir?? cinco veces, y al igual que en los test de tiro y de control, se eliminar?? tanto la peor puntuaci??n, como la mejor, y se realizar?? la media de las tres puntuaciones restantes.</h3>
                                                <img src="../../img/pase1.PNG"  alt="Aqui va la imagen del test de pase">

                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success" data-dismiss="modal" id="guardarnuevo">
                                        Aceptar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jquery para ir hacia arriba -->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Bootstrap core JavaScript-->
        <script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<%=request.getContextPath()%>/vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/sb-admin.min.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/dataTables.bootstrap4.min.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/botones/dataTables.buttons.min.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/botones/jszip.min.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/botones/pdfmake.min.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/botones/vfs_fonts.js"></script>
        <script src="<%=request.getContextPath()%>/dataTable/botones/buttons.html5.min.js"></script>
        <script src="<%=request.getContextPath()%>/main.js"></script>
        <script src="../../js/Traductor/TraduciEntrenador.js"></script>
        <script src="../../alertifyjs/js/alertify.min.js"></script>
        <script src="../../sweetAlert2/sweetalert2.all.min.js"></script>
        <script>
            //ENVIAR POR PETICION AJAX EL PQRS
            $(function () {
                $('#btn_Enviarrr').click(function (e) {
                    e.preventDefault();
                    var datos = $('#frm_PQRS').serialize($('#frm_PQRS')[0]);
                    //                alert(datos);
                    //                return false;
                    $.ajax({
                        type: "POST",
                        url: "../../Usuarion?accion=AgregarPQRS",
                        data: datos,
                        success: function (r) {
                            if (r == 1) {
                                Swal.fire({
                                    type: 'success',
                                    title: '?? Mensaje enviado exitosamente ! ',
                                    width: 500,
                                    padding: '1em',
                                    confirmButtonColor: '#11a621',
                                    showConfirmButton: true,
                                    timer: 2500
                                });
                                $("#ventanaPQRS").modal("toggle");
                                $(':text', $('#frm_PQRS')).val('');
                                document.getElementById("lim").value = "";
                            } else {
                                Swal.fire({
                                    type: 'error',
                                    title: '??Error al enviar el mensaje! ',
                                    text: 'Intentelo de nuevo',
                                    width: 500,
                                    confirmButtonColor: '#11a621',
                                    padding: '5em',
                                    showConfirmButton: false,
                                    timer: 4000 //el tiempo que dura el mensaje en ms
                                });
                            }
                        }
                    });
                });
            });
        </script>
    </body>
</html>
