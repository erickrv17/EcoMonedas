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
    public partial class listaCanjesRealizadosA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<EncabezadoCanje> listaEncabezados()
        {
            return (IEnumerable<EncabezadoCanje>)EncabezadoCanjeLN.listaEncabezadosCanje();

        }
    }
}