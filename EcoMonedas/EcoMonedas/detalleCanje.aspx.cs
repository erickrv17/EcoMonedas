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
    public partial class detalleCanje : System.Web.UI.Page
    {
        int encabezadoID =0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string canjeID = Request.QueryString["idCanje"];
            encabezadoID = Convert.ToInt32(canjeID);
            if ((Usuario)Session["Usuario"] != null)
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
                        }
                        else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }

                }
                if (encabezadoID == 0 || canjeID=="" || canjeID==null)
                {
                    Response.Redirect("listaCanjesR.aspx");
                }
            }else
            {
                Response.Redirect("InicioE.aspx");
            }
                if (!IsPostBack)
            {
                llenarListaDetalleCanjes();
            }
        }

        private void llenarListaDetalleCanjes()
        {
            if (encabezadoID!=0)
            {
                IEnumerable<DetalleCanje> lista = (IEnumerable<DetalleCanje>)EncabezadoCanjeLN.listaDetalleCanjes(encabezadoID);
                grvLista.DataSource = lista.ToList();
                grvLista.DataBind();
            }
            
        }

        //public IEnumerable<EncabezadoCanje> listaEncabezados()
        //{
        //    return (IEnumerable<EncabezadoCanje>)EncabezadoCanjeLN.listaEncabezadosCanje();
        //}

        protected void grvLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCanje = Convert.ToInt32(grvLista.DataKeys[grvLista.SelectedIndex].Values[0]);
            Response.Redirect("detalleCanje.aspx?idCanje=" + idCanje);
        }

        protected void btnEncabezados_Click(object sender, EventArgs e)
        {
            Response.Redirect("listaCanjesR.aspx");
        }

        protected void btnNuevoCanje_Click(object sender, EventArgs e)
        {
            Response.Redirect("solicitudCorreoUCanje.aspx");
        }
    }
}