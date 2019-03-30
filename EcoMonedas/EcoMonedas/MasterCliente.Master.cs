using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Contexto;

namespace EcoMonedas
{
    public partial class MasterCliente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario user = UsuarioLN.login(txtcorreo.Text, txtContra.Text);
            Session["Usuario"] = user;
            if (Session["Usuario"] != null && user.Estado==true)
            {
                if (user.RolID == 1)
                {
                    this.Response.Redirect("PrincipalAdministrador.aspx");
                }
                else
                {
                    if (user.RolID == 2)
                    {
                        if (!user.Disponible)
                            this.Response.Redirect("PrincipalAdminCentroA.aspx");
                        else
                            lblMensaje.InnerText = "El usuario no posee un centro de acopio";
                            lblMensaje.Visible = true;
                    }
                    else
                    {
                        this.Response.Redirect("PaginaPrincipalCliente.aspx");

                    }
                }
            }else
            {
                lblMensaje.Visible = true; 
                
            }

        }
        protected void btnEnviar_Click(object sender, EventArgs e)
        {

        }
        protected void btnRegistra_Click(object sender, EventArgs e)
        {
            Usuario miUsuario = new Usuario();
            miUsuario.Nombre = txtNombre.Text;
            miUsuario.PrimerApellido = txtApellido1.Text;
            miUsuario.SegundoApellido = txtApellido2.Text;
            miUsuario.Telefono = txtTelefono.Text;
            miUsuario.CorreoElectronico = txtEmail.Text;
            miUsuario.contrasenia = txtConfirmarContrasenna.Text;
            miUsuario.Direccion = txtDireccion.Text;
            miUsuario.RolID = 3;
            miUsuario.Estado = true;
            miUsuario.Disponible = true;

            try
            {
                UsuarioLN us = new UsuarioLN();
            us.insertaUsuario(miUsuario);

            }
            catch (Exception)
            {

                throw;
            }
           
        }
    }
}