<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.Master" AutoEventWireup="true" CodeBehind="MantenimientoMateriales.aspx.cs" Inherits="EcoMonedas.MantenimientoMateriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                        <asp:DropDownList ID="ddlColor" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row form-group">
                    <label for="archivoImagen" class="control-label">Imagen</label>
                    <asp:Image ID="Image1" CssClass="form-control img-thumbnail" AlternateText="Imagen Material" runat="server" />
                    <asp:FileUpload ID="archivoImagen" CssClass="form-control-file" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                        runat="server" Text="Imagen requerida"
                        ControlToValidate="archivoImagen"
                        SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group row">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </div>
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <!-- Registro -->
            </div>

            <div class="col-lg-7 col-md-6 col-sm-12">
                <!-- Listado -->
                <h2>Listado Materiales</h2>
                <asp:GridView ID="grvListado" runat="server" CssClass="table table-hover" GridLines="Both" AutoGenerateColumns="False" DataKeyNames="idMaterial" AutoGenerateSelectButton="true" OnSelectedIndexChanged="grvListado_SelectedIndexChanged">
                    <Columns>
                    </Columns>
                    <HeaderStyle CssClass="table-info" />
                </asp:GridView>
                <!-- Listado -->
            </div>

        </div>
    </div>
</asp:Content>
