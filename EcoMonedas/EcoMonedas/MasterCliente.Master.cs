using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class MasterCliente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
        //    UsuarioLogica usuarioLogica = new UsuarioLogica();
        //    VistanteLogica vistanteLogica = new VistanteLogica();
        //    Usuario user = null;
        //    user = usuarioLogica.Login((txtIdLogin.Value), txtContrasenna.Value);
        //    if (user == null)
        //    {
        //        txtErrorUsuario.Visible = true;
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalLogin();", true);

        //        // return;
        //    }
        //    else
        //    {
        //        Visitante visitante = new Visitante();
        //        visitante.Usuario = user;
        //        visitante.FechaVisita = DateTime.Now;
        //        vistanteLogica.Guardar(visitante);
        //        Session["NumeroVisitantes"] = vistanteLogica.NumeroVisitas();

        //        Session["Usuario"] = user;
        //        Session["Nombre"] = user.Nombre;
        //        if (user.TipoUsuario.Equals(TipoUsuario.Cliente))
        //        {
        //            txtNombre.Visible = true;
        //            btnMantenimientos.Visible = false;
        //            btnCerrarS.Visible = true;
        //            btnRegistrarse.Visible = false;
        //            btnLogin.Visible = false;

        //        }
        //        else
        //        {
        //            txtNombre.Visible = true;
        //            btnCerrarS.Visible = true;
        //            btnMantenimientos.Visible = true;
        //            btnRegistrarse.Visible = false;
        //            btnLogin.Visible = false;
        //            btnAgendaVisitas.Visible = true;
        //        }



        //    }
        }
    }
}