<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterCliente.Master" CodeBehind="BilleteraVirtualCliente.aspx.cs" Inherits="EcoMonedas.BilleteraVirtualCliente" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--  <div class="row" style="margin-bottom:15px;">
        <div class="col-lg-9 col-sm-12">
            <label>De click si desea canjear sus ecomonedas disponibles por un Cupon.</label>
        </div>
        <div class="col-lg-3 col-sm-12">
            <asp:Button ID="btnNuevoC" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Obtener un cupon →" OnClick="btnNuevoC_Click" />
        </div>
    </div>--%>
      
   
        <div class="col-md-4">
            <div class="card border-info mx-sm-1 p-3">
                <div class="card border-info shadow text-info p-3 my-card" ><span class="fa fa-cart-arrow-down" aria-hidden="true"></span></div>
                <div class="text-info text-center mt-3"><h4>Ecomonedas gastadas</h4></div>
                <div class="text-info text-center mt-2"><h1><asp:Label ID="lblEcoMonedasGastadas" runat="server" Text=""></asp:Label></h1></div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card border-success mx-sm-1 p-3">
                <div class="card border-success shadow text-success p-3 my-card"><span class="fa fa-money" aria-hidden="true"></span></div>
                <div class="text-success text-center mt-3"><h4>Ecomonedas disponibles</h4></div>
                <div class="text-success text-center mt-2"><h1><asp:Label ID="lblEcoMonedasDisponibles" runat="server" Text=""></asp:Label></h1></div>
            </div>
        </div>
      
        <div class="col-md-4">
            <div class="card border-warning mx-sm-1 p-3">
                <div class="card border-warning shadow text-warning p-3 my-card" ><span class="fa fa-cart-plus" aria-hidden="true"></span></div>
                <div class="text-warning text-center mt-3"><h4>Ecomonedas generadas</h4></div>
                <div class="text-warning text-center mt-2"><h1><asp:Label ID="lblEcoMonedasGeneradas" runat="server" Text=""></asp:Label></h1></div>
            </div>
        </div> 
  
    <div class="row" style="margin-bottom:15px;">
       <div class="col-lg-9 col-sm-12">
            <label>De click si desea canjear sus ecomonedas disponibles por un Cupon.</label>
        </div>
        <div class="col-lg-3 col-sm-12">

            <asp:Button ID="btnNuevoCupon" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Obtener un cupon →" OnClick="btnNuevoC_Click" />
        </div>

    </div>
    
    
     

</asp:Content>