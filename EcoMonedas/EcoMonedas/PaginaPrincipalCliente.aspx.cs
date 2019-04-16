using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class PaginaPrincipalCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                if (((Usuario)Session["Usuario"]).RolID != 3)
                {
                    if (((Usuario)Session["Usuario"]).RolID == 2)
                    {
                        Response.Redirect("PrincipalAdminCentroA.aspx");
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).RolID == 1)
                        {
                            Response.Redirect("PrincipalAdministrador.aspx");
                        }
                        else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }

                } else
                {
                    lblNombreBienv.InnerText = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido +" "+ ((Usuario)Session["Usuario"]).SegundoApellido;
                    txtNombreC.Value = ((Usuario)Session["Usuario"]).Nombre;
                    txtCorreoC.Value = ((Usuario)Session["Usuario"]).CorreoElectronico;
                }
            }
            else
            {
                Response.Redirect("InicioE.aspx");
            }
        }

        protected void btnConfirmar_ServerClick(object sender, EventArgs e)
        {

        }
    }
}