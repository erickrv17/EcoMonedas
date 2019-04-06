<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="listaCanjesR.aspx.cs" Inherits="EcoMonedas.listaCanjesR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:15px;">
        <div class="col-lg-9 col-sm-12">
            <label>De click si desea realizar un nuevo Canje de Materiales.</label>
        </div>
        <div class="col-lg-3 col-sm-12">
            <asp:Button ID="btnNuevoC" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Realizar Nuevo Canje →" OnClick="btnNuevoC_Click" />
        </div>
    </div>
    <asp:GridView ID="grvLista" runat="server" CssClass="table table-hover overflow-auto" DataKeyNames="ID" GridLines="Vertical" CellPadding="4" AutoGenerateColumns="false" OnSelectedIndexChanged="grvLista_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ControlStyle-CssClass="btn btn-primary" SelectText="Mas Informaci&#243;n" ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
            <asp:BoundField DataField="ID" HeaderText="Factura #:"></asp:BoundField>
            <asp:BoundField DataField="ClienteID" HeaderText="Correo Cliente:"></asp:BoundField>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha de Canje:"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="table-secondary" />
    </asp:gridview>
</asp:Content>
