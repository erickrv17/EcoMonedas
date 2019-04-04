<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="detalleCanje.aspx.cs" Inherits="EcoMonedas.detalleCanje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grvLista" runat="server" CssClass="table table-hover" DataKeyNames="ID" GridLines="Vertical" CellPadding="4" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Material.Nombre" HeaderText="Material"></asp:BoundField>
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad Material"></asp:BoundField>
            <asp:BoundField DataField="Total" DataFormatString="&cent; {0:N2}" HeaderText="Total"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="table-secondary" />
    </asp:gridview>
</asp:Content>
