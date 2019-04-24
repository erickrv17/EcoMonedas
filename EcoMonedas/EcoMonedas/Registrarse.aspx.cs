using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EcoMonedas
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                lblregistrese.Visible = false;
                
                lblAutoRegistro.Visible = false;
                lblNombreUsuario.Text = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido;
                if (((Usuario)Session["Usuario"]).Rol.ID == 1)
                {
                    btnMU.InnerText = "Módulo Administrador";
                }
                else
                {
                    if (((Usuario)Session["Usuario"]).Rol.ID == 2)
                    {
                        btnMU.InnerText = "Módulo Administrador C";
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).Rol.ID == 3)
                        {
                            btnMU.InnerText = "Módulo Cliente";
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
                lblregistrese.Visible = true;
                lblAutoRegistro.Visible = true;
                lblNombreUsuario.Text = "¡Bienvenido!";
            }
        }

      


        //public IEnumerable<Material> listaM()
        //{
        //    IEnumerable<Material> lista= listadoMateriales();
        //    IEnumerable<Material> listaN;
        //    foreach (Material item in lista)
        //    {
        //        Material mat = new Material();
        //        mat.ID = item.ID;
        //        mat.Nombre = item.Nombre;
        //        mat.IdColor = Convert.ToInt32(MaterialLN.obtenerColorPorID(item.IdColor).CodigoColor);
        //        mat.Imagen = item.Imagen;
        //        mat.PrecioUnitario = item.PrecioUnitario;
        //        mat.Estado = item.Estado;
        //        mat.
        //    }
        //}
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
          
            Usuario user = UsuarioLN.login(txtCorreoLogin.Text, txtContra.Text);
            Session["Usuario"] = user;
            if (Session["Usuario"] != null && user.Estado == true)
            {
                if (user.RolID == 1)
                {
                    this.Response.Redirect("PrincipalAdministrador.aspx");
                }
                else
                {
                    if (user.RolID == 2)
                    {
                        if (!user.Disponible)
                            this.Response.Redirect("PrincipalAdminCentroA.aspx");
                        else
                            lblMensaje.InnerText = "El usuario no posee un centro de acopio";
                        lblMensaje.Visible = true;
                    }
                    else
                    {
                        this.Response.Redirect("PaginaPrincipalCliente.aspx");

                    }
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none",
                  "<script>$('#VentanaLogin').modal('show');</script>", false);
               
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

                lblMensaje.InnerText = "Error al iniciar sesion,verifique los datos ingresados";

                lblMensaje.Visible = true;

            }

        }
        protected void btnEnviar_Click(object sender, EventArgs e)
        {

        }
        protected void btnRegistra_Click(object sender, EventArgs e)
        {

            if (ErroresRegistro())
            {
                return;
            }

            Usuario miUsuario = new Usuario();
            miUsuario.Nombre = txtNombre.Text;
            miUsuario.PrimerApellido = txtPrimerApellido.Text;
            miUsuario.SegundoApellido = txtSegundoApellido.Text;
            miUsuario.Telefono = txtTelefono.Text;
            miUsuario.CorreoElectronico = txtCorreo.Text;
            miUsuario.contrasenia = txtConfirmarContrasenna.Text;
            miUsuario.Direccion = txtDireccion.Text;
            miUsuario.RolID = 3;
            miUsuario.Estado = true;
            miUsuario.Disponible = true;
            try
            {
                UsuarioLN us = new UsuarioLN();
                us.insertaUsuario(miUsuario);
                lblMensajeU.Visible = true;
                lblMensajeU.Text = "Bienvenido a Eco-Monedas su registro ha sido todo un exito, Verifica tu correo!";
                lblMensajeU.CssClass = "alert alert-dismissible alert-success";
                CorreoLN coor = new CorreoLN();
                coor.EnviarCorreoNuevoCliente(miUsuario);
            }
            catch (Exception ex)
            {
                lblMensajeU.Visible = true;
                lblMensajeU.Text = "No se puedo realizar su registro";
                return;
            }

        }
        public bool ErroresRegistro()
        {
            LimpiaErrores();
            bool error = false;
            if (txtNombre.Text.Equals(""))
            {
                lblErrorNombre.Visible = true;
                error = true;
            }
            if (txtPrimerApellido.Text.Equals(""))
            {
                lblErrorPrimerApellido.Visible = true;
                error = true;
            }
            if (txtSegundoApellido.Text.Equals(""))
            {
                lblErrorSegundoApellido.Visible = true;
                error = true;
            }
            if (txtTelefono.Text.Equals(""))
            {
                lblErrorTelefono.Visible = true;
                error = true;
            }
            if (txtCorreo.Text.Equals(""))
            {
                lblErrorCorreo.Visible = true;
                error = true;
            }
            if (txtContrasena.Text.Equals(""))
            {
                lblErrorContra.Visible = true;
                error = true;
            }
            if (txtConfirmarContrasenna.Text.Equals(""))
            {
                lblErrorConfirmar.Visible = true;
                error = true;
            }
            if (txtDireccion.Text.Equals(""))
            {
                lblErrorDireccion.Visible = true;
                error = true;
            }
            return error;
        }
        public void LimpiaErrores(){
            lblErrorNombre.Visible = false;        
            lblErrorPrimerApellido.Visible = false;
            lblErrorSegundoApellido.Visible = false;
            lblErrorTelefono.Visible = false;
            lblErrorCorreo.Visible = false;
            lblErrorContra.Visible = false;
            lblErrorConfirmar.Visible = false;
            lblErrorDireccion.Visible = false;
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                Session["Usuario"] = null;
                Response.Redirect("InicioE.aspx");
                lblregistrese.Visible = true;
                lblAutoRegistro.Visible = true;
            }
        }

        protected void btnModuloUsuario_Click(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                lblNombreUsuario.Text = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido;
                if (((Usuario)Session["Usuario"]).Rol.ID == 1)
                {
                    Response.Redirect("PrincipalAdministrador.aspx");
                }
                else
                {
                    if (((Usuario)Session["Usuario"]).Rol.ID == 2)
                    {
                        Response.Redirect("PrincipalAdminCentroA.aspx");
                    }
                    else
                    {
                        if (((Usuario)Session["Usuario"]).Rol.ID == 3)
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
                lblNombreUsuario.Text = "¡Bienvenido!";
                Response.Redirect("InicioE.aspx");
            }
        }

        protected void btnConfirmar_ServerClick(object sender, EventArgs e)
        {

        }

        protected void btnPerfil_ServerClick(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Response.Redirect("PerfilUsuario.aspx");
            }
        }

        protected void btnPaginaRegistrarse_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}