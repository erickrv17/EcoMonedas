using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class SolicitudCorreoUCanjearCupon : System.Web.UI.Page
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
        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            try
            {
                txtMEContrase.Text = "";
               
                txtMECorreoU.Text = "";
                if (((Usuario)Session["Usuario"]) != null)
                {
                    if (txtCorreoU.Text != "" && ((Usuario)Session["Usuario"]).CorreoElectronico == txtCorreoU.Text)
                    {
                        if (((Usuario)Session["Usuario"]).contrasenia == txtContraseniaU.Text && txtContraseniaU.Text != "")
                        {
                              Response.Redirect("CanjeCupones.aspx?correoC=" + txtMECorreoU.Text);
                          
                           
                        }
                        else
                        {
                            txtMEContrase.Text = "La Contraseñia no coincide con el cliente actual";
                            return;
                        }
                    }
                    else
                    {
                        txtMECorreoU.Text = "El Correo no coincide con el cliente actual";
                        return;
                    }
                }
               
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}