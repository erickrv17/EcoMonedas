using Contexto;
using Contexto.Entidades;
using Contexto.LN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class CarritoCanjearM : System.Web.UI.Page
    {
        String correoC="";
        protected void Page_Load(object sender, EventArgs e)
        {
            correoC = Request.QueryString["correoC"];
            if (correoC == "" || correoC == null)
            {
                Response.Redirect("solicitudCorreoUCanje.aspx");
            }
            if (!IsPostBack)
            {
                llenarListaCarrito();
            }
        }

        private void llenarListaCarrito()
        {
            List<CarritoCanje> items = CarritoLN.Carrito.Instancia.Items;
            grvCarrito.DataSource = items.ToList();
            grvCarrito.DataBind();
            lblTotalUnidades.Text =CarritoLN.Carrito.Instancia.GetTotalUnidades().ToString();
            lblTotal.Text ="&cent;"+ String.Format("{0:N2}", CarritoLN.Carrito.Instancia.GetTotal());
        }

        protected void grvCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idMaterial = Convert.ToInt32(grvCarrito.DataKeys[e.RowIndex].Values[0]);
            CarritoLN.Carrito.Instancia.EliminarItem(idMaterial);
            llenarListaCarrito();
        }

        protected void CantidadCanjear_TextChanged(object sender, EventArgs e)
        {
            GridViewRow currentRow = (GridViewRow)((TextBox)sender).Parent.Parent;
            TextBox txtCantidad = (TextBox)currentRow.FindControl("CantidadCanjear");
            if (txtCantidad.Text != "")
            {
                int cantidad = Convert.ToInt32(txtCantidad.Text);
                int idMaterial = Convert.ToInt32(grvCarrito.DataKeys[currentRow.RowIndex].Values[0]);
                CarritoLN.Carrito.Instancia.SetItemcantidad(idMaterial, cantidad);
                llenarListaCarrito();
            }
        }
    
        
        //PARAMETROS REVISAR    
        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            if (grvCarrito.Rows.Count >= 1)
            {
                if (correoC!="")
                {
                    if (EncabezadoCanjeLN.registrarEncabezado(CarritoLN.Carrito.Instancia.Items, correoC, ((Usuario)Session["Usuario"]).CorreoElectronico))
                    {
                        CarritoLN.Carrito.Instancia.eliminarCarrito();
                        Response.Redirect("listaCanjesR.aspx");
                    }
                }
                
            }
        }

        protected void btnCanjeM_Click(object sender, EventArgs e)
        {
            if (correoC != null)
            {
                Response.Redirect("canjeMateriales.aspx?correoC="+correoC);
            }
        }
    }
}