using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class PrincipalAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                if (((Usuario)Session["Usuario"]).RolID != 1)
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
    }
}