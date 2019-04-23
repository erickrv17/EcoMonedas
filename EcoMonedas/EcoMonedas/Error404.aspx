<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="EcoMonedas.Error404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <link href="Template/TemplateAdmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <link href="Template/TemplateAdmin/css/sb-admin-2.min.css" rel="stylesheet" />
</head>
<body id="page-top">
    <form runat="server">
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <div class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <div class="input-group-append">
                                <a class="btn" href="PrincipalAdministrador.aspx">
                                    <i class="fas fa-user"></i>
                                </a>
                            </div>
                            <label style="color: #7ed957"><b>¡Bienvenido!</b></label>
                        </div>
                    </div>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <li class="nav-item dropdown no-arrow" title="Toque para opciones">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="Toque para opciones">
                                <i class="fa fa-user-circle"></i>
                                <asp:Label ID="lblNombreUsuario" runat="server" Text="" CssClass="mr-2 d-none d-lg-inline text-gray-600" ForeColor="Black"></asp:Label>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <asp:Button ID="btnModuloUsuario" CssClass="dropdown-item" runat="server" ForeColor="#7ed957" Text="Módulo de Usuario" OnClick="btnModuloUsuario_Click" />
                                <div class="dropdown-divider"></div>
                                <asp:Button ID="btnPerfil" CssClass="dropdown-item" runat="server" ForeColor="#7ed957" Text="Perfil de Administrador" OnClick="btnPerfil_Click" />
                                <div class="dropdown-divider"></div>
                                <asp:Button ID="btnCerrarSesion" CssClass="dropdown-item" runat="server" ForeColor="#7ed957" Text="Cerrar Sesión" OnClick="btnCerrarSesion_Click" />
                            </div>
                        </li>
                    </ul>
                </nav>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- 404 Error Text -->
                    <div class="text-center">
                        <div class="error mx-auto" data-text="404">404</div>
                        <p class="lead text-gray-800 mb-5">Página No Encontrada</p>
                        <p class="text-gray-500 mb-0">Ha ocurrido un error al buscar página</p>
                        <a href="../InicioE.aspx">&larr; Volver a la Página Principal</a>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>

        </div>
    </form>
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <script src="Template/TemplateAdmin/vendor/jquery/jquery.min.js"></script>
    <script src="Template/TemplateAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="Template/TemplateAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <script src="Template/TemplateAdmin/js/sb-admin-2.min.js"></script>
</body>
</html>
