using Contexto;
using EcoMonedas.CarritoLN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class canjeMateriales : System.Web.UI.Page
    {
        String correoC = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            correoC = Request.QueryString["correoC"];
        }
        public IEnumerable<Material> listadoMateriales()
        {
            List<Material> lista = MaterialLN.obtenerListaMateriales(1).ToList();
            return lista;
        }

        protected void linkAgregar_Click(object sender, EventArgs e)
        {
            ListViewDataItem fila = (ListViewDataItem)(sender as Control).Parent;
            int idMaterial = Convert.ToInt32(listaMateriales.DataKeys[fila.DataItemIndex].Values[0]);
            Carrito.Instancia.AgregarItem(idMaterial);
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarritoCanjearM.aspx?correoC= "+correoC);
        }
    }
}