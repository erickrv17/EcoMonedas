﻿using Contexto;
using Contexto.Entidades;
using Contexto.LN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace EcoMonedas
{
    public partial class CarritoCanjearM : System.Web.UI.Page
    {
        String correoC="";
        protected void Page_Load(object sender, EventArgs e)
        {
            correoC = Request.QueryString["correoC"];
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
                if (correoC == "" || correoC == null)
                {
                    Response.Redirect("solicitudCorreoUCanje.aspx");
                }
            }
            else
            {
                Response.Redirect("InicioE.aspx");
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
            lblMensaje.Visible = true;
            lblMensaje.Text = "";
            int idMaterial = Convert.ToInt32(grvCarrito.DataKeys[e.RowIndex].Values[0]);
            CarritoLN.Carrito.Instancia.EliminarItem(idMaterial);
            llenarListaCarrito();
            lblMensaje.Visible = true;
            lblMensaje.Text = "¡Material Eliminado!";
        }

        protected void CantidadCanjear_TextChanged(object sender, EventArgs e)
        {
            GridViewRow currentRow = (GridViewRow)((TextBox)sender).Parent.Parent;
            TextBox txtCantidad = (TextBox)currentRow.FindControl("CantidadCanjear");
            if (txtCantidad.Text != "")
            {
                Regex validaNumeros = new Regex(@"^[0-9]*$");
                if (validaNumeros.IsMatch(txtCantidad.Text))
                {
                    lblMensaje.Text = "";
                    lblMensaje.Visible = false;
                    int cantidad = Convert.ToInt32(txtCantidad.Text);
                    int idMaterial = Convert.ToInt32(grvCarrito.DataKeys[currentRow.RowIndex].Values[0]);
                    CarritoLN.Carrito.Instancia.SetItemcantidad(idMaterial, cantidad);
                    llenarListaCarrito();
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "Debe ingresar solo datos númericos enteros";
                }
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
                    }else
                    {
                        lblMensaje.Text = "Ha ocurrido un error al intentar canjear dichos materiales, porfavor intentelo de nuevo";
                        return;
                    }
                }else
                {
                    Response.Redirect("solicitudCorreoUCanje.aspx");
                }
            }
        }

        protected void btnCanjeM_Click(object sender, EventArgs e)
        {
            if (correoC != null)
            {
                Response.Redirect("canjeMateriales.aspx?correoC="+correoC);
            }else
            {
                Response.Redirect("solicitudCorreoUCanje.aspx");
            }
        }
    }
}