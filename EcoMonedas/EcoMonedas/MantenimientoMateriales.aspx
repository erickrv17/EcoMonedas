<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoMateriales.aspx.cs" Inherits="EcoMonedas.MantenimientoMateriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/checkboxes.css" rel="stylesheet" />
    <script src="Scripts/FiltroTablas.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-2">
        <div class="row">
            <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
        </div>
        <div class="row">

            <div class="col-lg-4 col-md-4 col-sm-12 offset-lg-1">
                <h2>Información del Material</h2>
                <div class="form-group row">
                    <label for="lblNombre" class="control-label">Nombre</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                        runat="server"
                        ErrorMessage="El Nombre es requerido"
                        ControlToValidate="txtNombre"
                        SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group row">
                    <label for="lblPrecio" class="control-label">Precio Unitario</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">&cent;</span>
                        </div>
                        <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator8"
                        runat="server" Text="El Precio Requerido."
                        ControlToValidate="txtPrecio"
                        SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3"
                        runat="server"
                        Text="El precio solo debe contener números"
                        ControlToValidate="txtPrecio"
                        SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                        ValidationExpression="^[0-9]*(\,)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group row">
                    <label for="lblColor" class="control-label">Color</label>
                    <div class="input-group mb-3">
                        <asp:DropDownList ID="ddlColor" ItemType="Contexto.Color" SelectMethod="listaColores" DataTextField="Nombre" DataValueField="idColor" runat="server" OnSelectedIndexChanged="ddlColor_SelectedIndexChanged" OnDataBound="ddlColor_DataBound" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="PanelColor" BorderColor="Black" BorderStyle="Outset" Width="50px" Height="39px" runat="server"></asp:Panel>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ddlColor" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="row form-group">
                    <label for="archivoImagen" class="control-label">Imagen</label>
                    <asp:Image ID="Image1" CssClass="form-control img-thumbnail" Height="300px" AlternateText="Imagen Material" runat="server" />
                    <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                               
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="archivoImagen" EventName="Unload" />
                            </Triggers>
                        </asp:UpdatePanel>--%>

                    <asp:FileUpload ID="archivoImagen" CssClass="form-control-file" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                        runat="server" Text="Imagen requerida"
                        ControlToValidate="archivoImagen"
                        SetFocusOnError="true" ForeColor="Red" Display="Dynamic" Enabled="true"></asp:RequiredFieldValidator>
                </div>
                <div class="row">
                    <label class="control-label">Estado</label>
                </div>
                <div class="row form-group">
                    <label class="checkBoxEstado">
                        Activo
                        <asp:CheckBox runat="server" ID="chkEstado" />
                        <span class="checkmark"></span>
                    </label>
                </div>
                <div class="form-group row">
                    <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                    <div class="col-1"></div>
                    <asp:Button ID="btnLimpiar" CssClass="btn btn-primary" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                </div>
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <!-- Registro -->
            </div>

            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Listado Materiales</h2>
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <input class="form-control" id="system-search" name="q" placeholder="Buscar..."/>
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                    </span>
                </div>
                <div class="row">
                    <asp:DropDownList ID="ddlFiltrosXEstado" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlFiltrosXEstado_SelectedIndexChanged">
                        <asp:ListItem Text="Todos" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Activos" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No Activos" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:GridView ID="grvListado" runat="server" CssClass="table table-list-search" AutoGenerateColumns="False" DataKeyNames="ID" AutoGenerateSelectButton="true" OnSelectedIndexChanged="grvListado_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                        <asp:BoundField DataField="PrecioUnitario" HeaderText="Precio Unitario"></asp:BoundField>
                        <asp:BoundField DataField="Color.Nombre" HeaderText="Color"></asp:BoundField>
                    </Columns>
                    <HeaderStyle CssClass="table-info" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
