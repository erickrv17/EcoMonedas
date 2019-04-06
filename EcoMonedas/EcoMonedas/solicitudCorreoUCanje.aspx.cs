using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class solicitudCorreoUCanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            try
            {
                txtMEContrase.Text = "";
                txtMECorreoC.Text = "";
                txtMECorreoU.Text = "";
                if (((Usuario)Session["Usuario"]) != null)
                {
                    if (txtCorreoU.Text != "" && ((Usuario)Session["Usuario"]).CorreoElectronico == txtCorreoU.Text)
                    {
                        if (((Usuario)Session["Usuario"]).contrasenia == txtContraseniaU.Text && txtContraseniaU.Text != "")
                        {
                            if (UsuarioLN.obtenerUsuarioC(txtCorreoCliente.Text).Count()!=0 && txtCorreoCliente.Text != "")
                            {
                                Response.Redirect("canjeMateriales.aspx?correoC="+txtCorreoCliente.Text);
                            }
                            else
                            {
                                txtMECorreoC.Text = "El Correo de Cliente no coincide con ningún cliente";
                                return;
                            }
                        }
                        else
                        {
                            txtMEContrase.Text = "La Contraseñia no coincide con el del Administrador de Centro de Acopio";
                            return;
                        }
                    }
                    else
                    {
                        txtMECorreoU.Text = "El Correo no coincide con el del Administrador de Centro de Acopio";
                        return;
                    }
                }else
                {
                    txtMECorreoC.Text = "Antes de Introducir datos, Inicie Sesión como Administrador de Centro de Acopio";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}