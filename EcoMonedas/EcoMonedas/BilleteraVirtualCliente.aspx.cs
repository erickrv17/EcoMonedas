using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Contexto;
namespace EcoMonedas
{
    public partial class BilleteraVirtualCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
            else
            {
                Response.Redirect("InicioE.aspx");
            }
            if (!IsPostBack)
            {
                llenarDatosBilletera(((Usuario)Session["Usuario"]).CorreoElectronico);
            }
        }
        private void llenarDatosBilletera(string correoU)
        {
            BilleteraVirtual billetera = BilleteraLN.obtenerBilleteraUsuario(correoU);
            lblEcoMonedasDisponibles.Text = billetera.EcoMondedasDisponibles.ToString();
            lblEcoMonedasGeneradas.Text = billetera.EcoMondedasGeneradas.ToString();
            lblEcoMonedasGastadas.Text = billetera.EcoMondedasCanjeadas.ToString();
        }



        protected void btnNuevoC_Click(object sender, EventArgs e)
        {
            Response.Redirect("SolicitudCorreoUCanjeCupon.aspx");
        }
    }
}