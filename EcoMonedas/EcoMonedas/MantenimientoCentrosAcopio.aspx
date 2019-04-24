<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/paginaMaestraAdministrador.Master" CodeBehind="MantenimientoCentrosAcopio.aspx.cs" Inherits="EcoMonedas.MantenimientoCentrosAcopio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mb-2">

        <div class="row">
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 offset-lg-1">
                <h2>Registro Centros de Acopio </h2>

                <div class="row form-group">
                    <label for="inputSmall">Nombre: </label>
                    <asp:TextBox CssClass="form-control " ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="*El nombre es requerido."
                        ControlToValidate="txtNombre"
                        ForeColor="Red"
                        SetFocusOnError="true"
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvNombre" runat="server"
                        ErrorMessage="*El nombre debe de tener almenos 3 caracteres (Customizado)"
                        ControlToValidate="txtNombre"
                        ForeColor="Red"
                        SetFocusOnError="true"
                        Display="Dynamic"></asp:CustomValidator>
                </div>

                <div class="row form-group">
                    <label for="exampleSelect1">Administrador del Centro de Acopio: </label>
                    <asp:DropDownList ID="DDLAdmiCentro" CssClass="form-control" runat="server"
                        ItemType="Contexto.Usuario"
                        DataTextField="Nombre" DataValueField="CorreoElectronico">
                    </asp:DropDownList>
                </div>
                <div class="row form-group">
                    <label for="exampleSelect1">Provincia: </label>
                    <asp:DropDownList ID="DDLProvincia" CssClass="form-control" runat="server"
                        ItemType="Contexto.Provincia"
                        SelectMethod="listaProvincias"
                        DataTextField="Nombre" DataValueField="ID">
                    </asp:DropDownList>
                </div>
                <div class="row form-group">
                    <label for="exampleTextarea">Dirección exacta: </label>
                    <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="row form-group">
                    <label for="exampleTextarea">Correo: </label>
                    <asp:TextBox ID="txtCorreo" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*El correo es requerido." ControlToValidate="txtCorreo" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="row">
                    <label class="control-label">Estado: </label>
                </div>
                <div class="row form-group">
                    <label class="checkBoxEstado">
                        Activo
                                    <asp:CheckBox runat="server" ID="chkEstado" />
                        <span class="checkmark"></span>
                    </label>
                </div>

                <div class="row form-group">
                    <label for="archivoImagen" class="control-label">Imagen</label>
                    <asp:Image ID="Image1" CssClass="form-control img-thumbnail" Height="300px" AlternateText="Imagen centro de acopio" runat="server" />
                    <asp:FileUpload ID="archivoImagen" CssClass="form-control-file" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="*La imagen es requerida."
                        ControlToValidate="archivoImagen"
                        ForeColor="Red"
                        SetFocusOnError="true"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="form-group row">

                    <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click1" />
                    <div class="col-1"></div>
                     <button  type="reset"  class="btn btn-primary">Limpiar</button>
                             
                </div>
                <asp:HiddenField ID="hfCentroID" runat="server" Value="" />
            </div>

            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Listado Centros de Acopio
                </h2>
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <input class="form-control" id="system-search" name="q" placeholder="Buscar..." />
                </div>
                <div class="table-responsive">
                    <asp:GridView ID="grvListado" CssClass="table table-list-search" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true" DataKeyNames="ID" OnSelectedIndexChanged="grvListado_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Código"></asp:BoundField>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                            <asp:BoundField DataField="Usuario.Nombre" HeaderText="Administrador"></asp:BoundField>
                            <asp:BoundField DataField="Provincia.Nombre" HeaderText="Provincia"></asp:BoundField>
                        </Columns>
                        <HeaderStyle CssClass="table-info" />
                    </asp:GridView>
                    <asp:DropDownList ID="ddlFiltrosXEstado" runat="server" CssClass="form-control col-3" OnSelectedIndexChanged="ddlFiltrosXEstado_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Todos" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Activos" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No Activos" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
    <link href="Content/checkboxes.css" rel="stylesheet" />
     <script src="Scripts/FiltroTablas.js"></script>
</asp:Content>
