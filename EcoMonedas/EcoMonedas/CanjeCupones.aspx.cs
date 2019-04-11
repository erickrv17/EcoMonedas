using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class CanjeCupones : System.Web.UI.Page
    {
        String correoC = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            correoC = Request.QueryString["correoC"];
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
                if (correoC == "" || correoC == null)
                {
                    Response.Redirect("SolicitudCorreoUCanjearCupon.aspx");
                }
            }
            else
            {
                Response.Redirect("InicioE.aspx");
            }
        }
        public IEnumerable<Cupon> listadoCupones()
        {
            List<Cupon> lista = CuponLN.obtenerListaCupones(1).ToList();
            return lista;
        }
    }
}