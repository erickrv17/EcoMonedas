using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class MasterAdministradorCentros : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                lblNombreUsuario.Text = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido;
                if (((Usuario)Session["Usuario"]).Rol.ID == 1)
                {
                    btnModuloUsuario.Text = "Módulo Administrador";
                }
                else
                {
                    if (((Usuario)Session["Usuario"]).Rol.ID == 2)
                    {
                        btnModuloUsuario.Text = "Módulo Administrador C";
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).Rol.ID == 3)
                        {
                            btnModuloUsuario.Text = "Módulo Cliente";
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
                lblNombreUsuario.Text = "¡Bienvenido!";
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["Usuario"] != null)
                {
                    Session["Usuario"] = null;
                    Response.Redirect("InicioE.aspx");
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnModuloUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalAdminCentroA.aspx");
        }
    }
}