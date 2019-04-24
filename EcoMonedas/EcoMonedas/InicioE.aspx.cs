
using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class InicioE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                lblregistrese.Visible = false;
                lblNombreUsuario.Text = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido;
                txtNombreC.Value = ((Usuario)Session["Usuario"]).Nombre;
                txtCorreoC.Value = ((Usuario)Session["Usuario"]).CorreoElectronico;
                if (((Usuario)Session["Usuario"]).Rol.ID==1)
                {
                    btnMU.InnerText = "Módulo Administrador";
                }else
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
                        }else
                        {
                            Response.Redirect("InicioE.aspx");
                        }
                    }
                }
            }
            else
            {
                lblregistrese.Visible = true;
                lblNombreUsuario.Text = "¡Bienvenido!";
            }
        }

        public IEnumerable<CentroAcopio> GetCentrosAcopio()
        {
            IEnumerable<CentroAcopio> lista = (IEnumerable<CentroAcopio>)CentroAcopioLN.ListaCentrosAcopio(2);
            return lista;
        }

        public IEnumerable<Material> listadoMateriales()
        {
            List<Material> lista = MaterialLN.obtenerListaMateriales(1).ToList();
            return lista;
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
            //Usuario miUsuario = new Usuario();
            //miUsuario.Nombre = txtNombreU.Text;
            //miUsuario.PrimerApellido = txtApellido1.Text;
            //miUsuario.SegundoApellido = txtApellido2.Text;
            //miUsuario.Telefono = txtTelefono.Text;
            //miUsuario.CorreoElectronico = txtEmail.Text;
            //miUsuario.contrasenia = txtConfirmarContrasenna.Text;
            //miUsuario.Direccion = txtDireccion.Text;
            //miUsuario.RolID = 3;
            //miUsuario.Estado = true;
            //miUsuario.Disponible = true;

            //try
            //{
            //    UsuarioLN us = new UsuarioLN();
            //    us.insertaUsuario(miUsuario);

            //}
            //catch (Exception)
            //{

                
            //}

        }
      

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                Session["Usuario"] = null;
                Response.Redirect("InicioE.aspx");
                lblregistrese.Visible = true;
            }
        }

        protected void btnModuloUsuario_Click(object sender, EventArgs e)
        {
            if ((Usuario)Session["Usuario"] != null)
            {
                lblNombreUsuario.Text = ((Usuario)Session["Usuario"]).Nombre + " " + ((Usuario)Session["Usuario"]).PrimerApellido;
                txtNombreC.Value = ((Usuario)Session["Usuario"]).Nombre;
                txtCorreoC.Value = ((Usuario)Session["Usuario"]).CorreoElectronico;
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
            if (Session["Usuario"]!=null)
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
