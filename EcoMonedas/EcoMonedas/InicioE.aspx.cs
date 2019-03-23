
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

        //public IEnumerable<Material> listadoMateriales()
        //{
        //        IEnumerable<Material> lista = (IEnumerable<Material>) MaterialLN.ListaMateriales();
        //        return lista;
        //}

        public IEnumerable<Material> listadoMateriales()
        {
            List<Material> lista = MaterialLN.obtenerListaMateriales().ToList();
            return lista;
        }


        //public IEnumerable<Material> listaM()
        //{
        //    IEnumerable<Material> lista= listadoMateriales();
        //    IEnumerable<Material> listaN;
        //    foreach (Material item in lista)
        //    {
        //        Material mat = new Material();
        //        mat.ID = item.ID;
        //        mat.Nombre = item.Nombre;
        //        mat.IdColor = Convert.ToInt32(MaterialLN.obtenerColorPorID(item.IdColor).CodigoColor);
        //        mat.Imagen = item.Imagen;
        //        mat.PrecioUnitario = item.PrecioUnitario;
        //        mat.Estado = item.Estado;
        //        mat.
        //    }
        //}
    }
}
