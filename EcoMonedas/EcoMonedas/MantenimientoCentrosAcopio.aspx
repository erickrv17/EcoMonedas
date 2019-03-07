<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/paginaMaestraAdministrador.Master" CodeBehind="MantenimientoCentrosAcopio.aspx.cs" Inherits="EcoMonedas.MantenimientoCentrosAcopio" %>


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
                        <h3>Registro Centros de acopio </h3>
                     
                        <div class="form-group">
                            <label class="col-form-label col-form-label-sm" for="inputSmall">Nombre</label>
                            <asp:TextBox CssClass="form-control form-control-sm" ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*El nombre es requerido." ControlToValidate="txtNombre" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvNombre" runat="server" ErrorMessage="*El nombre debe de tener almenos 3 caracteres (Customizado)" ControlToValidate="txtNombre" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ></asp:CustomValidator>
                        </div>

                        <div class="form-group">
                            <label for="exampleSelect1">Administrador del Centro de acopio</label>                           
                            <asp:DropDownList ID="DDLAdmiCentro" CssClass="form-control" runat="server" ItemType="Contexto.Usuario" SelectMethod="listaUsuarios" DataTextField="Nombre" DataValueField="ID">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="exampleSelect1">Provincia</label>                            
                            <asp:DropDownList ID="DDLProvincia" CssClass="form-control" runat="server" ItemType="Contexto.Provincia" SelectMethod="listaProvincias"  DataTextField="Nombre" DataValueField="ID">
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Direccion exacta</label>
                            <asp:TextBox ID="txtDireccion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*La dirección es requerida." ControlToValidate="txtDireccion" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                         <div class="form-group">
                            <label for="exampleTextarea">Correo</label>
                            <asp:TextBox ID="txtCorreo" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*El correo es requerido." ControlToValidate="txtCorreo" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
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
                        <asp:HiddenField ID="hfCentroID" runat="server" Value="" />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click1" />

                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <h3>Listado Centros de acopio
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
