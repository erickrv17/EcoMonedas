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
                lblCentroAcopio.Text = buscarNombreCentro(((Usuario)Session["Usuario"]).CorreoElectronico);
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

        private string buscarNombreCentro(string idUsuario)
        {
            CentroAcopio centro= CentroAcopioLN.obtenerCentroAcopioPorID(idUsuario);
            lblCentroAcopio.Text = centro.Nombre;
            return centro.Nombre;
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

        protected void btnPerfilU_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"]!=null)
            {
                Response.Redirect("PerfilUsuario.aspx");
            }
        }

        protected void btnModuloUsuario_Click1(object sender, EventArgs e)
        {
            Response.Redirect("PrincipalAdminCentroA.aspx");
        }
    }
}