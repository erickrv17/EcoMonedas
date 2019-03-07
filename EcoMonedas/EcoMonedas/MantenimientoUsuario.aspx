<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/paginaMaestraAdministrador.Master" CodeBehind="MantenimientoUsuario.aspx.cs" Inherits="EcoMonedas.MantenimientoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br/><br/><br/><br/><br/><br/>
      <div class="container mb-2">

        <div class="row">
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row">
                    <div class="col-lg-8 offset-lg-4 col-md-8 offset-md-4 col-sm-12 float-lg-right float-md-right">
                        <h3> Registro de Usuarios </h3>
                     
                        <div class="form-group">
                            <label class="col-form-label col-form-label-sm" for="inputSmall">Nombre</label>
                            <asp:TextBox CssClass="form-control form-control-sm" ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*El nombre es requerido." ControlToValidate="txtNombre" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvNombre" runat="server" ErrorMessage="*El nombre debe de tener almenos 15 caracteres (Customizado)" ControlToValidate="txtNombre" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ></asp:CustomValidator>
                        </div>
                         <div class="form-group">
                             <label class="col-form-label col-form-label-sm" for="inputSmall">Primer apellido</label>
                            <asp:TextBox ID="txtPrimerApellido"  CssClass="form-control form-control-sm"  runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*El primer apellido es requerido." ControlToValidate="txtPrimerApellido" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                            <label for="exampleTextarea">Segundo Apellido</label>
                            <asp:TextBox ID="txtSegundoApellido"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*El segundo apellido es requerido." ControlToValidate="txtSegundoApellido" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                            <label for="exampleTextarea">Telefono</label>
                            <asp:TextBox ID="txtTelefono"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*El telefono es requerido." ControlToValidate="txtTelefono" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                            <label for="exampleTextarea">Correo electronico</label>
                            <asp:TextBox ID="txtCorreo"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*El correo es requerido." ControlToValidate="txtCorreo" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                            <label for="exampleTextarea">Contraseña</label>
                            <asp:TextBox ID="txtPassword"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*la contraseña es requerida." ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        
                         <div class="form-group">
                            <label for="exampleTextarea">Direccion exacta</label>
                            <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleSelect1">Rol</label>                           
                            <asp:DropDownList ID="DDLRol" CssClass="form-control" runat="server" ItemType="Contexto.Rol" SelectMethod="listaRoles" DataTextField="Descripcion" DataValueField="ID">
                            </asp:DropDownList>
                        </div>
                       
                       <div class="form-group">
                            <label for="exampleTextarea">Activo </label>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                         </div>

                        <div class="form-group">
                            <label for="exampleInputFile">Imagen</label>
                            <asp:FileUpload ID="archivoImagen" CssClass="form-control-file" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*La imagen es requerida." ControlToValidate="archivoImagen" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <asp:HiddenField ID="hfUsuarioID" runat="server" Value="" />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click1" />

                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <h3>Listado Usuarios
                </h3>
                <div class="table-responsive">
                   <asp:GridView ID="grvListado" CssClass="table table-light table-hover" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true" DataKeyNames="CentroID" OnSelectedIndexChanged="grvListado_SelectedIndexChanged" >  
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                         </Columns>
                        <HeaderStyle CssClass="thead-dark" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
