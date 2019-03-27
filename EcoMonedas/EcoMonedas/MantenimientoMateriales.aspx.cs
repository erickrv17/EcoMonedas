
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
            string accionMat = Request.QueryString["accion"];
            if (accionMat == "guardar")
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Material Guardado Satisfactoriamente!";
            }
            if (!IsPostBack)
            {
                cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
                ddlColor.AutoPostBack = true;
            }
        }

        public IQueryable listaColores()
        {
            return ColorLN.ListaColors();
        }

        private void cargarGrid(int filtro)
        {
            IEnumerable<Material> lista = (IEnumerable<Material>)MaterialLN.queryListaMateriales(filtro);
            grvListado.DataSource = lista.ToList();
            grvListado.DataBind();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Boolean archivoOK = false;
            String path = Server.MapPath("~/Imagenes/");
            if (archivoImagen.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(archivoImagen.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        archivoOK = true;
                    }
                }
            }

            if (archivoOK)
            {
                try
                {
                    archivoImagen.PostedFile.SaveAs(path + "Materiales/" + archivoImagen.FileName);
                }
                catch (Exception ex)
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = ex.Message;

                }
                //Guardar el Producto con la imagen
                MaterialLN mat = new MaterialLN();
                string confirmacionGuardado = mat.GuardarMaterial(txtNombre.Text, archivoImagen.FileName,txtPrecio.Text,ddlColor.SelectedValue,chkEstado.Checked, HiddenField1.Value); //SE GUARDA EL NOMBRE
                if (confirmacionGuardado=="ErrorColor")
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "No se puede guardar un material con ese color ya que le pertenece a otro";
                }
                else
                {
                    if (confirmacionGuardado=="ErrorImagen")
                    {
                        lblMensaje.Visible = true;
                        lblMensaje.Text = "No se puede guardar un material con esta imagen ya que le pertenece a otro";
                    }else {
                         Response.Redirect("MantenimientoMateriales.aspx?accion=guardar");// Esto se utiliza para enviar valores de pagina a pagina y se pueden enviar varias separadas por &, Esto lo recibe el metodo Load()
                    }
                    }
            }else
            {
                if (Image1.ImageUrl!=null)
                {
                    MaterialLN mat = new MaterialLN();
                    string confirmacionGuardado = mat.GuardarMaterial(txtNombre.Text, Image1.ImageUrl.Remove(0,22), txtPrecio.Text, ddlColor.SelectedValue, chkEstado.Checked, HiddenField1.Value); //SE GUARDA EL NOMBRE
                    if (confirmacionGuardado == "ErrorColor")
                    {
                        lblMensaje.Visible = true;
                        lblMensaje.Text = "No se puede guardar un material con ese color ya que le pertenece a otro";
                    }
                    else
                    {
                        if (confirmacionGuardado == "ErrorImagen")
                        {
                            lblMensaje.Visible = true;
                            lblMensaje.Text = "No se puede guardar un material con esta imagen ya que le pertenece a otro";
                        }else
                        {
                            Response.Redirect("MantenimientoMateriales.aspx?accion=guardar");// Esto se utiliza para enviar valores de pagina a pagina y se pueden enviar varias separadas por &, Esto lo recibe el metodo Load()
                        }
                    }
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "Imagen no válida";
                }
            }
        }

        protected void grvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(grvListado.DataKeys[grvListado.SelectedIndex].Values[0]);
            Material mat = MaterialLN.obtenerMaterialI(id);
            ddlColor.SelectedValue = mat.IdColor.ToString();
            txtNombre.Text = mat.Nombre;
            Image1.ImageUrl = "~/Imagenes/Materiales/" + mat.Imagen;
            ddlColor_DataBound(ddlColor, null);
            chkEstado.Checked = mat.Estado;
            txtPrecio.Text = mat.PrecioUnitario.ToString();
            HiddenField1.Value = mat.ID.ToString();
            btnGuardar.Text = "Actualizar";
            if (HiddenField1!=null)
            {
                RequiredFieldValidator10.Enabled = false;
            }
            cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
        }

        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelColor.BackColor = System.Drawing.ColorTranslator.FromHtml(ColorLN.obtenerColor(Convert.ToInt32(ddlColor.SelectedValue.ToString())).CodigoColor);
        }

        protected void ddlColor_DataBound(object sender, EventArgs e)
        {
            PanelColor.BackColor = System.Drawing.ColorTranslator.FromHtml(ColorLN.obtenerColor(Convert.ToInt32(ddlColor.SelectedValue.ToString())).CodigoColor);
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtPrecio.Text = "";
            ddlColor_DataBound(ddlColor.SelectedIndex=0, null);
            Image1.ImageUrl = null;
            chkEstado.Checked = true;
        }

        protected void ddlFiltrosXEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
           cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
        }
    }
}