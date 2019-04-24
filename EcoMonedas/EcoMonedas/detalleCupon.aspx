<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterCliente.Master" CodeBehind="detalleCupon.aspx.cs" Inherits="EcoMonedas.detalleCupon" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-5 col-sm-12">
               <button type="button" runat="server" onserverclick="btnListaCupones_Click"  class="btn btn-primary">← Cupones</button>

         </div>
        <div class="col-lg-7 col-sm-12">
            <label>De click si desea devolverse a la página donde se muestran la lista de Cupones adquiridos.</label>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-lg-12">
            <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
        </div>
    </div>
    <br />
    <div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="Reportes\reporteCupon.rdlc">
            </LocalReport>
        </rsweb:ReportViewer>
    </div>
     <br />
    <div class="row">
        <div class="col-lg-5 col-sm-12">
            <button type="button" runat="server" onserverclick="btnDescargar_Click" class="btn btn-primary">Enviar por correo</button>

            <%-- <asp:Button ID="btnDescargar" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Enviar por correo" OnClick="btnDescargar_Click"  />
            --%>
        </div>
    </div>
     <br />
</asp:Content>
