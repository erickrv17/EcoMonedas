<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterCliente.Master" CodeBehind="BilleteraVirtualCliente.aspx.cs" Inherits="EcoMonedas.BilleteraVirtualCliente" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row" style="margin-bottom: 15px;">
        <div class="col-lg-9 col-sm-12">
            <label>De click si desea canjear sus ecomonedas disponibles por un Cupon.</label>
        </div>
        <div class="col-lg-3 col-sm-12">

            <asp:Button ID="btnNuevoCupon" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Obtener un cupon →" OnClick="btnNuevoC_Click" />
        </div>

    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="card border-info mx-sm-1 p-3" style="height: 230px;">
                <div class="card border-danger shadow p-3 my-card" style="width: 55px; color: red;"><span class="fa fa-money-bill" aria-hidden="true"></span></div>
                <div class="text-info text-center mt-3">
                    <h4>Ecomonedas Gastadas</h4>
                </div>
                <div class="text-info text-center mt-2">
                    <h1>
                        <asp:Label ID="lblEcoMonedasGastadas" runat="server" Text=""></asp:Label></h1>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card border-success mx-sm-1 p-3">
                <div class="card border-warning shadow p-3 my-card" style="width: 55px; color: green;"><span class="fa fa-money-check" aria-hidden="true"></span></div>
                <div class="text-success text-center mt-3">
                    <h4>Ecomonedas Disponibles</h4>
                </div>
                <div class="text-success text-center mt-2">
                    <h1>
                        <asp:Label ID="lblEcoMonedasDisponibles" runat="server" Text=""></asp:Label></h1>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card border-warning mx-sm-1 p-3">
                <div class="card shadow p-3 my-card" style="width: 55px; color: #7ed957; border-color: #7ed957"><span class="fa fa-money-bill-wave" aria-hidden="true"></span></div>
                <div class="text-warning text-center mt-3">
                    <h4>Ecomonedas Generadas</h4>
                </div>
                <div class="text-warning text-center mt-2">
                    <h1>
                        <asp:Label ID="lblEcoMonedasGeneradas" runat="server" Text=""></asp:Label></h1>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
