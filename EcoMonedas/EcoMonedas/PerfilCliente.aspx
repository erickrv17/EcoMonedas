<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="PerfilCliente.aspx.cs" Inherits="EcoMonedas.PerfilCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 col-sm-12 col-lg-6">
        <form runat="server">
            <div class="row">
                <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
            </div>
            <h2>Registro de Usuarios </h2>

            <div class="form-group row">
                <label for="lblNombre" class="control-label">Nombre</label>
                <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="*El nombre es requerido."
                    ControlToValidate="txtNombre"
                    ForeColor="Red"
                    SetFocusOnError="true"
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label for="lblPrimerApellido">Primer apellido</label>
                <asp:TextBox ID="txtPrimerApellido" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="*El primer apellido es requerido."
                    ControlToValidate="txtPrimerApellido"
                    ForeColor="Red"
                    SetFocusOnError="true"
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label for="exampleTextarea">Segundo Apellido</label>
                <asp:TextBox ID="txtSegundoApellido" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="*El segundo apellido es requerido."
                    ControlToValidate="txtSegundoApellido"
                    ForeColor="Red"
                    SetFocusOnError="true"
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label for="exampleTextarea">Teléfono</label>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">+506</span>
                    </div>
                    <asp:TextBox ID="txtTelefono" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="*El teléfono es requerido."
                    ControlToValidate="txtTelefono"
                    ForeColor="Red"
                    SetFocusOnError="true"
                    Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator3"
                    runat="server"
                    Text="El teléfono solo debe contener números"
                    ControlToValidate="txtTelefono"
                    SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                    ValidationExpression="^[0-9]*(\,)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group row">
                <label for="exampleTextarea">Correo electronico</label>
                <asp:TextBox ID="txtCorreo" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*El correo es requerido." ControlToValidate="txtCorreo" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label for="exampleTextarea">Contraseña</label>
                <asp:TextBox ID="txtPassword" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*la contraseña es requerida." ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group row">
                <label for="exampleTextarea">Direccion exacta</label>
                <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label for="exampleSelect1">Rol</label>
                <asp:DropDownList ID="DDLRol" CssClass="form-control" runat="server">
                </asp:DropDownList>
            </div>

            <div class="checkbox">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <label for="exampleTextarea">Activo </label>
            </div>


            <asp:HiddenField ID="hfUsuarioID" runat="server" Value="" />
            <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click" />
        </form>
    </div>
</asp:Content>
