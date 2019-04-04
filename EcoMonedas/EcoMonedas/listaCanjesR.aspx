<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="listaCanjesR.aspx.cs" Inherits="EcoMonedas.listaCanjesR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grvLista" runat="server" CssClass="table table-hover" DataKeyNames="ID" GridLines="Vertical" CellPadding="4" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="grvLista_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Factura #:"></asp:BoundField>
            <asp:BoundField DataField="ClienteID" HeaderText="Correo Cliente:"></asp:BoundField>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha de Canje:"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="table-secondary" />
    </asp:gridview>
</asp:Content>
