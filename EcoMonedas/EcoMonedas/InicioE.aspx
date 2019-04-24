<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioE.aspx.cs" Inherits="EcoMonedas.InicioE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="Imagenes/LogoTrans.png" rel="icon" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Template/TemplateRegistro/css/cssRegistro.css" rel="stylesheet" />
    <script src="Template/TemplateRegistro/js/jsRegistro.js"></script>
    <script type="text/javascript">
        function openModal() {
            $('#VentanaLogin').modal('show');
        }
    </script>
    <link rel="stylesheet" href="Template/TemplateInicio/style.css" />
</head>
<body>
    <form runat="server">
        <div id="preloader">
            <i class="circle-preloader"></i>
        </div>
        <header class="header-area">
            <div class="top-header">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 h-100">
                            <div class="header-content h-100 d-flex align-items-center justify-content-between">
                                <div class="academy-logo">
                                    <a href="InicioE.aspx">
                                        <img src="Imagenes/LogoP.png" alt="" width="153" /></a>
                                </div>
                                <div class="login-content">
                                    <ul class="navbar-nav ml-auto">
                                        <div class="topbar-divider d-none d-sm-block"></div>
                                        <li class="nav-item dropdown no-arrow" title="Toque para opciones">
                                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="Toque para opciones">
                                                <i class="fa fa-user-circle"></i>
                                                <asp:Label ID="lblNombreUsuario" runat="server" Text="" CssClass="mr-2 d-none d-lg-inline text-gray-600" ForeColor="Black"></asp:Label>
                                            </a>
                                            <!-- Dropdown - User Information -->
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                                <button runat="server" onserverclick="btnModuloUsuario_Click" id="btnMU" class="dropdown-item" style="color: #7ed957;">Módulo Usuario</button>
                                                <div class="dropdown-divider"></div>
                                                <button runat="server" onserverclick="btnPerfil_ServerClick" id="btnPerfil" class="dropdown-item" style="color: #7ed957;">Perfil Usuario</button>
                                                <div class="dropdown-divider"></div>
                                                <button runat="server" onserverclick="btnCerrarSesion_Click" id="btnCS" style="color: #7ed957;" class="dropdown-item">Cerrar Sesión</button>
                                            </div>
                                        </li>
                                    </ul>
                                    <a href="#VentanaLogin" data-toggle="modal" runat="server" id="lblregistrese">Ingrese</a>
                                    <a href="Registrarse.aspx" runat="server" id="lblAutoRegistro">/ Registrese</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="academy-main-menu">
                <div class="classy-nav-container breakpoint-off">
                    <div class="container">
                        <nav class="classy-navbar justify-content-between" id="academyNav" style="box-shadow: 0px 1px 0px 0px black;">

                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>

                            <div class="classy-menu">

                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>

                                <div class="classynav">
                                    <ul>
                                        <li><a href="InicioE.aspx">Inicio</a></li>
                                        <li><a href="#MaterialesR">Materiales reciclables</a></li>
                                        <li><a href="#CentrosA">Centros de Acopio</a></li>
                                        <li><a href="#Contactenos">Contactenos</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="calling-info">
                                <div class="call-center">
                                    <label style="color: white; font-size: medium">Eco-Monedas</label>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <section class="hero-area">
            <div class="hero-slides owl-carousel">
                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Imagenes/Banner3.png" class="d-block w-100" alt="..." />
                        </div>
                        <div class="carousel-item">
                            <img src="Imagenes/Banner4.png" class="d-block w-100" alt="..." />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="top-features-area wow fadeInUp" data-wow-delay="300ms">
            <div class="container">
                <br />
                <br />
                <div class="row">
                    <div class="col-12">
                        <img src="Imagenes/Separador.png" />
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="row">
                    <div class="col-12">
                        <div class="features-content" style="margin-top: 40px; border-color: black; border-style: solid; border-width: thin;">
                            <div class="row no-gutters">
                                <!-- Single Top Features -->
                                <div class="col-12 col-md-12">
                                    <div class="single-top-features d-flex align-items-center justify-content-center">
                                        <i class="icon-contract" style="color: white;"></i>
                                        <h5 id="MaterialesR">Los materiales que se pueden Canjear actualmente</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="academy-courses-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <asp:ListView ID="listaMateriales" runat="server"
                        DataKeyNames="ID" GroupItemCount="3"
                        ItemType="Contexto.Material" SelectMethod="listadoMateriales">
                        <EmptyDataTemplate>
                            <div class="row">
                                No hay datos
                  
                                <div class="row">
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <div class="col-lg-3">
                            </div>
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <div class="row">
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                            </div>
                        </GroupTemplate>
                        <ItemTemplate>
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div runat="server" class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                                    <div class="">
                                        <asp:Image ID="ImagenMat" runat="server" ImageUrl='<%# Eval("imagen", "~/Imagenes/Materiales/{0}")%>' ImageAlign="Middle" />
                                    </div>
                                    <div class="course-content">
                                        <h4><%#:Item.Nombre%></h4>
                                        <asp:TextBox runat="server" BorderStyle="Outset" BorderColor="Black" BackColor='<%# System.Drawing.ColorTranslator.FromHtml(Item.Color.CodigoColor) %>'></asp:TextBox>
                                        <p><b>Precio Unitario &cent;</b><%#: String.Format("{0:N2}", Item.PrecioUnitario)%></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div class="container">
                                <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                </div>
                <br />
                <div class="row">
                    <div class="col-12">
                        <img id="Contactenos" src="Imagenes/Separador.png" />
                    </div>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>

        <div class="testimonials-area section-padding-100" style="background-color: #7ed957;">
            <div class="container">
                <div class="row" id="contact">
                    <div class="col-md-3">
                        <strong class="text-uppercase" style="text-align: center; font-family: inherit; font-size: 1.5rem;">Eco-Monedas</strong>
                        <address>
                            <hr />
                            <i class="fa fa-user fa-fw"></i>Creadores:
                       
                            <br />
                            <p style="color: black;">César Fallas Gamboa</p>
                            <p style="color: black;">Erick Rodríguez Vega</p>
                            <hr />
                            <i class="fa fa-envelope-o fa-fw"></i>Correo Destinatario:
                       
                            <br />
                            <p style="color: black;">EcomonedasP2019@gmail.com</p>
                            <br />
                        </address>
                        <hr />
                    </div>
                    <div class="col-1"></div>
                    <div class="col-md-8">
                        <h4 class="text-uppercase" style="text-align: center; font-family: inherit;">Contactenos
                        </h4>
                        <div class="form">
                            <div id="sendmessage">
                                <label style="text-align: center">¡Por este medio, puedes comunicarte con los Administradores del Programa Eco-Monedas!</label>
                            </div>
                            <br />
                            <div runat="server" role="form" class="contactForm">
                                <div runat="server" role="form" class="contactForm">
                                    <div class="row form-group">
                                        <div class="col-6">
                                            <label><b>Nombre:</b> </label>
                                            <input class="form-control" id="txtNombreC" type="text" runat="server" />
                                        </div>
                                        <div class="col-6">
                                            <label><b>Correo Electrónico:</b> </label>
                                            <input class="form-control" id="txtCorreoC" type="text" runat="server" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label><b>Asunto:</b> </label>
                                        <input class="form-control" id="txtAsuntoC" type="text" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label><b>Mensaje:</b> </label>
                                        <textarea class="form-control" id="txtMensajeC" runat="server" rows="5"></textarea>
                                    </div>
                                    <div class="text-center">
                                        <button class="btn" style="background-color: #7ed957; border-color: black; color: #000;" id="btnConfirmar" runat="server" onserverclick="btnConfirmar_ServerClick">Enviar</button>
                                    </div>
                                    <br />
                                    <br />
                                    <asp:Label ID="lblMensajeCorreo" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="top-popular-courses-area section-padding-100-70">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <img src="Imagenes/Separador.png" />
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="top-features-area wow fadeInUp" data-wow-delay="300ms">
                    <div class="row">
                        <div class="col-12">
                            <div class="features-content" style="margin-top: 40px; border-color: black; border-style: solid; border-width: thin;">
                                <div class="row no-gutters">
                                    <!-- Single Top Features -->
                                    <div class="col-12 col-md-12">
                                        <div class="single-top-features d-flex align-items-center justify-content-center">
                                            <i class="icon-contract" style="color: white;"></i>
                                            <h5 id="CentrosA">Los Centros de Acopio disponibles</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <br />
                <div class="academy-courses-area section-padding-100-0">
                    <div class="container">
                        <div class="row">
                            <asp:ListView ID="ListView1" runat="server"
                                DataKeyNames="ID" GroupItemCount="3"
                                ItemType="Contexto.CentroAcopio" SelectMethod="GetCentrosAcopio">
                                <EmptyDataTemplate>
                                    <div class="row">
                                        No hay datos
                                   
                                    </div>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <div class="col-lg-3">
                                    </div>
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <div class="row">
                                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-12 col-sm-6 col-lg-4">
                                        <div runat="server" class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                                            <div class="">
                                                <asp:Image ID="ImagenMat" runat="server" ImageUrl='<%# Eval("imagen", "~/Imagenes/CentrosAcopio/{0}")%>' ImageAlign="Middle" />
                                            </div>
                                            <div class="course-content">
                                                <h4><%#:Item.Nombre%></h4>
                                                <p><b>Dirección: </b><%#: Item.DireccionExacta%></p>
                                                <p><b>Correo: </b><%#: Item.Correo%></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div class="container">
                                        <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                                    </div>
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-12">
                                <img src="Imagenes/Separador.png" />
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-3 col-sm-1"></div>
                    <div class="col-lg-8 col-md-7 col-sm-11">
                        <img src="Imagenes/MapaCR.png" width="400" height="400" />
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="row">
                    <div class="col-12">
                        <img src="Imagenes/Separador.png" />
                    </div>
                </div>
                <br />
            </div>
        </div>

        <div class="partner-area section-padding-0-100">
            <div class="container">
                <div class="top-features-area wow fadeInUp" data-wow-delay="300ms">
                    <div class="row">
                        <div class="col-12">
                            <div class="features-content" style="margin-top: 40px; border-color: black; border-style: solid; border-width: thin;">
                                <div class="row no-gutters">
                                    <div class="col-12 col-md-12">
                                        <div class="single-top-features d-flex align-items-center justify-content-center">
                                            <i class="icon-worldwide-1" style="color: white;"></i>
                                            <h5>Alianzas</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="partners-logo d-flex align-items-center justify-content-between flex-wrap">
                            <a href="#">
                                <img src="Imagenes/Patrocinadores/kolbi.jpg" alt="" /></a>
                            <a href="#">
                                <img src="Imagenes/Patrocinadores/ffico.jpg" alt="" /></a>
                            <a href="#">
                                <img src="Imagenes/Patrocinadores/sardimar.jpg" alt="" /></a>
                            <a href="#">
                                <img src="Imagenes/Patrocinadores/numar.jpg" alt="" /></a>
                            <a href="#">
                                <img src="Imagenes/Patrocinadores/sur.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <div class="modal fade" id="VentanaLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <img class="img-circle" id="img_logo" src="Imagenes/LogoT.png" />
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="fa fa-remove" aria-hidden="true"></span>
                        </button>
                    </div>
                    <div id="div-forms">
                        <div id="login-form">
                            <div class="modal-body">
                                <div>
                                    <div id="icon-login-msg"><i class="fa fa-user"></i></div>
                                    <span>Escribe tus credenciales de Inicio.</span>
                                    <br />
                                    <br />
                                    <label id="lblMensaje" visible="false" style="color: red;" runat="server">Usuario Incorrecto</label>
                                </div>
                                <asp:TextBox ID="txtCorreoLogin" class="form-control" type="text" runat="server" placeholder="Correo electrónico"></asp:TextBox>
                                <asp:RegularExpressionValidator
                                    ID="validateEmail"
                                    runat="server"
                                    ErrorMessage="El formato del correo no es valido."
                                    ForeColor="Red" Display="Dynamic"
                                    ControlToValidate="txtCorreoLogin"
                                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />

                                <asp:TextBox ID="txtContra" class="form-control" type="password" runat="server" placeholder="Contraseña"></asp:TextBox>
                                <br />
                            </div>
                            <div class="modal-footer">
                                <div>
                                    <button runat="server" class="btn" style="background-color: #7ed957; color: white" onserverclick="btnIngresar_Click">Iniciar Sesión</button>
                                </div>
                                <div>
                                    <button id="btnPaginaRegistrarse" type="button" runat="server" onserverclick="btnPaginaRegistrarse_ServerClick" style="color: #7ed957" class="btn btn-link">Registrate aqui</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
    <footer class="footer-area">
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p style="color: white;">
                            Copyright &copy; Eco-Monedas I Cuatrimestre 2019 | César Fallas y Erick Rodríguez
                       
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="Template/TemplateInicio/js/jquery/jquery-2.2.4.min.js"></script>
    <script src="Template/TemplateInicio/js/bootstrap/popper.min.js"></script>
    <script src="Template/TemplateInicio/js/bootstrap/bootstrap.min.js"></script>
    <script src="Template/TemplateInicio/js/plugins/plugins.js"></script>
    <script src="Template/TemplateInicio/js/active.js"></script>
</body>
</html>
