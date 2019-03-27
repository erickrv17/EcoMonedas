using Contexto;
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<Material> listadoMateriales()
        {
            List<Material> lista = MaterialLN.obtenerListaMateriales(1).ToList();
            return lista;
        }
    }
}