<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioE.aspx.cs" Inherits="EcoMonedas.InicioE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <link href="Imagenes/LogoTrans.png" rel="icon" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Template/TemplateInicio/style.css" />
</head>
<body>
    <form runat="server">
        <div id="preloader">
            <i class="circle-preloader"></i>
        </div>

        <header class="header-area">

            <!-- Top Header Area -->
            <div class="top-header">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 h-100">
                            <div class="header-content h-100 d-flex align-items-center justify-content-between">
                                <div class="academy-logo">
                                    <a href="index.html">
                                        <img src="Imagenes/LogoP.png" alt="" width="153" /></a>
                                </div>
                                <div class="login-content">
                                    <a href="#">Registrese / Ingrese</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Navbar Area -->
            <div class="academy-main-menu">
                <div class="classy-nav-container breakpoint-off">
                    <div class="container">
                        <!-- Menu -->
                        <nav class="classy-navbar justify-content-between" id="academyNav" style="box-shadow: 0px 1px 0px 0px black;">

                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>

                            <!-- Menu -->
                            <div class="classy-menu">

                                <!-- close btn -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>

                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li><a href="InicioE.aspx">Inicio</a></li>
                                        <li><a href="#">Acerca de Eco-Monedas</a></li>
                                        <li><a href="#Contactenos">Contactenos</a></li>
                                        <li><a href="#">Inicie Sesión</a></li>
                                    </ul>
                                </div>
                                <!-- Nav End -->
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
        <!-- ##### Header Area End ##### -->

        <!-- ##### Hero Area Start ##### -->
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
        <!-- ##### Hero Area End ##### -->

        <!-- ##### Top Feature Area Start ##### -->
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
                                        <h5>Los materiales que se pueden Canjear actualmente</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Top Feature Area End ##### -->

        <!-- ##### Course Area Start ##### -->
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
                                <div runat="server" class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms" style="border-style: outset; box-shadow: 0 10px 10px;">
                                    <div class="">
                                        <asp:Image ID="ImagenMat" runat="server" ImageUrl='<%# Eval("imagen", "~/Imagenes/Materiales/{0}")%>' ImageAlign="Middle"/>
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
                        <img src="Imagenes/Separador.png" />
                    </div>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>

        <!-- ##### Course Area End ##### -->

        <!-- ##### Testimonials Area Start ##### -->
        <div id="Contactenos" class="testimonials-area section-padding-100" style="background-color: #7ed957;">
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
                                <div class="row form-group">
                                    <div class="col-6">
                                        <label><b>Nombre:</b> </label>
                                        <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-6">
                                        <label><b>Correo Electrónico:</b> </label>
                                        <asp:TextBox ID="txtCorreo" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label><b>Asunto:</b> </label>
                                    <asp:TextBox ID="txtAsunto" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label><b>Mensaje:</b> </label>
                                    <asp:TextBox ID="txtMensaje" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="btnEnviar" runat="server" CssClass="btn btn-outline-dark" Text="Enviar" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Testimonials Area End ##### -->

        <!-- ##### Top Popular Courses Area Start ##### -->
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
                        <%--<div class="col-12" style="background-color:#7ed957; padding: 40px 15px; margin-top: 40px; border-color: black; border-style: solid; border-width: thin; text-align:center;position: relative; z-index: 50; -webkit-transform: translateY(-50%); transform: translateY(-50%);">
                    <label style="font-size: 18px; margin-bottom: 0; font-weight: 600; color: #ffffff;">Centros de Acopio</label>
                </div>--%>
                        <div class="col-12">
                            <div class="features-content" style="margin-top: 40px; border-color: black; border-style: solid; border-width: thin;">
                                <div class="row no-gutters">
                                    <!-- Single Top Features -->
                                    <div class="col-12 col-md-12">
                                        <div class="single-top-features d-flex align-items-center justify-content-center">
                                            <i class="icon-contract" style="color: white;"></i>
                                            <h5>Los Centros de Acopio disponibles</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <br />
                <div class="row">
                    <!-- Single Top Popular Course -->
                    <div class="col-12 col-lg-6">
                        <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                            <div class="popular-course-content">
                                <h5>[Nombre de Centro de Acopio]</h5>
                                <span>[Provincia]</span>
                                <p>[Descripción del Centro Educativo]</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Top Popular Course -->
                    <div class="col-12 col-lg-6">
                        <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                            <div class="popular-course-content">
                                <h5>[Nombre de Centro de Acopio]</h5>
                                <span>[Provincia]</span>
                                <p>[Descripción del Centro Educativo]</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Top Popular Course -->
                    <div class="col-12 col-lg-6">
                        <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                            <div class="popular-course-content">
                                <h5>[Nombre de Centro de Acopio]</h5>
                                <span>[Provincia]</span>
                                <p>[Descripción del Centro Educativo]</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Top Popular Course -->
                    <div class="col-12 col-lg-6">
                        <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                            <div class="popular-course-content">
                                <h5>[Nombre de Centro de Acopio]</h5>
                                <span>[Provincia]</span>
                                <p>[Descripción del Centro Educativo]</p>
                            </div>
                        </div>
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
