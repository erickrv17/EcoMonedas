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
            if ((Usuario)Session["Usuario"]!=null)
            {
                if (((Usuario)Session["Usuario"]).RolID != 2)
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
                        }else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }
                    
                }
                if (correoC=="" || correoC==null)
                {
                    Response.Redirect("solicitudCorreoUCanje.aspx");
                }
            }else
            {
                Response.Redirect("InicioE.aspx");
            }
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
            if (correoC!=null)
            {
                Response.Redirect("CarritoCanjearM.aspx?correoC="+correoC);
            }else
            {
                Response.Redirect("solicitudCorreoUCanje.aspx");
            }
        }
    }
}