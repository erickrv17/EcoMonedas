<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/paginaMaestraAdministrador.Master" CodeBehind="MantenimientoCupones.aspx.cs" Inherits="EcoMonedas.MantenimientoCupones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
      <div class="container mb-2">

        <div class="row">
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-dismissible alert-warning" Visible="false"></asp:Label>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 offset-lg-1">
                      <h2>Registro Cupones </h2>
                     
                        <div class="form-group">
                            <label for="inputSmall">Nombre</label>
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
                                Display="Dynamic" ></asp:CustomValidator>
                        </div>
                       <div class="form-group">
                            <label for="exampleTextarea">Precio</label>
                            <asp:TextBox ID="txtPrecioCanje" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="*El precio es requerido." 
                                ControlToValidate="txtPrecioCanje" 
                                ForeColor="Red" 
                                SetFocusOnError="true" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Eco Monedas necesarias</label>
                            <asp:TextBox ID="txtEcoMonedasNecesarias" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                 ErrorMessage="*La cantidad de monedas necesarias es requerido."
                                 ControlToValidate="txtEcoMonedasNecesarias" 
                                 ForeColor="Red" 
                                 SetFocusOnError="true" 
                                 Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea">Descripción</label>
                            <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*La dirección es requerida." 
                                ControlToValidate="txtDescripcion" 
                                ForeColor="Red" 
                                SetFocusOnError="true" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                       <div class="form-group">
                            <label for="exampleTextarea">Activo </label>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                         </div>

                        <asp:HiddenField ID="hfCuponID" runat="server" Value="" />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click" />

                    </div>
                
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Listado Cupones
                </h2>
                <div class="table-responsive">
                   <asp:GridView ID="grvListado" CssClass="table table-light table-hover" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true" DataKeyNames="ID" OnSelectedIndexChanged="grvListado_SelectedIndexChanged" >  
                        <Columns>
                              <asp:BoundField DataField="ID" HeaderText="Código"></asp:BoundField>                             
                              <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                              <asp:BoundField DataField="EcoMonedasNecesarias" HeaderText="EcoMonedas Necesarias"></asp:BoundField>
                              <asp:BoundField DataField="Estado"  HeaderText="Estado"></asp:BoundField>
                         </Columns>
                        <HeaderStyle CssClass="table-info" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
