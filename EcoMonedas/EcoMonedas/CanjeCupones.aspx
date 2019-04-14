<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterCliente.Master" CodeBehind="CanjeCupones.aspx.cs" Inherits="EcoMonedas.CanjeCupones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="Content/Carrito.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function openModalCanjeCupon() {
            $('#modalCanjearCupon').modal('show');
        }
    </script>
    <div class="modal fade text-center py-5" id="modalCanjearCupon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <img class="img-circle" id="img_logo" src="Imagenes/LogoT.png" />
                </div>
                <div class="modal-body">
                    <div class="top-strip"></div>
                    <a class="#">Canjear Cupon <asp:Label ID="lblNombreC" runat="server" Text=""></asp:Label></a>
                    <p class="pb-1 text-muted">¿Está seguro que desea adquirir el cupón?</p>
                    <%--<div class="input-group mb-3 w-75 mx-auto">
                             <span> <b>descripcion:</b><asp:Label ID="lblDescripcion" runat="server"></asp:Label></span><br />
                    </div>
                    <div class="input-group mb-3 w-75 mx-auto">                  
                             <span ><b>Valor Comercial: </b>&cent; <asp:Label ID="lblValorComercial" runat="server"></asp:Label></span><br />
                    </div>
                    <div class="input-group mb-3 w-75 mx-auto">
                             <span ><b>EcoMonedas Necesarias: </b>&cent; <asp:Label ID="lblEcoMonedasNesarias" runat="server"></asp:Label></span><br />
                    </div>    			--%>
                    <p class="pb-1 text-muted"><small>Seleccione confirmar para proceder a hacer su transacción</small></p>
                    <div class="bottom-strip"></div>
                </div>
                <div class="modal-footer">
                    <%--<asp:Button runat="server" ID="btnVolver" CssClass="form-control btn" OnClick="btnVolver_Click" Text="Cancelar" BackColor="rgba(21, 21, 21, 0.78)" ForeColor="White"/>--%>
                    <button runat="server" class="form-control btn" onserverclick="btnVolver_Click" data-dismiss="modalCanjearCupon" style="background-color:rgba(21, 21, 21, 0.78); color: white; border-color:#7ed957;">Cancelar</button>
                    <%--<asp:Button runat="server" ID="btnCanjear" CssClass="form-control btn btn-primary" data-dismiss="modalCanjearCupon" OnClick="btnCanjear_Click" Text="Confirmar compra del cupón"/>--%>
                    <button runat="server" onserverclick="btnCanjear_Click" class="form-control btn btn-primary">Confirmar canje</button>
                </div>
                <asp:HiddenField ID="hfCupon" runat="server" />
            </div>
        </div>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="container_inner default_template_holder clearfix page_container_inner">
                    <div class="row" style="margin-left: 15px;">
                        <div class="col-lg-3 col-sm-12">
                            <asp:Button ID="btnBilletera" runat="server" CssClass="btn btn-primary" ForeColor="White" Text="← Volver a la página Principal" OnClick="btnBilletera_Click1" />
                        </div>
                        <div class="col-lg-9 col-sm-12">
                            <label>Porfavor coloquese por encima del cupon que desea adquirir y haga click si lo desea obtener</label>
                        </div>
                    </div>
                    <div class="vc_row wpb_row section vc_row-fluid" style="padding-top: 80px; text-align: left;">
                        <div class=" full_section_inner clearfix">
                            <div class="vc_col-sm-12 wpb_column vc_column_container">
                                <div class="wpb_wrapper">
                                    <div class="projects_holder_outer v3 portfolio_with_space portfolio_standard ">
                                        <div class="projects_holder clearfix v3 standard">
                                            <asp:ListView ID="listaCupones" runat="server"
                                                DataKeyNames="ID" GroupItemCount="3"
                                                ItemType="Contexto.Cupon" SelectMethod="listadoCupones">
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
                                                                <asp:Image ID="ImagenMat" runat="server" ImageUrl="~/Imagenes/EcoCupon.png" ImageAlign="Middle" CssClass="attachment-full wp-post-image" />
                                                            </span></a><span class="text_holder"><span class="text_outer"><span class="text_inner"><span class="feature_holder"><span class="feature_holder_icons">
                                                                <asp:LinkButton ID="linkAgregar" CssClass="btn btn-outline-dark lightbox qbutton small white" title='<%#:Item.Nombre%>' runat="server" OnClick="linkAgregar_Click">Obtener Cupon</asp:LinkButton></span></span></span></span></span>

                                                            <div class="portfolio_description ">
                                                                <h5 class="portfolio_title"><a href="#" target="_self"><%#:Item.Nombre%></a></h5>
                                                                <span class="project_category"><%#: Item.Descripcion%></span>
                                                                <span class="project_category"><b>Valor Comercial: </b>&cent;<%#: String.Format("{0:N2}", Item.PrecioCanje)%></span>
                                                                <span class="project_category"><b>EcoMonedas Necesarias: </b>&cent;<%#: String.Format("{0:N2}", Item.EcoMonedasNecesarias)%></span>
                                                            </div>
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
