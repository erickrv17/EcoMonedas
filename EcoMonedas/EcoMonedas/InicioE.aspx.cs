
using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class InicioE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<Material> listadoMateriales()
        {
            IEnumerable<Material> lista = (IEnumerable<Material>)MaterialLN.ListaMateriales();
            return lista;
        }
    }
}
