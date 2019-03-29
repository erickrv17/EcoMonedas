<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/paginaMaestraAdministrador.Master" CodeBehind="MantenimientoUsuario.aspx.cs" Inherits="EcoMonedas.MantenimientoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Content/checkboxes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
      <div class="container mb-2">

        <div class="row">
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 offset-lg-1">
               
                       <h2> Registro de Usuarios </h2>
                     
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
                            <asp:CustomValidator ID="cvNombre" runat="server" ErrorMessage="El nombre debe de tener almenos 15 caracteres (Customizado)" ControlToValidate="txtNombre" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ></asp:CustomValidator>
                        </div>
                         <div class="form-group row">
                             <label for="lblPrimerApellido">Primer apellido</label>
                            <asp:TextBox ID="txtPrimerApellido"  CssClass="form-control"  runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                 ErrorMessage="*El primer apellido es requerido." 
                                 ControlToValidate="txtPrimerApellido"
                                 ForeColor="Red" 
                                 SetFocusOnError="true" 
                                 Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group row">
                            <label for="exampleTextarea">Segundo Apellido</label>
                            <asp:TextBox ID="txtSegundoApellido"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="txtTelefono"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="txtCorreo"  CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*El correo es requerido." ControlToValidate="txtCorreo" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        
                        
                         <div class="form-group row">
                            <label for="exampleTextarea">Direccion exacta</label>
                            <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                       <%-- <div class="form-group row">
                            <label for="exampleSelect1">Rol</label>                           
                            <asp:DropDownList ID="DDLRol" CssClass="form-control" runat="server" ItemType="Contexto.Rol" SelectMethod="listaRoles" DataTextField="Descripcion" DataValueField="ID">
                            </asp:DropDownList>
                        </div>--%>
                         <div class="row">
                        <label class="control-label">Disponibilidad</label>
                      </div>
                        <div class="row form-group">
                            <label class="checkBoxEstado">
                                Disponible
                                <asp:CheckBox runat="server" ID="chkDisponible" />
                                <span class="checkmark"></span>
                            </label>
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
                
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click1" />
                             <div class="col-1"></div>
                        <button  type="reset"  class="btn btn-primary">Limpiar</button>
                 
                         </div> 
                     <asp:HiddenField ID="hfUsuarioID" runat="server" Value="" />
                      
                    </div>
            
                
            
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Listado Usuarios</h2>
                 <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <input class="form-control" id="system-search" name="q" placeholder="Buscar..."/>
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                    </span>
                </div>
                <div class="table-responsive">
                   <asp:GridView ID="grvListado" CssClass="table table-list-search" GridLines="Both" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true" DataKeyNames="CorreoElectronico" OnSelectedIndexChanged="grvListado_SelectedIndexChanged" >  
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                             <asp:BoundField DataField="PrimerApellido" HeaderText="Apellido"></asp:BoundField>
                             <asp:BoundField DataField="CorreoElectronico" HeaderText="Correo"></asp:BoundField>
                             <asp:BoundField DataField="Rol.Descripcion" HeaderText="Rol"></asp:BoundField>
                         </Columns>
                        <HeaderStyle CssClass="table-info" />
                    </asp:GridView>
                    <div class="input-group">
                    <div class="col-9"></div>
                    <asp:DropDownList ID="ddlFiltrosXEstado" runat="server" CssClass="form-control col-3" OnSelectedIndexChanged="ddlFiltrosXEstado_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Todos" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Activos" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No Activos" Value="0"></asp:ListItem>
                         <asp:ListItem Text="Clientes" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
