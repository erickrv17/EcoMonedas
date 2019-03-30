<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministradorCentros.Master" AutoEventWireup="true" CodeBehind="canjeMateriales.aspx.cs" Inherits="EcoMonedas.canjeMateriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="Content/Carrito.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="container_inner default_template_holder clearfix page_container_inner">
            <div class="row">
                <div class="col-7">
                    <label>Porfavor coloquese por encima del material a canjear y haga click en agregar si desea canjear dicho material</label>
                </div>
                <div class="col-5">
                    <asp:Button ID="btnCanjear" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="Procesar →" />
                </div>
            </div>
            <div class="vc_row wpb_row section vc_row-fluid" style="padding-top: 0px; text-align: left;">
                <div class=" full_section_inner clearfix">
                    <div class="vc_col-sm-12 wpb_column vc_column_container">
                        <div class="wpb_wrapper">
                            <div class="projects_holder_outer v3 portfolio_with_space portfolio_standard ">
                                <div class="projects_holder clearfix v3 standard">
                                    <asp:ListView ID="listaMateriales" runat="server"
                                        DataKeyNames="ID" GroupItemCount="2"
                                        ItemType="Contexto.Material" SelectMethod="listadoMateriales">
                                        <EmptyDataTemplate>
                                            <div class="row">
                                                No hay datos
                                            </div>
                                        </EmptyDataTemplate>
                                        <EmptyItemTemplate>
                                            <div class="col-lg-3">
                                            </div>
                                        </EmptyItemTemplate>
                                        <GroupTemplate>
                                            <div class="row">
                                                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                            </div>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <article class="mix portfolio_category_17 portfolio_category_5  mix_all" style="display: inline-block; opacity: 1;">
                                                <div class="image_holder">
                                                    <a class="portfolio_link_for_touch" href="http://demo.qodeinteractive.com/bridge/portfolio_page/stockholm-fashion-destination/" target="_self"><span class="image">
                                                        <asp:Image ID="ImagenMat" runat="server" ImageUrl='<%# Eval("imagen", "~/Imagenes/Materiales/{0}")%>' ImageAlign="Middle" CssClass="attachment-full wp-post-image" />
                                                    </span></a><span class="text_holder"><span class="text_outer"><span class="text_inner"><span class="feature_holder"><span class="feature_holder_icons"><asp:LinkButton ID="linkAgregar" CssClass="btn btn-outline-dark lightbox qbutton small white" title='<%#:Item.Nombre%>' runat="server" OnClick="linkAgregar_Click">Agregar al carrito</asp:LinkButton></span></span></span></span></span>
                                                </div>
                                                <div class="portfolio_description ">
                                                    <h5 class="portfolio_title"><a href="#" target="_self"><%#:Item.Nombre%></a></h5>
                                                    <span class="project_category">Precio Unitario &cent;</b><%#: String.Format("{0:N2}", Item.PrecioUnitario)%></span>
                                                    <asp:TextBox runat="server" BorderStyle="Outset" BorderColor="Black" BackColor='<%# System.Drawing.ColorTranslator.FromHtml(Item.Color.CodigoColor) %>' Width="120" Height="10"></asp:TextBox>
                                                </div>
                                            </article>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <div class="container">
                                                <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                                            </div>
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <div class="filler"></div>
                                    <div class="filler"></div>
                                    <div class="filler"></div>
                                </div>
                            </div>
                            <div class="separator  transparent center  " style="margin-top: 20px; margin-bottom: 20px;"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
