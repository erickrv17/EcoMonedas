<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listaCentrosAcopio.aspx.cs" Inherits="EcoMonedas.listaCentrosAcopio" %>

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
         <br/> <br/> <br/> <br/> <br/>
           <div class="row">
                <div class="container">
                    <div class="col-lg-12 mx-auto">
                
    <asp:ListView ID="centroAcopioList" runat="server"
        DataKeyNames="CentroAcopioID" GroupItemCount="3"
        ItemType="Contexto.CentroAcopio" SelectMethod="GetCentrosAcopio">
        <EmptyDataTemplate>
            <%-- Plantilla si no hay datos --%>
            <div class="row">
                No hay datos
                   <div class="row">
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <%-- Plantilla para elemento o item vacío --%>
            <%-- Si hay un item o registro que le falte algún valor --%>
            <div class="col-lg-3">
            </div>
        </EmptyItemTemplate>
        <GroupTemplate>
            <%-- Plantilla de contenedor de grupo --%>
            <div class="row">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </GroupTemplate>
        <ItemTemplate>
            <%-- Plantilla del contenedor de item de datos --%>
            <div class="col-lg-3">
                <div class="card mb-3">
                    <asp:HyperLink ID="HyperLink1"
                        runat="server"
                        CssClass="card-header"
                        NavigateUrl='<%# Eval("ID", "~/detalleCentroAcopio.aspx?id={0}") %>'>
                            <%#:Item.Nombre%>
                    </asp:HyperLink>
                     <asp:Image ID="Image1" ImageUrl='<%# Eval("imagen", "~/imagenes/Thumbs/{0}")%>'
                        Height="200px" ImageAlign="Middle" runat="server" />

                    <div class="card-body">
                        <p class="card-text"><b>Direcció :</b><%#Item.DireccionExacta%></p>
                    </div>
                    <div class="card-footer text-muted">
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <%-- Plantilla de contenedor raíz --%>
            <div class="container">
                <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>
    </asp:ListView>

   </div> </div></div>
                    
       
            
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
