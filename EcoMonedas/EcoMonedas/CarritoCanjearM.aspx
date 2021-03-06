﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="CarritoCanjearM.aspx.cs" Inherits="EcoMonedas.CarritoCanjearM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-5 col-sm-12">
                    <asp:Button ID="btnCanjeM" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="← Canjear Materiales" OnClick="btnCanjeM_Click" />
                </div>
                <div class="col-lg-7 col-sm-12">
                    <label>De click si desea devolverse a la página donde se muestran los materiales disponibles para canjear.</label>
                </div>
            </div>
            <ul class="list-group">
                <li class="list-group-item" style="background-color: #7ed957; color: white;">Información del Canje</li>
                <li class="list-group-item">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <br />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
                                </div>
                            </div>
                            <br />
                            <asp:GridView ID="grvCarrito" runat="server"
                                AutoGenerateColumns="False" DataKeyNames="idMaterial"
                                GridLines="Vertical" CellPadding="4"
                                CssClass="table table-hover"
                                AutoGenerateDeleteButton="true"
                                OnRowDeleting="grvCarrito_RowDeleting">
                                <Columns>
                                    <asp:BoundField DataField="mat.Nombre" HeaderText="Nombre de Material"></asp:BoundField>
                                    <asp:BoundField DataField="precioMaterial" DataFormatString="&cent;{0:N2}" HeaderText="Precio por Unidad"></asp:BoundField>
                                    <asp:BoundField DataField="mat.Color.Nombre" HeaderText="Color"></asp:BoundField>
                                    <asp:TemplateField HeaderText="Cantidad">
                                        <ItemTemplate>
                                            <asp:TextBox
                                                ID="CantidadCanjear"
                                                Width="40"
                                                runat="server"
                                                OnTextChanged="CantidadCanjear_TextChanged"
                                                Text='<%# Eval("cantidad")%>' AutoPostBack="true"></asp:TextBox>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="subtotal" DataFormatString="&cent;{0:N2}" HeaderText="Subtotal"></asp:BoundField>

                                </Columns>
                                <HeaderStyle CssClass="table" BackColor="#7ed957" ForeColor="White" />
                                <AlternatingRowStyle CssClass="table" />
                            </asp:GridView>
                            <div class="float-right">
                                <strong>
                                    <asp:Label ID="Label2" runat="server" Text="Total Unidades: "></asp:Label>
                                    <asp:Label ID="lblTotalUnidades" runat="server" Text="" Width="150px"></asp:Label>
                                    <asp:Label ID="LabelTotalText" runat="server" Text="Total Orden: "></asp:Label>
                                    <asp:Label ID="lblTotal" runat="server" Text="" Width="150px"></asp:Label>

                                </strong>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </li>
                <!--<li class="list-group-item">
                    <div class="alert alert-dismissible alert-warning">
                        <h4 class="alert-heading">Cantidad</h4>
                        <p class="mb-0">* La Cantidad de Materiales es intercambiable en la casilla Cantidad, verifique las cantidades antes de procesar el canje.</p>
                        <p class="mb-0">Gracias</p>
                    </div>
                </li>-->
                <li class="list-group-item">
                    <asp:Button ID="btnCanjear" runat="server" ValidationGroup="ordenar"
                        Text="Procesar Canje" OnClick="btnCanjear_Click" CssClass="btn btn-primary" />
                </li>

            </ul>
        </div>
    </div>
</asp:Content>
