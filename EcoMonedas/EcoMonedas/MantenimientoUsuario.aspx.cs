using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class MantenimientoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string accionProducto = Request.QueryString["accion"];
            if (accionProducto == "guardado")
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Producto guardado satisfactoriamente!";
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
            }
            cargarGrid();
        }

        private void cargarGrid()
        {
            IEnumerable<Usuario> lista = (IEnumerable<Usuario>)UsuarioLN.ListaUsuarios();
            grvListado.DataSource = lista.ToList();
            grvListado.DataBind();
        }

        //protected void cvNombre_ServerValidate(object source, ServerValidateEventArgs args)
        //{

        //    args.IsValid = (args.Value.Length >= 3);
        //}

        protected void btnRegistrar_Click1(object sender, EventArgs e)
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

                    archivoImagen.PostedFile.SaveAs(path + archivoImagen.FileName);

                    archivoImagen.PostedFile.SaveAs(path + "Thumbs/" + archivoImagen.FileName);
                }
                catch (Exception ex)
                {

                    lblMensaje.Visible = true;
                    lblMensaje.Text = ex.Message;

                }

                UsuarioLN usuarios = new UsuarioLN();
                bool confirmacion = usuarios.GuardarUsuario(txtNombre.Text, txtPrimerApellido.Text, txtSegundoApellido.Text, txtTelefono.Text, txtCorreo.Text, txtPassword.Text, txtDireccion.Text,DDLRol.SelectedValue,CheckBox1.Checked,hfUsuarioID.Value);

                if (confirmacion)
                {
                    this.Response.Redirect("MantenimientoUsuario.aspx?accion=guardado");
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "No se puede guardar el usuario";
                }

            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "La extension o la imagen no es válida";

            }

        }

        public IQueryable listaRoles()
        {
            return RolLN.ListaRol();
        }
       
        protected void grvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(grvListado.DataKeys[grvListado.SelectedIndex].Values[0]);
            Usuario usuario = UsuarioLN.obtenerUsuario(id);
            //Aqui se le indican los valores en las distintos controles del form
            txtNombre.Text = usuario.Nombre;
            //  exampleSelect1.SelectedValue = centrAcopio.CategoriaID.ToString();
            //   hfProductoID.Value = centrAcopio.ProductoID.ToString();
            btnRegistrar.Text = "Actualizar";
        }
    }
}