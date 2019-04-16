<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="EcoMonedas.PerfilUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="Content/checkboxes.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-expand-md" style="background-color: #f5f7fa; box-shadow: 0px 1px 0px 0px black; margin-top:100px; margin-left:60px; margin-right:60px;">
        <a class="navbar-brand" href="InicioE.aspx">
            <img src="Imagenes/LogoT.png" width="60" height="30" /></a>
        <button class="navbar-toggler navbar-toggler-right text-uppercase text-white rounded" style="background-color: #7ed957;" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menú
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor03">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" runat="server" id="ModuloUsuario" onserverclick="ModuloUsuario_ServerClick">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="InicioE.aspx">Inicio Ecomonedas</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-sm-10">
                <h1>
                    <asp:Label ID="lblNombreUs" runat="server" Text="Usuario"></asp:Label></h1>
            </div>
            <div class="col-sm-2">
                <div class="pull-right">
                    <img title="profile image" class="img-circle img-responsive" src="Imagenes/PerfilUEM.png" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3">


                <ul class="list-group">
                    <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
                </ul>

                <div class="panel panel-default">
                    <div class="panel-heading">Social Media</div>
                    <div class="panel-body">
                        <i class="fa fa-facebook fa-2x"></i><i class="fa fa-github fa-2x"></i><i class="fa fa-twitter fa-2x"></i><i class="fa fa-pinterest fa-2x"></i><i class="fa fa-google-plus fa-2x"></i>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
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
                            <asp:TextBox ID="txtCorreo" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
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
                        <div class="form-group">
                            <label class="checkBoxEstado" style="font-size: 14px; font-weight: 700;">
                                Activo
                                <asp:CheckBox runat="server" ID="chkEstado" />
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <br />

                        <asp:HiddenField ID="hfUsuarioID" runat="server" Value="" />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn" BackColor="#7ed957" ForeColor="white" BorderColor="Black" Text="Registrar" OnClick="btnRegistrar_Click" />
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
