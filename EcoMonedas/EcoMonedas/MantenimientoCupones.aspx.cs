using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class MantenimientoCupones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string accionProducto = Request.QueryString["accion"];
            if ((Usuario)Session["Usuario"] != null)
            {
                if (((Usuario)Session["Usuario"]).RolID != 1)
                {
                    if (((Usuario)Session["Usuario"]).RolID == 2)
                    {
                        Response.Redirect("PrincipalAdminCentroA.aspx");
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
            }
            else
            {
                Response.Redirect("InicioE.aspx");
            }
            if (accionProducto == "guardado")
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Cupon guardado satisfactoriamente!";
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
            }
            if (!IsPostBack)
            {
                cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
                
            }
        }

        private void cargarGrid(int estado)
        {
            IEnumerable<Cupon> lista = (IEnumerable<Cupon>)CuponLN.ListaCupones(estado);
            grvListado.DataSource = lista.ToList();
            grvListado.DataBind();
        }

     
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
          
                CuponLN cupones = new CuponLN();
                bool confirmacion = cupones.GuardarCupon(txtNombre.Text, txtDescripcion.Text, chkEstado.Checked, txtPrecioCanje.Text,  txtEcoMonedasNecesarias.Text, hfCuponID.Value);

                if (confirmacion)
                {
                    this.Response.Redirect("MantenimientoCupones.aspx?accion=guardado");
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "No se puede guardar el cupon";
                }

         

        }

      

        protected void grvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(grvListado.DataKeys[grvListado.SelectedIndex].Values[0]);
            Cupon cupon = CuponLN.obtenerCupon(id);
            //Aqui se le indican los valores en las distintos controles del form
            txtNombre.Text = cupon.Nombre;
            txtDescripcion.Text = cupon.Descripcion;
            txtPrecioCanje.Text = cupon.PrecioCanje.ToString();
            txtEcoMonedasNecesarias.Text = cupon.EcoMonedasNecesarias.ToString();
            chkEstado.Checked = cupon.Estado;
            hfCuponID.Value = cupon.ID.ToString();
            btnRegistrar.Text = "Actualizar";
        }
        protected void ddlFiltrosXEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
        }

    }
}