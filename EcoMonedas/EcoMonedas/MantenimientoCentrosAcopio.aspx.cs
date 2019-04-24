using Contexto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class MantenimientoCentrosAcopio : System.Web.UI.Page
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
                lblMensaje.Text = "Centro guardado satisfactoriamente!... Se le ha enviado un correo al usuario con la información de su Centro de Acopio";
                lblMensaje.CssClass = "alert alert-dismissible alert-success";
            }
            if (!IsPostBack)
            {
                cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
                listaUsuarios(null);
            }
        }

        private void cargarGrid(int estado)
        {
            IEnumerable<CentroAcopio> lista = (IEnumerable<CentroAcopio>)CentroAcopioLN.ListaCentrosAcopio(estado);
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
                    archivoImagen.PostedFile.SaveAs(path + "CentrosAcopio/" + archivoImagen.FileName);
                }
                catch (Exception ex)
                {

                    lblMensaje.Visible = true;
                    lblMensaje.Text = ex.Message;

                }

                CentroAcopioLN centros = new CentroAcopioLN();

                bool confirmacion = centros.GuardarCentroAcopio(txtNombre.Text, DDLAdmiCentro.SelectedValue, DDLProvincia.SelectedValue, archivoImagen.FileName, txtDireccion.Text, chkEstado.Checked, txtCorreo.Text, hfCentroID.Value);

                if (confirmacion)
                {

                    CorreoLN cor = new CorreoLN();
                    Usuario us = UsuarioLN.obtenerUsuario(DDLAdmiCentro.SelectedValue);
                    cor.EnviarCorreoCentroUsuario(us,txtNombre.Text, txtDireccion.Text);

                    this.Response.Redirect("MantenimientoCentrosAcopio.aspx?accion=guardado");
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "No se puede guardar el centro de acopio";
                }

            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "La extension o la imagen no es válida";

            }

        }

        public void listaUsuarios(String correoU)
        {
            IEnumerable<Usuario> lista= (IEnumerable<Usuario>)UsuarioLN.ListaUsuariosDisponibles(correoU);
            DDLAdmiCentro.DataSource = lista.ToList();
            DDLAdmiCentro.DataBind();
        }

        public IQueryable listaProvincias()
        {
            return ProvinciaLN.ListaProvincias();
        }

        protected void grvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(grvListado.DataKeys[grvListado.SelectedIndex].Values[0]);
          
            CentroAcopio centrAcopio = CentroAcopioLN.obtenerCentroAcopio(id);
            //Aqui se le indican los valores en las distintos controles del form
            txtNombre.Text = centrAcopio.Nombre;
            listaUsuarios(centrAcopio.UsuarioID);
            DDLProvincia.SelectedValue = centrAcopio.ProvinciaID.ToString();
            txtDireccion.Text = centrAcopio.DireccionExacta;
            txtCorreo.Text = centrAcopio.Correo;
            chkEstado.Checked = centrAcopio.Estado;
            Image1.ImageUrl = "~/Imagenes/CentrosAcopio/" + centrAcopio.Imagen;
            hfCentroID.Value = centrAcopio.ID.ToString();
            btnRegistrar.Text = "Actualizar";
            
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtCorreo.Text = "";
            txtDireccion.Text = "";
           chkEstado.Checked = true;
        }
        protected void ddlFiltrosXEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarGrid(Convert.ToInt32(ddlFiltrosXEstado.SelectedItem.Value));
        }

    }
}