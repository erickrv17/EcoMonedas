
using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class MantenimientoMateriales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string accionProducto = Request.QueryString["accion"];
            if (accionProducto == "guardado")
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Material guardado satisfactoriamente!";
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
            }
            cargarGrid();
        }

        private void cargarGrid()
        {
            IEnumerable<Material> lista = (IEnumerable<Material>)MaterialLN.ListaMateriales();
            grvListado.DataSource = lista.ToList();
            grvListado.DataBind();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //Boolean archivoOK = false;
            //String path = Server.MapPath("~/Imagenes/");
            //if (archivoImagen.HasFile)
            //{
            //    String fileExtension = System.IO.Path.GetExtension(archivoImagen.FileName).ToLower();
            //    String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
            //    for (int i = 0; i < allowedExtensions.Length; i++)
            //    {
            //        if (fileExtension == allowedExtensions[i])
            //        {
            //            archivoOK = true;
            //        }
            //    }
            //}

            //if (archivoOK)
            //{
            //    try
            //    {
            //        archivoImagen.PostedFile.SaveAs(path + archivoImagen.FileName);
            //    }
            //    catch (Exception ex)
            //    {
            //        lblMensaje.Visible = true;
            //        lblMensaje.Text = ex.Message;
            //    }
                
            //    bool confirmar = MaterialLN.GuardarMaterial(txtNombre.Text,archivoImagen.FileName,Convert.ToDecimal(txtPrecio.Text),ddlColor.SelectedValue, chkEstado.Checked, HiddenField1.Value);
            //    if (confirmar)
            //    {

            //        // Recargar la pagina
            //        string accion = (HiddenField1.Value == "" || HiddenField1.Value == "0") ? "nuevo" : "actu";
            //        Response.Redirect("MantenimientoMateriales.aspx?accion=" + accion);
            //    }
            //    else
            //    {
            //        lblMensaje.Visible = true;
            //        lblMensaje.Text = "No se puede agregar un nuevo Material a la BD";
            //    }
            //}
            //else
            //{

            //    lblMensaje.Visible = true;
            //    lblMensaje.Text = "No se puede aceptar el tipo de archivo.";
            //}
        }

        protected void grvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(grvListado.DataKeys[grvListado.SelectedIndex].Values[0]);
            Material mat = MaterialLN.obtenerMaterial(id);
            ddlColor.SelectedValue = mat.IdColor.ToString();
            txtNombre.Text = mat.Nombre;
            Image1.ImageUrl = "~/Imagenes/" + mat.Imagen;
            txtPrecio.Text = mat.PrecioUnitario.ToString();
            HiddenField1.Value = mat.ID.ToString();
            btnGuardar.Text = "Actualizar";
        }
    }
}