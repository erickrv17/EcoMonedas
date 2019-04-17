using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class PerfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (((Usuario)Session["Usuario"]) != null)
            {
                Usuario user = ((Usuario)Session["Usuario"]);
                txtCorreo.Text = user.CorreoElectronico;
                txtDireccion.Text = user.Direccion;
                txtNombre.Text = user.Nombre;
                txtPassword.Text = user.contrasenia;
                txtPrimerApellido.Text = user.PrimerApellido;
                txtSegundoApellido.Text = user.SegundoApellido;
                txtTelefono.Text = user.Telefono;
               lblNombreUs.Text = "¡Bienvenido! "+user.Nombre;
                if (((Usuario)Session["Usuario"]).RolID == 1)
                {
                    ModuloUsuario.InnerText = "Inicio Administrador";
                }
                else
                {
                    if (((Usuario)Session["Usuario"]).RolID == 2)
                    {
                        ModuloUsuario.InnerText = "Inicio Administrador de Centro";
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).RolID == 3)
                        {
                            ModuloUsuario.InnerText = "Inicio Cliente";
                        }
                        else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("InicioE.aspx");
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Usuario usuario =(Usuario)Session["Usuario"];
            usuario.Nombre = txtNombre.Text;
            usuario.PrimerApellido = txtPrimerApellido.Text;
            usuario.SegundoApellido = txtSegundoApellido.Text;
            usuario.Telefono = txtTelefono.Text;
            usuario.Direccion = txtDireccion.Text;
            usuario.contrasenia = txtPassword.Text;
            try
            {
                UsuarioLN us = new UsuarioLN();
                us.actaulizaUsuario(usuario);

                lblMensaje.Visible = true;
                lblMensaje.Text = "Sus datos se han actualizado satisfactoriamente!";
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
                
            }
            catch (Exception ex)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "No se puede actualizar su perfil, Error : "+ex.Message ;
                return;
            }
            
        }

        protected void ModuloUsuario_ServerClick(object sender, EventArgs e)
        {
            if (((Usuario)Session["Usuario"])!=null)
            {
                if (((Usuario)Session["Usuario"]).RolID==1)
                {
                    Response.Redirect("PrincipalAdministrador.aspx");
                }else
                {
                    if (((Usuario)Session["Usuario"]).RolID == 2)
                    {
                        Response.Redirect("PrincipalAdminCentroA.aspx");
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).RolID == 3)
                        {
                            Response.Redirect("PaginaPrincipalCliente.aspx");
                        }else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }
                }
            }else
            {
                Response.Redirect("InicioE.aspx");
            }
        }
        
    }
}