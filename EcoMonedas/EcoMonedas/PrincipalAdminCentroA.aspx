<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="PrincipalAdminCentroA.aspx.cs" Inherits="EcoMonedas.PrincipalAdminCentroA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-2">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0" style="color:black;">Funciones</h1>
        </div>
        <div class="row">
            <div class="col-xl-6 col-md-6 mb-4">
                <a href="canjeMateriales.aspx">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color:#7ed957">Realizar un Canje</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color:#000">De Materiales</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-coins fa-2x" style="color:#7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xl-6 col-md-6 mb-4">
                <a href="#">
                    <div class="card border-left shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1" style="color:#7ed957">Reporte</div>
                                    <div class="h5 mb-0 font-weight-bold" style="color:#000">Ecomonedas de su Centro de Acopio</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-chart-area fa-2x" style="color:#7ed957"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 mb-4">

                <!-- Illustrations -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold" style="color:#7ed957; text-align:center;">Funciones como Administrador de Centro de Acopio</h6>
                    </div>
                    <div class="card-body">
                        <div class="text-center">
                            <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="Imagenes/FuncionesAC.png" alt="" />
                        </div>
                        <p>El Usuario Administrador puede: </p>
                        <ul>
                            <li>Gestionar todos los canjes de Materiales de su Centro de Acopio</li>
                            <li>Gestionar los reportes del propio Centro de Acopio</li>
                            <li>Administrar su Perfil →</li>
                        </ul>
                    </div>
                    <div class="card-footer py-3">
                        <h6 class="m-0 font-weight-bold" style="color:#000; text-align:center;">Eco-Monedas</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mb-4">

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold" style="color:#7ed957; text-align:center;">Perfil del Administrador de Centro de Acopio</h6>
                    </div>
                    <div class="card-body">
                        <div class="text-center">
                            <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="Imagenes/EditarPerfilAC.png" alt="" />
                        </div>
                        <br />
                        <p>El Administrador de Centro de Acopio puede: </p>
                        <p>Editar o Añadir datos personales en su perfil, haciendo clic acá abajo en el link ↓</p>

                        <a href="#" style="color:#7ed957; text-align:center;" title="Clic para ir al Perfil del Admin.C.A">Ir a su Perfil de Administrador de Centro de Acopio →</a>
                    </div>
                    <div class="card-footer py-3">
                        <h6 class="m-0 font-weight-bold" style="color:#000; text-align:center;">Eco-Monedas</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
