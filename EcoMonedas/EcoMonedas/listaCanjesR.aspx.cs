using Contexto;
using Contexto.LN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class listaCanjesR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"]==null)
            {
                Response.Redirect("InicioE.aspx");
            }
            if (!IsPostBack)
            {
                llenarListaCanjes();
            }
        }

        private void llenarListaCanjes()
        {
            IEnumerable<EncabezadoCanje> lista = (IEnumerable<EncabezadoCanje>)EncabezadoCanjeLN.listaEncabezadosCanje();
            grvLista.DataSource = lista.ToList();
            grvLista.DataBind();
        }

        //public IEnumerable<EncabezadoCanje> listaEncabezados()
        //{
        //    return (IEnumerable<EncabezadoCanje>)EncabezadoCanjeLN.listaEncabezadosCanje();
        //}

        protected void grvLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCanje = Convert.ToInt32(grvLista.DataKeys[grvLista.SelectedIndex].Values[0]);
            Response.Redirect("detalleCanje.aspx?idCanje="+idCanje);
        }

        protected void btnNuevoC_Click(object sender, EventArgs e)
        {
            Response.Redirect("solicitudCorreoUCanje.aspx");
        }
    }
}