<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="EcoMonedas.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="Imagenes/LogoTrans.png" rel="icon" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Template/TemplateRegistro/css/cssRegistro.css" rel="stylesheet" />
    <script src="Template/TemplateRegistro/js/jsRegistro.js"></script>
    <script type="text/javascript">
        function openModal() {
            $('#VentanaLogin').modal('show');
        }
    </script>
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
                                    <ul class="navbar-nav ml-auto">
                                        <div class="topbar-divider d-none d-sm-block"></div>
                                        <li class="nav-item dropdown no-arrow" title="Toque para opciones">
                                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="Toque para opciones">
                                                <i class="fa fa-user-circle"></i>
                                                <asp:Label ID="lblNombreUsuario" runat="server" Text="" CssClass="mr-2 d-none d-lg-inline text-gray-600" ForeColor="Black"></asp:Label>
                                            </a>
                                            <!-- Dropdown - User Information -->
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                                <%--<asp:Button ID="btnModuloUsuario" CssClass="dropdown-item" runat="server" ForeColor="#7ed957" Text="Módulo de Usuario" OnClick="btnModuloUsuario_Click" />--%>
                                                <button runat="server" onserverclick="btnModuloUsuario_Click" id="btnMU" class="dropdown-item" style="color: #7ed957;">Módulo Usuario</button>
                                                <div class="dropdown-divider"></div>
                                                <button runat="server" onserverclick="btnPerfil_ServerClick" id="btnPerfil" class="dropdown-item" style="color: #7ed957;">Perfil Usuario</button>
                                                <div class="dropdown-divider"></div>
                                                <%--<asp:Button ID="btnCerrarSesion" CssClass="dropdown-item" runat="server" ForeColor="#7ed957" Text="Cerrar Sesión" OnClick="btnCerrarSesion_Click" />--%>
                                                <button runat="server" onserverclick="btnCerrarSesion_Click" id="btnCS" style="color: #7ed957;" class="dropdown-item">Cerrar Sesión</button>
                                            </div>
                                        </li>
                                    </ul>
                                    <a href="#VentanaLogin" data-toggle="modal" runat="server" id="lblregistrese">Ingrese</a>
                                    <a href="Registrarse.aspx"  runat="server" id="lblAutoRegistro">/ Registrese</a>
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
                                        <li><a href="#MaterialesR">Materiales reciclables</a></li>
                                        <li><a href="#CentrosA">Centros de Acopio</a></li>
                                        <li><a href="#Contactenos">Contactenos</a></li>
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
               
            </div>
        </div>

        <%-- Inicio del frame --%>
          <div class="container">
           <div class="row">
            <asp:Label ID="lblMensajeU" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
        </div>
      
            <div class="col-lg-4 col-md-4 col-sm-12 offset-lg-1">
               
                       <h2> Registro de Usuarios </h2>
                     
                        <div class="form-group row">
                             <label for="lblNombre" class="control-label">Nombre</label>
                            <asp:TextBox CssClass="form-control" ID="txtNombre" placeholder="Nombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ErrorMessage="*El nombre es requerido." 
                                ControlToValidate="txtNombre"
                                ForeColor="Red" 
                                SetFocusOnError="true" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvNombre" runat="server" ErrorMessage="El nombre debe de tener almenos 15 caracteres (Customizado)" ControlToValidate="txtNombre" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ></asp:CustomValidator>
                        </div>
                         <div class="form-group row">
                             <label for="lblPrimerApellido">Primer apellido</label>
                            <asp:TextBox ID="txtPrimerApellido"  placeholder="Primer apellido" CssClass="form-control"  runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                 ErrorMessage="*El primer apellido es requerido." 
                                 ControlToValidate="txtPrimerApellido"
                                 ForeColor="Red" 
                                 SetFocusOnError="true" 
                                 Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group row">
                            <label for="exampleTextarea">Segundo Apellido</label>
                            <asp:TextBox ID="txtSegundoApellido" placeholder="Segundo apellido" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="*El segundo apellido es requerido." 
                                ControlToValidate="txtSegundoApellido" 
                                ForeColor="Red" 
                                SetFocusOnError="true" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group row">
                            <label for="exampleTextarea">Teléfono</label>
                               <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">+506</span>
                                </div>
                            <asp:TextBox ID="txtTelefono" placeholder="ej:8888 8888" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
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
                         <div class="form-group row">
                            <label for="exampleTextarea">Correo electronico</label>
                            <asp:TextBox placeholder="ej: correo001@gmail.com" runat="server" ID="txtCorreo" class="form-control" TextMode="Email" />
                           <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCorreo"
                               CssClass="text-danger" ErrorMessage="*El correo es necesario" />
                             <asp:RegularExpressionValidator 
                                 ID="validateEmail"
                                 runat="server" 
                                 ErrorMessage="Correo invalido"
                                 ControlToValidate="txtCorreo"
                                 ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />

                         </div>
                       <div class="form-group row">
                            <label for="contrasenna">Contraseña</label>
                                 <asp:TextBox placeholder="contraseña" runat="server" ID="txtContrasena" class="form-control" TextMode="Password"  required="required"/>
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtContrasena"
                                 CssClass="text-danger" ErrorMessage="*La contraseña es necesaria" />

                       </div>
                       <div class="form-group row">
                            <label for="contrasenna">Confirmar contraseña</label>
                              <asp:TextBox placeholder="confirmar contraseña" runat="server" ID="txtConfirmarContrasenna" class="form-control" TextMode="Password"  required="required"/>
                            <asp:CompareValidator runat="server" ControlToCompare="txtContrasena" ControlToValidate="txtConfirmarContrasenna"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Las contraseñas no coinciden." />
           
                       </div>
                        
                        
                         <div class="form-group row">
                            <label for="exampleTextarea">Direccion exacta</label>
                            <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                     

                    

                         <div class="form-group row">
                
                         <button runat="server" class="btn" style="background-color:#7ed957 ; color:white;" onserverclick="btnRegistra_Click">Registrate</button>
                                      <div class="col-1"></div>
                        <button  type="reset"  class="btn btn-secondary">Limpiar</button>
                 
                         </div> 
                 
                      
                    </div> 

          </div> 
                

    
        <!-- ##### Top Feature Area End ##### -->
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
               
            </div>
        </div>
    

        <!-- ##### Course Area End ##### -->

        <!-- ##### Testimonials Area Start ##### -->
        <div class="testimonials-area section-padding-100" style="background-color: #7ed957;">
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
                                <div runat="server" role="form" class="contactForm">
                                    <div class="row form-group">
                                        <div class="col-6">
                                            <label><b>Nombre:</b> </label>
                                            <input class="form-control" id="txtNombreC" type="text" runat="server" />
                                        </div>
                                        <div class="col-6">
                                            <label><b>Correo Electrónico:</b> </label>
                                            <input class="form-control" id="txtCorreoC" type="text" runat="server" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label><b>Asunto:</b> </label>
                                        <input class="form-control" id="txtAsuntoC" type="text" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label><b>Mensaje:</b> </label>
                                        <textarea class="form-control" id="txtMensajeC" runat="server" rows="5"></textarea>
                                    </div>
                                    <div class="text-center">
                                        <button class="btn" style="background-color: #7ed957; border-color: black; color: #000;" id="btnConfirmar" runat="server" onserverclick="btnConfirmar_ServerClick">Enviar</button>
                                    </div>
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
             
                <br />
             
               
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




        <div class="modal fade" id="VentanaLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">

                        <img class="img-circle" id="img_logo" src="Imagenes/LogoT.png" />
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="fa fa-remove" aria-hidden="true"></span>
                        </button>
                    </div>

                    <!-- Begin # DIV Form -->

                    <div id="div-forms">

                        <!-- Begin # Login Form -->
                        <div id="login-form">
                            <div class="modal-body">
                                <div>
                                    <div id="icon-login-msg"><i class="fa fa-user"></i></div>
                                    <span>Digita tus credenciales de Inicio.</span>
                                    <br />
                                    <br />
                                    <label id="lblMensaje" visible="false" style="color: red;" runat="server">Usuario Incorrecto</label>


                                </div>
                                <asp:TextBox ID="txtCorreoLogin" class="form-control" type="text" runat="server" placeholder="Correo electrónico"></asp:TextBox>
                                <asp:TextBox ID="txtContra" class="form-control" type="password" runat="server" placeholder="Contraseña"></asp:TextBox>

                                <br />
                            </div>
                            <div class="modal-footer">
                                <div>
                                    <button runat="server" class="btn" style="background-color: #7ed957;color:white " onserverclick="btnIngresar_Click">Iniciar Sesión</button>
                                </div>
                                <div>
                                    <button id="login_lost_btn" type="button" style="color: #7ed957" class="btn btn-link">¿Olvidaste tu contraseña?</button>
                                    <button id="btnPaginaRegistrarse" type="button" style="color: #7ed957" class="btn btn-link">Registrate</button>
                                </div>
                            </div>
                        </div>
                        <!-- End # Login Form -->

                        <!-- Begin | Lost Password Form -->
                        <div id="lost-form" style="display: none;">
                            <div class="modal-body">
                                <div>
                                    <div id="icon-lost-msg"><i class="fa fa-paper-plane"></i></div>
                                    <span id="text-lost-msg">Escribe tu correo de recuperación.</span>
                                </div>
                                <asp:TextBox ID="txtCorreoRecuperacion" class="form-control" type="text" runat="server" placeholder="Correo"></asp:TextBox>
                            </div>
                            <div class="modal-footer">
                                <div>
                                    <button type="submit" class="btn btn-success">Enviar</button>
                                </div>
                                <div>
                                    <button id="lost_login_btn" type="button" style="color: #7ed957" class="btn btn-link">Iniciar Sesión</button>
                                    <button id="register_btn" type="button" style="color: #7ed957" class="btn btn-link">Registrate</button>
                                </div>
                            </div>
                        </div>
                        <!-- End | Lost Password Form -->

                        <!-- Begin | Register Form -->
                       
                        <!-- End | Register Form -->

                    </div>

                    <!-- End # DIV Form -->

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

