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
        protected void Page_Load(object sender, EventArgs e)
        {
            //if ((Usuario)Session["Usuario"] != null)
            //{
            //    if (((Usuario)Session["Usuario"]).RolID != 3)
            //    {
            //        if (((Usuario)Session["Usuario"]).RolID == 1)
            //        {
            //            Response.Redirect("PrincipalAdministrador.aspx");
            //        }
            //        else
            //        {
            //            if (((Usuario)Session["Usuario"]).RolID == 2)
            //            {
            //                Response.Redirect("PaginaPrincipalAdminCentroA.aspx");
            //            }
            //            else
            //            {
            //                Response.Redirect("InicioE.aspx");
            //            }
            //        }

            //    }
            //    if (correoC == "" || correoC == null)
            //    {
            //        Response.Redirect("SolicitudCorreoUCanjearCupon.aspx");
            //    }
            //}
            //else
            //{
            //    Response.Redirect("InicioE.aspx");
            //}
        }
        public IEnumerable<Cupon> listadoCupones()
        {
            List<Cupon> lista = CuponLN.obtenerListaCupones(1).ToList();
            return lista;
        }

        protected void linkAgregar_Click(object sender, EventArgs e)
        {
            hfCupon.Value = "";
            ListViewDataItem fila = (ListViewDataItem)(sender as Control).Parent;
            int idCupon = Convert.ToInt32(listaCupones.DataKeys[fila.DataItemIndex].Values[0]);
            idCuponSeleccionado = idCupon;
             try
            {
                if (idCupon!=0)
                {
                    hfCupon.Value = idCupon.ToString();
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
            hfCupon.Value = cupon.ID.ToString();
            idCuponSeleccionado = cupon.ID;
            //lblDescripcion.Text = cupon.Descripcion;
            //lblEcoMonedasNesarias.Text = cupon.EcoMonedasNecesarias.ToString();
            //lblNombre.Text = cupon.Nombre;
            lblNombreC.Text = idCuponSeleccionado.ToString();
            //lblValorComercial.Text = cupon.PrecioCanje.ToString();
        }
        public void limpiar()
        {
            hfCupon.Value = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            bool encCupon = EncabezadoCuponLN.GuardarEncCupon(((Usuario)Session["Usuario"]).CorreoElectronico, true, idCuponSeleccionado);
            if (encCupon)
            {
                //hacer algo q le muestre q se logro guardar
            }
            limpiar();
        }
    }
}