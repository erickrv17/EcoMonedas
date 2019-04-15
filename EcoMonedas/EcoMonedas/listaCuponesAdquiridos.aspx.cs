using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class listaCuponesAdquiridos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarListaCuponesUsuario();
            }
        }
        private void llenarListaCuponesUsuario()
        {
            IEnumerable<EncabezadoCupon> lista = (IEnumerable<EncabezadoCupon>)EncabezadoCuponLN.listaEncabezadosCupon(((Usuario)Session["Usuario"]).CorreoElectronico);
            grvLista.DataSource = lista.ToList();
            grvLista.DataBind();
        }

     
        protected void grvLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCanje = Convert.ToInt32(grvLista.DataKeys[grvLista.SelectedIndex].Values[0]);
            Response.Redirect("detalleCanje.aspx?idCanje=" + idCanje);
        }

        protected void btnNuevoC_Click(object sender, EventArgs e)
        {
            Response.Redirect("CanjeCupones.aspx");
        }
    }
}