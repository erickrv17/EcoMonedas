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
            string contrasenia,
            string direccion,
            string rolID,
            bool estado
           )
        {

            EcoMonedasContext db = new EcoMonedasContext();

            var miUsuario = obtenerUsuario(correoElectronico);

            //int idUsuario = 0;
            //bool esNumero = int.TryParse(correoElectronico, out idUsuario);

            if (miUsuario==null)
            {                
                miUsuario = new Usuario();
                miUsuario.Nombre = nombre;
                miUsuario.PrimerApellido = primerApellido;
                miUsuario.SegundoApellido = segundoApellido;
                miUsuario.Telefono = telefono;
                miUsuario.CorreoElectronico = correoElectronico;
                miUsuario.contrasenia = contrasenia;
                miUsuario.Direccion = direccion;
                miUsuario.RolID = Convert.ToInt32(rolID);
                miUsuario.Estado = estado;
                if (!correoElectronico.Equals(""))
                {

                    db.Usuarios.Add(miUsuario);
                }
            }
            else
            {
             miUsuario = db.Usuarios.Where(p => p.CorreoElectronico == correoElectronico).First<Usuario>();
             miUsuario.Nombre = nombre;
            miUsuario.PrimerApellido = primerApellido;
            miUsuario.SegundoApellido = segundoApellido;
            miUsuario.Telefono = telefono;
            miUsuario.contrasenia = contrasenia;
            miUsuario.Direccion = direccion;
            miUsuario.RolID = Convert.ToInt32(rolID);
            miUsuario.Estado = estado;
            }
           
            //Siempre se guardan los datos
            db.SaveChanges();//Realiza el commit para el insert en la base de datos

            return true;
        }

        public static Usuario obtenerUsuario(string correo)
        {
            IEnumerable<Usuario> listas = (IEnumerable<Usuario>)UsuarioLN.ListaUsuarios();
            Usuario usuario = listas.Where(x => x.CorreoElectronico == correo).FirstOrDefault<Usuario>();
            return usuario;
        }
    }
}
