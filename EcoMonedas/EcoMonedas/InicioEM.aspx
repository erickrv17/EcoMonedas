<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioEM.aspx.cs" Inherits="EcoMonedas.InicioEM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <link href="Imagenes/LogoT.png" rel="icon" />
    <link href="Template/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link href="Template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />

    <link href="Template/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

    <link href="Template/css/freelancer.min.css" rel="stylesheet" />

</head>
<body id="page-top">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="mainNav" style="box-shadow: 0px 7px 0px -4px rgba(126,217,87,1);">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="InicioEM.aspx">
                    <img src="Imagenes/LogoT.png" width="auto" height="60" /></a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase text-white rounded" style="background-color: #7ed957;" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <asp:Menu runat="server" Orientation="Horizontal" CssClass="navbar-nav ml-auto" ID="navbarColor01" DataSourceID="SiteMapDataSource1" OnMenuItemDataBound="navbarColor01_MenuItemDataBound">
                        <StaticMenuItemStyle HorizontalPadding="20px" VerticalPadding="20px" />
                        <StaticMenuStyle CssClass="nav-item mx-0 mx-lg-1" />
                        <StaticSelectedStyle CssClass="active" />
                        <DynamicMenuStyle CssClass="dropdown-menu" />
                        <LevelMenuItemStyles>
                            <asp:MenuItemStyle CssClass="nav-item mx-0 mx-lg-1" />
                            <asp:MenuItemStyle CssClass="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" />
                        </LevelMenuItemStyles>
                    </asp:Menu>
                </div>
            </div>
        </nav>
        <asp:SiteMapDataSource runat="server" ShowStartingNode="false" ID="SiteMapDataSource1"></asp:SiteMapDataSource>

        <header class="masthead bg-white text-white text-center">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Imagenes/Banner1.png" class="d-block w-100" alt="..." />
                    </div>
                    <div class="carousel-item">
                        <img src="Imagenes/Banner2.png" class="d-block w-100" alt="..." />
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </header>
        <div class="container-fluid">
            <div class="row col-lg-12 col-md-12 col-sm-12">
                <div class="col-lg-2 col-md-1 col-sm-1"></div>
                <div class="col-lg-3 col-md-4 col-sm-10">
                    <a href="#">
                        <img src="Imagenes/IconoInfoC.png" width="300" height="300" /></a>
                </div>
                <div class="col-lg-2 col-md-2"></div>
                <div class="col-lg-3 col-md-4 col-sm-10">
                    <a href="#">
                        <img src="Imagenes/IconoInfoR.png" width="300" height="300" /></a>
                </div>
                <div class="col-lg-2 col-md-1 col-sm-1"></div>
            </div>
        </div>
        <section id="contact">
            <div class="container">
                <h2  class="text-center text-uppercase text-secondary mb-0" style="color: black;">Contactenos
                </h2>
                <hr class="mb-5" style="color:#7ed957;"/>
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <section id="contactForm">
                            <div class="form-group">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
                                    <asp:TextBox  class="form-control"  ID="txtNombre" runat="server"></asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Correo Electronico: "></asp:Label>
                                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Mensaje: "></asp:Label>
                                    <asp:TextBox ID="txtMensaje" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <br/>
                            <div id="success"></div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Enviar</button>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </section>


        <footer class="footer text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Location</h4>
                        <p class="lead mb-0">
                            2215 John Daniel Drive
            <br>
                            Clark, MO 65243
                        </p>
                    </div>
                    <div class="col-md-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Around the Web</h4>
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fab fa-fw fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fab fa-fw fa-google-plus-g"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fab fa-fw fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fab fa-fw fa-linkedin-in"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                                    <i class="fab fa-fw fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h4 class="text-uppercase mb-4">About Freelancer</h4>
                        <p class="lead mb-0">
                            Freelance is a free to use, open source Bootstrap theme created by
            <a href="http://startbootstrap.com">Start Bootstrap</a>.
                        </p>
                    </div>
                </div>
            </div>
        </footer>

        <div class="copyright py-4 text-center text-white">
            <div class="container">
                <asp:Label ID="copyright" runat="server" Text="<%$ AppSettings: copyright %>"></asp:Label>
            </div>
        </div>

        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
        <div class="scroll-to-top d-lg-none position-fixed ">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </form>
    <script src="Template/vendor/jquery/jquery.min.js"></script>
    <script src="Template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="Template/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="Template/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <script src="Template/js/jqBootstrapValidation.js"></script>
    <script src="Template/js/contact_me.js"></script>

    <script src="Template/js/freelancer.min.js"></script>
</body>
</html>
