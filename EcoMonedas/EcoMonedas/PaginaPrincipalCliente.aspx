<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="PaginaPrincipalCliente.aspx.cs" Inherits="EcoMonedas.PaginaPrincipalCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Single Course Area -->
    <div class="col-12 col-sm-6 col-lg-2">
    </div>
    <div class="col-12 col-sm-6 col-lg-4">
        <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
            <div class="course-icon">
                <i class="fa fa-money"></i>
            </div>
            <div class="course-content">
                <h4>Billetera Virtual</h4>
                <p>En esta sección podrás revisar el saldo de tu cuenta de Eco-Monedas.</p>
            </div>
        </div>
    </div>
    <!-- Single Course Area -->
    <div class="col-12 col-sm-6 col-lg-4">
        <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
            <div class="course-icon">
                <i class="fa fa-user-circle"></i>
            </div>
            <div class="course-content">
                <h4>Editar tu Perfil</h4>
                <p>En esta sección podrás revisar y cambiar tu información personal.</p>
            </div>
        </div>
    </div>
    <!-- Single Course Area -->
    <div class="col-12 col-sm-6 col-lg-2">
    </div>
    <div class="row">
        <div class="col-12">
            <img src="Imagenes/Separador.png" />
        </div>
    </div>
    </div>
    </div>
    </div>
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
                        <p style="color: black;"><b>EcomonedasP2019@gmail.com</b></p>
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
                                    <asp:textbox id="txtNombre" cssclass="form-control" runat="server"></asp:textbox>
                                </div>
                                <div class="col-6">
                                    <label><b>Correo Electrónico:</b> </label>
                                    <asp:textbox id="txtCorreo" cssclass="form-control" runat="server"></asp:textbox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label><b>Asunto:</b> </label>
                                <asp:textbox id="txtAsunto" cssclass="form-control" runat="server"></asp:textbox>
                            </div>
                            <div class="form-group">
                                <label><b>Mensaje:</b> </label>
                                <asp:textbox id="txtMensaje" cssclass="form-control" textmode="MultiLine" runat="server"></asp:textbox>
                            </div>
                            <div class="text-center">
                                <asp:button id="btnEnviar" runat="server" cssclass="btn btn-outline-dark" text="Enviar" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
