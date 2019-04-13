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
            if ((Usuario)Session["Usuario"] != null)
            {
                if (((Usuario)Session["Usuario"]).RolID != 3)
                {
                    if (((Usuario)Session["Usuario"]).RolID == 1)
                    {
                        Response.Redirect("PrincipalAdministrador.aspx");
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).RolID == 2)
                        {
                            Response.Redirect("PaginaPrincipalAdminCentroA.aspx");
                        }
                        else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }
                }
                else
                {
                    lblNombreUsuario.Text = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido;
                }
            }
            else
            {
                Response.Redirect("InicioE.aspx");
            }
        }
    
        protected void btnCerrarSesion_Click1(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Session["Usuario"] = null;
                Response.Redirect("InicioE.aspx");
            }
        }
    }
}