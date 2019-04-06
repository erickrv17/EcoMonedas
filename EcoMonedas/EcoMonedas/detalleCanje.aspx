<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="detalleCanje.aspx.cs" Inherits="EcoMonedas.detalleCanje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-5 col-sm-12">
            <asp:Button ID="btnEncabezados" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="← Facturas" OnClick="btnEncabezados_Click" />
        </div>
        <div class="col-lg-7 col-sm-12">
            <label>De click si desea devolverse a la página donde se muestran la información de Canjes realizados por el Centro de Acopio.</label>
        </div>
    </div>
    <asp:GridView ID="grvLista" runat="server" CssClass="table table-hover" DataKeyNames="ID" GridLines="Vertical" CellPadding="4" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Material.Nombre" HeaderText="Material"></asp:BoundField>
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad Material"></asp:BoundField>
            <asp:BoundField DataField="Total" DataFormatString="&cent; {0:N2}" HeaderText="Total"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="table-secondary" />
    </asp:GridView>
</asp:Content>
