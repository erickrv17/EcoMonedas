<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master" AutoEventWireup="true" CodeBehind="PrincipalAdministrador.aspx.cs" Inherits="EcoMonedas.PrincipalAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-2">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0" style="color: black;">Funciones</h1>
        </div>
        <div class="row">
            <div class="col-xl-3 col-md-6 mb-4">
                <a href="MantenimientoUsuario.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #7ed957">Mantenimiento</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color: #000">Usuarios</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-user fa-2x" style="color: #7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
                <a href="MantenimientoMateriales.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #7ed957">Mantenimiento</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color: #000">Materiales</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-recycle fa-2x" style="color: #7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
                <a href="MantenimientoCentrosAcopio.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #7ed957">Mantenimiento</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color: #000">Centros de Acopio</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-home fa-2x" style="color: #7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <a href="MantenimientoCupones.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #7ed957">Mantenimiento</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color: #000">Cupones</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-wallet fa-2x" style="color: #7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-6 col-md-6 mb-4">
                <a href="ReporteEMxCA.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #7ed957">Reporte</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color: #000">Ecomonedas por Centro de Acopio</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-coins fa-2x" style="color: #7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xl-6 col-md-6 mb-4">
                <a href="PerfilUsuario.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #7ed957">Editar</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color: #000">Tu Perfil</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-user fa-2x" style="color: #7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="row">
                <div class="col-lg-6 mb-4">

                    <!-- Illustrations -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold" style="color: #7ed957; text-align: center;">Funciones como Administrador</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-center">
                                <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="Imagenes/Funciones.png" alt="" />
                            </div>
                            <p>El Usuario Administrador puede: </p>
                            <ul>
                                <li>Gestionar todos los centros de Acopio</li>
                                <li>Gestionar los tipos de materiales reciclables</li>
                                <li>Gestionar los usuarios que ingresan al sistema</li>
                                <li>Gestionar los Cupones que brinda Eco-Monedas</li>
                                <li>Administrar su Perfil →</li>
                            </ul>
                        </div>
                        <div class="card-footer py-3">
                            <h6 class="m-0 font-weight-bold" style="color: #000; text-align: center;">Eco-Monedas</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-4">

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold" style="color: #7ed957; text-align: center;">Perfil del Administrador</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-center">
                                <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="Imagenes/EditarPerfil.png" alt="" />
                            </div>
                            <br />
                            <p>El Administrador puede: </p>
                            <p>Editar o Añadir datos personales en su perfil, haciendo clic acá abajo en el link ↓</p>
                            <br />
                            <a href="PerfilUsuario.aspx" style="color: #7ed957; text-align: center;" title="Clic para ir al Perfil">Ir al Perfil del Administrador →</a>
                        </div>
                        <div class="card-footer py-3">
                            <h6 class="m-0 font-weight-bold" style="color: #000; text-align: center;">Eco-Monedas</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
