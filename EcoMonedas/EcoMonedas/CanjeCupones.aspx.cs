using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class CanjeCupones : System.Web.UI.Page
    {
        int idCuponSeleccionado;
        //String correoC = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //correoC = Request.QueryString["correoC"];
            if ((Usuario)Session["Usuario"] != null)
            {
                if (((Usuario)Session["Usuario"]).RolID != 3)
                {
                    if (((Usuario)Session["Usuario"]).RolID == 1)
                    {
                        Response.Redirect("PrincipalAdministrador.aspx");
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).RolID == 2)
                        {
                            Response.Redirect("PaginaPrincipalAdminCentroA.aspx");
                        }
                        else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }

                }

            }
        }


        public IEnumerable<Cupon> listadoCupones()
        {
            List<Cupon> lista = CuponLN.obtenerListaCupones(1).ToList();
            return lista;
        }

        protected void linkAgregar_Click(object sender, EventArgs e)
        {
            //hfCupon.Value = "";
            ListViewDataItem fila = (ListViewDataItem)(sender as Control).Parent;
            int idCupon = Convert.ToInt32(listaCupones.DataKeys[fila.DataItemIndex].Values[0]);
            idCuponSeleccionado = idCupon;
             try
            {
                if (idCupon!=0)
                {
                    //hfCupon.Value = idCupon.ToString();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalCanjeCupon();", true);
                aceptarCupon(idCupon);
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void btnBilletera_Click1(object sender, EventArgs e)
        {
            Response.Redirect("PaginaPrincipalCliente.aspx");
        }

        public void aceptarCupon(int idCupon)
        {
            Cupon cupon = CuponLN.obtenerCupon(idCupon);
            Session["Cupon"] = cupon;
            //hfCupon.Value = cupon.ID.ToString();
            //lblDescripcion.Text = cupon.Descripcion;
            //lblEcoMonedasNesarias.Text = cupon.EcoMonedasNecesarias.ToString();
            //lblNombre.InnerText = cupon.Nombre;
            //lblNombreC.Text = cupon.Nombre;
            //lblValorComercial.Text = cupon.PrecioCanje.ToString();
        }
        public void limpiar()
        {
            Session["Cupon"] = null;
            //hfCupon.Value = "";
            //lblDescripcion.Text = "";
            //lblEcoMonedasNesarias.Text = "";
            //lblNombre.Text = "";
            //lblNombreC.Text = "";
            //lblValorComercial.Text = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            if (ErrorCantidad()!="")
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = ErrorCantidad();
                return;

            }
            EncabezadoCuponLN encC = new EncabezadoCuponLN();
            bool encCupon = encC.GuardarEncCupon(((Usuario)Session["Usuario"]).CorreoElectronico, true, ((Cupon)Session["Cupon"]).ID);
            if (encCupon)
            {

                lblMensaje.Visible = true;
                lblMensaje.Text = "Cupon adquirido satisfactoriamente!";
                lblMensaje.CssClass = "alert alert-dismissible alert-success";

            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "No se puede cambiar el cupon";

            }
            limpiar();
        }

        public  string ErrorCantidad()
        {
            BilleteraVirtual bv = BilleteraLN.obtenerBilleteraUsuario(((Usuario)Session["Usuario"]).CorreoElectronico);
            string error = "";
            if (bv.EcoMondedasDisponibles < ((Cupon)Session["Cupon"]).EcoMonedasNecesarias)
            {
                error = "No cuenta con EcoMonedas suficientes!";
            }
            return error;
        }
    }
}