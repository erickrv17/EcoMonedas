<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="PaginaPrincipalCliente.aspx.cs" Inherits="EcoMonedas.PaginaPrincipalCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Single Course Area -->
    <div class="row">
        <div class="jumbotron">
            <h4 class="display-4">Bienvenido,
                <label runat="server" text="" id="lblNombreBienv"></label>
            </h4>
            <p class="lead">Te presentamos las opciones que tienes al ser Cliente de Eco-Monedas</p>
            <%--<hr class="my-4" />--%>
            <div class="row">
                <div class="col-12">
                    <img src="Imagenes/Separador.png" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-12 col-sm-6 col-lg-6">
                    <a href="BilleteraVirtualCliente.aspx" style="text-decoration-color: #7ed957;">
                        <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                            <div class="course-icon">
                                <i class="fa fa-wallet"></i>
                            </div>
                            <div class="course-content">
                                <h4>Billetera Virtual</h4>
                                <p>En esta sección podrás revisar el saldo de tu cuenta de Eco-Monedas.</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-sm-6 col-lg-6">
                    <a href="CanjeCupones.aspx" style="text-decoration-color: #7ed957;">
                        <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                            <div class="course-content">
                                <h4>Obtener Cupon</h4>
                                <p>En esta sección podrás canjear tus Eco-Monedas por Cupones.</p>
                            </div>
                            <div class="course-icon">
                                <i class="fa fa-ticket-alt"></i>
                            </div>
                        </div>
                    </a>
                </div>
                
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-6">
                    <a href="listaCuponesAdquiridos.aspx" style="text-decoration-color: #7ed957;">
                        <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                            <div class="course-icon">
                                <i class="fa fa-cart-arrow-down"></i>
                            </div>
                            <div class="course-content">
                                <h4>Cupones Adquiridos</h4>
                                <p>En esta sección podrás revisar y descargar tus cupones, previamente adquiridos.</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-sm-6 col-lg-6">
                    <a href="PerfilUsuario.aspx" style="text-decoration-color: #7ed957;">
                        <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                            <div class="course-content">
                                <h4>Editar tu Perfil</h4>
                                <p>En esta sección podrás revisar y cambiar tu información personal.</p>
                            </div>
                            <div class="course-icon">
                                <i class="fa fa-user-circle"></i>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        </div>
        <div id="Contactenos" class="testimonials-area section-padding-100" style="background-color: #7ed957; border-radius: 40px;">
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
                            <i class="fa fa-mail-bulk fa-fw"></i>Correo Destinatario:
                       
                        <br />
                            <p style="color: black;"><b>EcomonedasP2019@gmail.com</b></p>
                            <br />
                        </address>
                        <hr />
                    </div>
                    <div class="col-1"></div>
                    <div class="col-md-8">
                        <h4 class="text-uppercase" style="text-align: center; font-family: inherit;">Contáctenos
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
                                        <input class="form-control" id="txtNombreC" type="text" runat="server" disabled="disabled" />
                                    </div>
                                    <div class="col-6">
                                        <label><b>Correo Electrónico:</b> </label>
                                         <input class="form-control" id="txtCorreoC" type="text" runat="server" disabled="disabled"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label><b>Asunto:</b> </label>
                                     <input class="form-control" id="txtAsuntoC" type="text" runat="server"/>
                                </div>
                                <div class="form-group">
                                    <label><b>Mensaje:</b> </label>
                                     <textarea class="form-control" id="txtMensajeC" runat="server" rows="5"></textarea>
                                </div>
                                <div class="text-center">
                                     <button class="btn" style="background-color:#7ed957; border-color:black; color:#000;" id="btnConfirmar" runat="server" onserverclick="btnConfirmar_ServerClick">Enviar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
