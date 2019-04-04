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
            if (UsuarioLN.obtenerUsuario(txtCorreoCliente.Text)!=null)
            {
                Response.Redirect("canjeMateriales.aspx?correoC="+txtCorreoCliente.Text);
            }
        }
    }
}