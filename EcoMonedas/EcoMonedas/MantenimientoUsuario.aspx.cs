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
                lblMensaje.Text = "Usuario guardado satisfactoriamente!";
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
        
                UsuarioLN usuarios = new UsuarioLN();
                bool confirmacion = usuarios.GuardarUsuario(txtNombre.Text, txtPrimerApellido.Text, txtSegundoApellido.Text, txtTelefono.Text, txtCorreo.Text, txtPassword.Text, txtDireccion.Text,DDLRol.SelectedValue,CheckBox1.Checked);

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

        public IQueryable listaRoles()
        {
            return RolLN.ListaRol();
        }
       
        protected void grvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            String correo = (grvListado.DataKeys[grvListado.SelectedIndex].Values[0]).ToString();
            Usuario usuario = UsuarioLN.obtenerUsuario(correo);
           txtNombre.Text = usuario.Nombre;
            txtPrimerApellido.Text = usuario.PrimerApellido;
            txtSegundoApellido.Text = usuario.SegundoApellido;
            txtTelefono.Text = usuario.Telefono;
            txtCorreo.Text = usuario.CorreoElectronico;
            txtDireccion.Text = usuario.Direccion;
            txtPassword.Text = usuario.contrasenia;
            DDLRol.SelectedValue = usuario.RolID.ToString();
            btnRegistrar.Text = "Actualizar";
        }
    }
}