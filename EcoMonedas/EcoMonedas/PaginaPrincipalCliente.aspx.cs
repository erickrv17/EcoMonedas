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
            if ((Usuario)Session["Usuario"] == null)
            {
                Response.Redirect("InicioE.aspx");
            }
        }
    }
}