<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/PaginaMaestraAdministrador.Master" CodeBehind="ReporteClientes.aspx.cs" Inherits="EcoMonedas.FrmReporteClientes" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-10" style="margin-bottom: 20px;">
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                <LocalReport ReportPath="Reportes\reporteClientes.rdlc"></LocalReport>
            </rsweb:ReportViewer>
        </div>
        <div class="col-lg-1"></div>
    </div>
</asp:Content>
