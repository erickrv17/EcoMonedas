<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="solicitudCorreoUCanje.aspx.cs" Inherits="EcoMonedas.solicitudCorreoUCanje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/formularioCanje.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container h-100" style="margin-top:90px; margin-bottom:50px;">
        <div class="d-flex justify-content-center h-100">
            <div class="user_card">
                <div class="d-flex justify-content-center">
                    <div class="brand_logo_container">
                        <img src="Imagenes/Usuario.png" class="brand_logo" alt="Logo" />
                    </div>
                </div>
                <div class= "justify-content-center form_container">
                    <div class="row form-group" style="width:80%; margin-left:10%;">
                            <span class="input-group-text"><i class="fas fa-user" style="margin-right:10px;"></i><label style="margin-bottom:0rem;">Correo Administrador Centro:</label></span>
                            <asp:TextBox ID="txtCorreoU" CssClass="form-control input_user" runat="server"></asp:TextBox>
                            <asp:Label ID="txtMECorreoU" runat="server" CssClass="form-text text-danger" Text=""></asp:Label>    
                    </div>
                    <div class="row form-group" style="width:80%; margin-left:10%;">
                            <span class="input-group-text" style="margin-bottom:0rem;"><i class="fas fa-key" style="margin-right:10px;"></i><label style="margin-bottom:0rem;">Contraseña Administrador Centro:</label></span>
                            <asp:TextBox ID="txtContraseniaU" TextMode="Password" CssClass="form-control input_pass" runat="server"></asp:TextBox>
                            <asp:Label ID="txtMEContrase" runat="server" CssClass="form-text text-danger" Text=""></asp:Label>
                            <small id="adminAyuda" class="form-text text-light">Los datos anteriores se necesitan por motivos de seguridad del Sistema</small>
                    </div>
                    <hr />
                    <div class="row form-group" style="width:80%; margin-left:10%;">
                            <span class="input-group-text" style="margin-bottom:0rem;"><i class="fas fa-user-circle" style="margin-right:10px;"></i><label style="margin-bottom:0rem;">Correo Cliente:</label></span>
                            <asp:TextBox ID="txtCorreoCliente" CssClass="form-control input_pass" runat="server"></asp:TextBox>
                            <asp:Label ID="txtMECorreoC" runat="server" CssClass="form-text text-danger" Text=""></asp:Label>
                            <small id="clienteAyuda" class="form-text text-light">Correo del cliente al que se le aplicará el siguiente Canje</small>
                          <asp:RegularExpressionValidator
                            ID="validateEmail"
                            runat="server"
                            ErrorMessage="Correo invalido"
                            ForeColor="Red" Display="Dynamic"
                            ControlToValidate="txtCorreoCliente"
                            ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                    </div>
                    <hr />
                    
                </div>
                <div class="d-flex justify-content-center mt-3 login_container">
                    <asp:Button ID="btnSiguiente" CssClass="btn login_btn" OnClick="btnSiguiente_Click" runat="server" Text="Continuar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
