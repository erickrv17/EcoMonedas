<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterCliente.Master" CodeBehind="listaCuponesAdquiridos.aspx.cs" Inherits="EcoMonedas.listaCuponesAdquiridos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:15px;">
        <div class="col-lg-9 col-sm-12">
            <label>De click si desea adquirir un nuevo cupon.</label>
        </div>
        <div class="col-lg-3 col-sm-12">
            <asp:Button ID="btnNuevoC" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Adquirir cupones →" OnClick="btnNuevoC_Click" />
        </div>
    </div>
    <asp:Gridview ID="grvLista" runat="server" CssClass="table table-hover overflow-auto" DataKeyNames="ID" GridLines="Vertical" CellPadding="4" AutoGenerateColumns="false" OnSelectedIndexChanged="grvLista_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ControlStyle-CssClass="btn btn-primary" SelectText="Detalle del cupon" ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
            <asp:BoundField DataField="ID" HeaderText="Factura #:"></asp:BoundField>
            <asp:BoundField DataField="CuponID" HeaderText="Codigo del cupon:"></asp:BoundField>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha de Adquisicion:"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="table-secondary" />
    </asp:Gridview>
</asp:Content>
