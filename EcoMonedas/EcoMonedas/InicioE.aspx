<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioE.aspx.cs" Inherits="EcoMonedas.InicioE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Imagenes/LogoP.png" rel="icon" />
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="Template/TemplateInicio/style.css" />
</head>
<body>
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
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
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="course-content">
                            <h4>[Nombre del Material]</h4>
                            <p>[Descripcion del Material]</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="course-content">
                            <h4>[Nombre del Material]</h4>
                            <p>[Descripcion del Material]</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="course-content">
                            <h4>[Nombre del Material]</h4>
                            <p>[Descripcion del Material]</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="course-content">
                            <h4>[Nombre del Material]</h4>
                            <p>[Descripcion del Material]</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="course-content">
                            <h4>[Nombre del Material]</h4>
                            <p>[Descripcion del Material]</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="course-content">
                            <h4>[Nombre del Material]</h4>
                            <p>[Descripcion del Material]</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Course Area End ##### -->

    <!-- ##### Testimonials Area Start ##### -->
    <div id="Contactenos" class="testimonials-area section-padding-100" style="background-color: #7ed957;">
        <div class="container">
            <div class="row" id="contact">
                <div class="col-md-3">
                    <strong class="text-uppercase" style="text-align: center; font-family: inherit; font-size:1.5rem;">Eco-Monedas</strong>
                    <address>
                        <hr />
                        <i class="fa fa-user fa-fw"></i> Creadores:
                        <br />
                        <p style="color:black;">César Fallas Gamboa</p>
                        <p style="color:black;">Erick Rodríguez Vega</p> 
                        <hr />
                        <i class="fa fa-envelope-o fa-fw"></i> Correo Destinatario:
                        <br />
                        <p style="color:black;">EcomonedasP2019@gmail.com</p>
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
                        <form runat="server" role="form" class="contactForm">
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
                        </form>
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
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <span>The Best</span>
                        <h3>Top Popular Courses</h3>
                    </div>
                </div>
            </div>
            <div class="row">

                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                        <div class="popular-course-content">
                            <h5>Business for begginers</h5>
                            <span>By Simon Smith   |  March 18, 2018</span>
                            <div class="course-ratings">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                            <a href="#" class="btn academy-btn btn-sm">See More</a>
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(Template/TemplateInicio/img/bg-img/pc-1.jpg);"></div>
                    </div>
                </div>

                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="500ms">
                        <div class="popular-course-content">
                            <h5>Advanced HTML5</h5>
                            <span>By Simon Smith   |  March 18, 2018</span>
                            <div class="course-ratings">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                            <a href="#" class="btn academy-btn btn-sm">See More</a>
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(Template/TemplateInicio/img/bg-img/pc-2.jpg);"></div>
                    </div>
                </div>

                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="600ms">
                        <div class="popular-course-content">
                            <h5>Marketing 101</h5>
                            <span>By Simon Smith   |  March 18, 2018</span>
                            <div class="course-ratings">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                            <a href="#" class="btn academy-btn btn-sm">See More</a>
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(Template/TemplateInicio/img/bg-img/pc-3.jpg);"></div>
                    </div>
                </div>

                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="700ms">
                        <div class="popular-course-content">
                            <h5>Business for begginers</h5>
                            <span>By Simon Smith   |  March 18, 2018</span>
                            <div class="course-ratings">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.</p>
                            <a href="#" class="btn academy-btn btn-sm">See More</a>
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(Template/TemplateInicio/img/bg-img/pc-4.jpg);"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Popular Courses Area End ##### -->

    <!-- ##### Partner Area Start ##### -->
    <div class="partner-area section-padding-0-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="partners-logo d-flex align-items-center justify-content-between flex-wrap">
                        <a href="#">
                            <img src="Template/TemplateInicio/img/clients-img/partner-1.png" alt="" /></a>
                        <a href="#">
                            <img src="Template/TemplateInicio/img/clients-img/partner-2.png" alt="" /></a>
                        <a href="#">
                            <img src="Template/TemplateInicio/img/clients-img/partner-3.png" alt="" /></a>
                        <a href="#">
                            <img src="Template/TemplateInicio/img/clients-img/partner-4.png" alt="" /></a>
                        <a href="#">
                            <img src="Template/TemplateInicio/img/clients-img/partner-5.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Partner Area End ##### -->

    <!-- ##### CTA Area Start ##### -->
    <div class="call-to-action-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cta-content d-flex align-items-center justify-content-between flex-wrap">
                        <h3>Do you want to enrole at our Academy? Get in touch!</h3>
                        <a href="#" class="btn academy-btn">See More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### CTA Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="main-footer-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <a href="#">
                                    <img src="Template/TemplateInicio/img/core-img/logo2.png" alt="" /></a>
                            </div>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget.</p>
                            <div class="footer-social-info">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-behance"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Usefull Links</h6>
                            </div>
                            <nav>
                                <ul class="useful-links">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Services &amp; Features</a></li>
                                    <li><a href="#">Accordions and tabs</a></li>
                                    <li><a href="#">Menu ideas</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Gallery</h6>
                            </div>
                            <div class="gallery-list d-flex justify-content-between flex-wrap">
                                <a href="Template/TemplateInicio/img/bg-img/gallery1.jpg" class="gallery-img" title="Gallery Image 1">
                                    <img src="Template/TemplateInicio/img/bg-img/gallery1.jpg" alt="" /></a>
                                <a href="Template/TemplateInicio/img/bg-img/gallery2.jpg" class="gallery-img" title="Gallery Image 2">
                                    <img src="Template/TemplateInicio/img/bg-img/gallery2.jpg" alt="" /></a>
                                <a href="Template/TemplateInicio/img/bg-img/gallery3.jpg" class="gallery-img" title="Gallery Image 3">
                                    <img src="Template/TemplateInicio/img/bg-img/gallery3.jpg" alt="" /></a>
                                <a href="Template/TemplateInicio/img/bg-img/gallery4.jpg" class="gallery-img" title="Gallery Image 4">
                                    <img src="Template/TemplateInicio/img/bg-img/gallery4.jpg" alt="" /></a>
                                <a href="Template/TemplateInicio/img/bg-img/gallery5.jpg" class="gallery-img" title="Gallery Image 5">
                                    <img src="Template/TemplateInicio/img/bg-img/gallery5.jpg" alt="" /></a>
                                <a href="Template/TemplateInicio/img/bg-img/gallery6.jpg" class="gallery-img" title="Gallery Image 6">
                                    <img src="Template/TemplateInicio/img/bg-img/gallery6.jpg" alt="" /></a>
                            </div>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Contact</h6>
                            </div>
                            <div class="single-contact d-flex mb-30">
                                <i class="icon-placeholder"></i>
                                <p>4127/ 5B-C Mislane Road, Gibraltar, UK</p>
                            </div>
                            <div class="single-contact d-flex mb-30">
                                <i class="icon-telephone-1"></i>
                                <p>
                                    Main: 203-808-8613
                                    <br />
                                    Office: 203-808-8648
                                </p>
                            </div>
                            <div class="single-contact d-flex">
                                <i class="icon-contract"></i>
                                <p>office@yourbusiness.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="Template/TemplateInicio/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="Template/TemplateInicio/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="Template/TemplateInicio/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="Template/TemplateInicio/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="Template/TemplateInicio/js/active.js"></script>
</body>
</html>
