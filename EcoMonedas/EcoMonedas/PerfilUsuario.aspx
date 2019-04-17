<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="EcoMonedas.PerfilUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Eco-Monedas Perfil Usuario</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/checkboxes.css" rel="stylesheet" />
    <link href="Content/botonA.css" rel="stylesheet" />
    <script src="Scripts/botonA.js"></script>
    <link href="Template/TemplateInicio/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-2">
            <a href="InicioE.aspx">
                <img src="Imagenes/LogoP.png" alt="" width="153" /></a>
        </div>
        <div class="col-lg-7"></div>
        <div class="col-lg-2">
        </div>
    </div>

    <a class="ir-arriba" href="#" title="Volver arriba" style="background-color: #7ed957;">
        <i class="fa fa-arrow-up"></i>
    </a>
    <div class="container">
        <div class="row">
            <div class="col-sm-10">
                <h1>
                    <asp:Label ID="lblNombreUs" runat="server" Text="Usuario"></asp:Label></h1>
            </div>
            <div class="col-sm-2">
                <div class="pull-right">
                    <img title="Perfil Usuario Eco-Monedas" class="img-circle img-responsive" src="Imagenes/PerfilUEM.png" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" style="margin-bottom:200px;">
                <ul class="list-group">
                    <li class="list-group-item" style="background-color: #7ed957; color: white;"><i class="fa fa-list fa-1x" style="color: white;"></i> Menú de Navegación</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong><a class="nav-link" runat="server" id="ModuloUsuario" onserverclick="ModuloUsuario_ServerClick">Inicio</a></strong></span><i class="fa fa-arrow-circle-left"></i></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong><a class="nav-link" href="InicioE.aspx">Inicio Eco-Monedas</a></strong></span><i class="fa fa-home"></i></li>
                </ul>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-6 col-xs-6">
                <div class="tab-content">
                    <form id="form1" runat="server">
                        <div class="row">
                            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
                        </div>
                        <h2>Información del Perfil</h2>
                        <div class="form-group">
                            <label for="lblNombre" class="control-label">Nombre</label>
                            <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server"
                                ErrorMessage="*El nombre es requerido."
                                ControlToValidate="txtNombre"
                                ForeColor="Red"
                                SetFocusOnError="true"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="lblPrimerApellido">Primer apellido</label>
                            <asp:TextBox ID="txtPrimerApellido" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="*El primer apellido es requerido."
                                ControlToValidate="txtPrimerApellido"
                                ForeColor="Red"
                                SetFocusOnError="true"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Segundo Apellido</label>
                            <asp:TextBox ID="txtSegundoApellido" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ErrorMessage="*El segundo apellido es requerido."
                                ControlToValidate="txtSegundoApellido"
                                ForeColor="Red"
                                SetFocusOnError="true"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Teléfono</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">+506</span>
                                </div>
                                <asp:TextBox ID="txtTelefono" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                ErrorMessage="*El teléfono es requerido."
                                ControlToValidate="txtTelefono"
                                ForeColor="Red"
                                SetFocusOnError="true"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator3"
                                runat="server"
                                Text="El teléfono solo debe contener números"
                                ControlToValidate="txtTelefono"
                                SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                ValidationExpression="^[0-9]*(\,)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Correo electronico</label>
                            <asp:TextBox ID="txtCorreo" enable="false" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*El correo es requerido." ControlToValidate="txtCorreo" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Contraseña</label>
                            <asp:TextBox ID="txtPassword" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*la contraseña es requerida." ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="exampleTextarea">Direccion exacta</label>
                            <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                       
                        <br />

                        <asp:HiddenField ID="hfUsuarioID" runat="server" Value="" />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn" BackColor="#7ed957" ForeColor="white" BorderColor="Black" Text="Editar" OnClick="btnRegistrar_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer class="row">
        <div class="bottom">
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
</body>
</html>
