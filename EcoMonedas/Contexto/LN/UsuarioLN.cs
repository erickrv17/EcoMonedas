using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
  public class UsuarioLN
    {
        public static IQueryable ListaUsuarios()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Usuarios;

            return query;
        }

        public bool GuardarUsuario(
            string nombre,
            string primerApellido,
            string segundoApellido,
            string telefono,
            string correoElectronico,
            string direccion,
            int rolID,
            bool estado,
            string id = "")
        {

            EcoMonedasContext db = new EcoMonedasContext();
            var miUsuario = new Usuario();
            int idUsuario = 0;
            bool esNumero = int.TryParse(id, out idUsuario);

            if (esNumero || idUsuario > 0)
            {
                //Buscar el centro a actualizar
                miUsuario = db.Usuarios.Where(c => c.ID == idUsuario).First<Usuario>();
            }
            miUsuario.Nombre = nombre;
            miUsuario.PrimerApellido = primerApellido;
            miUsuario.SegundoApellido = segundoApellido;
            miUsuario.Telefono = telefono;
            miUsuario.CorreoElectronico = correoElectronico;
            miUsuario.Direccion = direccion;
            miUsuario.RolID = Convert.ToInt32(rolID);
            miUsuario.Estado = estado;

            if (id.Equals("") || !esNumero)
            {

                db.Usuarios.Add(miUsuario);
            }
            //Siempre se guardan los datos
            db.SaveChanges();//Realiza el commit para el insert en la base de datos

            return true;
        }

        public static Usuario obtenerUsuario(int id)
        {
            IEnumerable<Usuario> listas = (IEnumerable<Usuario>)UsuarioLN.ListaUsuarios();
            Usuario usuario = listas.Where(x => x.ID == id).FirstOrDefault<Usuario>();
            return usuario;
        }
    }
}
